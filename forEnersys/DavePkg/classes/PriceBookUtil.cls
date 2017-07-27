global class PriceBookUtil {
    static Map<String,Pricebook2> pbMap;
    static Pricebook2 stdPb;
    static Map<String,Set<String>> igpbMap;
    static Map<String,Item_Group__c> igMap;
    
    static {
        pbMap = new Map<String,Pricebook2>();
        for ( Pricebook2 pb : [SELECT CurrencyIsoCode
                               		, Description
                               		, Key__c
                               		, Company_Code__c
                                    , Id
                               		, IsActive
                               		, IsStandard
                               		, Name
                                 FROM Pricebook2
                                where IsActive=true
                                  and Key__c!=null] )
        {
            pbMap.put( pb.Key__c.toUpperCase(), pb );
            if ( pb.IsStandard ) {
                stdPb = pb;
            }
        }
        
        igpbMap = new Map<String,Set<String>>();
        igMap = new Map<String,Item_Group__c>();
        for ( Item_Group__c ig :  [SELECT Active__c
                                  		, Id
                                   		, Item_Group_Code__c
                                   		, Item_Group_Description__c
                                   		, Name
                                   		, Price_Book__c
                                     FROM Item_Group__c
                                    WHERE Item_Group_Code__c != null])
        {
            String k = ig.Item_Group_Code__c.toUpperCase();
            igMap.put(k,ig);
            if ( String.isNotBlank(ig.Price_Book__c) ) {
                Set<String> pbSet = igpbMap.get(k);
                if ( pbSet == null ) {
                    pbSet = new Set<String>();
                    igpbMap.put(k,pbSet);
                }
                for ( String pbKey : ig.Price_Book__c.split(';') ) {
                    pbSet.add( pbKey );
                }
            }
        }
    }
    
    public static void fixProduct( List<Product2> pList ) {
        Map<String,Item_Group__c> newIgMap = new Map<String,Item_Group__c>();
        for ( Product2 p : pList ) {
            // The business has requested that the users not edit the description of the product on the quote.
            // SteelBrick documentation states this is the way to prevent this from happening.
            p.SBQQ__DescriptionLocked__c = true;
            p.Company_Code__c=p.CompanyNumber__c;
            if ( String.isBlank(p.Item_Group__c) ) continue;
            String k = p.Item_Group__c.toUpperCase();
            Item_Group__c ig = igMap.get(k);
            if ( ig == null ) {
                ig = newIgMap.get(k);
                if ( ig == null ) {
                    ig = new Item_Group__c( Active__c = true
                                          , Item_Group_Code__c = p.Item_Group__c
                                          , Item_Group_Description__c = p.Item_Group_Desc__c
                                          );
                    newIgMap.put(k,ig);
                }
            }
        }
        if ( !newIgMap.isEmpty() ) {
            insert newIgMap.values();
            igMap.putAll(newIgMap);
        }
        for ( Product2 p : pList ) {
            if ( String.isBlank(p.Item_Group__c) ) continue;
            String k = p.Item_Group__c.toUpperCase();
            Item_Group__c ig = igMap.get(k);
            if ( ig != null ) {
                p.Item_Group_Lookup__c = ig.Id;
            }
        }
    }
    
    
    
    public static void setupPricebook( List<Product2> pList ) {
        Map<String,PricebookEntry> pbeMap = new Map<String,PricebookEntry>();
        for ( Product2 p : pList ) {
            if ( p.Baan_Sales_Price__c == null ) continue;
            String k = (String) p.Id + stdPb.Id;
            pbeMap.put( k, new PricebookEntry( Key__c = k
                                             , Product2Id = p.Id
                                             , Pricebook2Id = stdPb.Id
											 , CurrencyIsoCode = stdPb.CurrencyIsoCode
											 , UnitPrice = p.Baan_Sales_Price__c
                                             , IsActive = true ) );
            Set<String> pbSet = igpbMap.get(p.Item_Group__c.toUpperCase());
            if ( pbSet == null ) continue;
            for ( String pbKey : pbSet ) {
                Pricebook2 pb = pbMap.get(pbKey+p.CompanyNumber__c);
                if ( pb != null ) {
                    k = (String) p.Id+pb.Id;
                    pbeMap.put( k, new PricebookEntry( Key__c = k
                                                     , Product2Id = p.Id
                                                     , Pricebook2Id = pb.Id
                                                     , CurrencyIsoCode = pb.CurrencyIsoCode
                                                     , UnitPrice = p.Baan_Sales_Price__c
                                                     , UseStandardPrice = true
                                                     , IsActive = true ) );
                }
            }
        }
        
        List<PricebookEntry> pbeUpdates = new List<PricebookEntry>();
        for ( PricebookEntry pbe : [Select Id, Key__c, UseStandardPrice from PricebookEntry where Key__c in :pbeMap.keySet()] )
        {
            PricebookEntry tpbe = pbeMap.remove(pbe.Key__c);
            if ( tpbe != null && ! pbe.UseStandardPrice ) {
                pbeUpdates.add( new PricebookEntry( Id = pbe.Id
                                                  , UnitPrice = tpbe.UnitPrice ) );
            }
        }
        
        if ( ! pbeUpdates.isEmpty() ) {
            update pbeUpdates;
        }
        
        if ( ! pbeMap.isEmpty() ) {
            insert pbeMap.values();
        }
    }
    
    /* This section of code was used during the initial development
     * 
    public static integer UpdateKey() {
        List<PricebookEntry> pbeList = new List<PricebookEntry>();
        for ( PricebookEntry pbe : [select Id
                                    	 , Product2Id 
                                         , Pricebook2Id
                                      from PricebookEntry
                                     where Key__c = null
                                     limit 9000] )
        {
            pbeList.add( new PricebookEntry( Id = pbe.Id, Key__c = (String) pbe.Product2Id+pbe.Pricebook2Id));
        }
        update pbeList;
        return pbeList.size();
    }


    public String query;
    public Id batchId;
    
    
    global void execute(SchedulableContext ctx) {
        runBatch( '' );
    }
    
    global Database.QueryLocator start(Database.BatchableContext BC){
        return Database.getQueryLocator(query);
    }
    
    global void execute(Database.BatchableContext BC, List<sObject>scope) {
        fixProduct(scope);
        update scope;
        setupPricebook(scope);
    }

    global void finish(Database.BatchableContext BC) {
    }

    global void runBatch( String cond ) {
        query =     'select Id'
                        +', Baan_Sales_Price__c'
                        +', Item_Group__c'
            			+', Item_Group_Desc__c'
                        +', Name'
                        +', CompanyNumber__c'
                    +' from Product2';
        if ( String.isNotBlank(cond) ) {
            query += ' '+cond;
        }
        batchId = Database.executeBatch( this, 200 );
    }
    
    global static PriceBookUtil run(String cond ) {
        PriceBookUtil t = new PriceBookUtil();
        t.runBatch( cond );
        return t;
    }
	*/
    
}