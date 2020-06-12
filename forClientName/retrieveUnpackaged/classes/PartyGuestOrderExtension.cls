public class PartyGuestOrderExtension{
    public Party_Guest__c guest;
    public String gid;
    public Opportunity oppty {get; set;}
    
    public List<Product2> queryResult {get;set;}
    public List<ProductWrapper> resultList {get;set;}
    
    //pricebook
    public List<PricebookEntry> pricebookEntries {get;set;}
    public Map<String,Double> productIdToUnitPrice {get;set;}
    public Map<String,String> productIdTopricebookEntryId {get;set;}
    //public Opportunity_Line_Item
    //array of new oppty line items
    /*
    public class ProductsAvailable
    {
        public Boolean selected {get;set;}
        public String ProductID {get;set;}
        public String ProductName {get;set;}
        public Party_Guest__c PartyGuest {get;set;}
       
        public ProductsAvailable(){}
        
    }
    List<ProductsAvailable> PAList = new List<ProductsAvailable>();
    */
    
    // The extension constructor initializes the private member
    // variable acct by using the getRecord method from the standard
    // controller.
    
    
    public PartyGuestOrderExtension(ApexPages.StandardController stdController) {
        gid = stdController.getId();
        guest = [SELECT Home_Party__r.Consultant__c, Home_Party__r.Name, Party_Guest_Name__c, Home_Party__c FROM Party_Guest__c WHERE id =: gid];
        
        
        oppty = new Opportunity();
        oppty.AccountId = guest.Home_Party__r.Consultant__c;
        system.debug('this: '+oppty.Account);
        oppty.Name = guest.Home_Party__r.Name + ' '+ guest.Party_Guest_Name__c + ' Order';
        system.debug('this: '+oppty.Name);
        oppty.CloseDate = System.today();
        system.debug('this: '+oppty.CloseDate);
        oppty.StageName = 'Closed Won';
        oppty.pricebook2Id = '01sG0000000ficiIAA';   
        system.debug('this: '+oppty.StageName);
        
            
        queryResult = new List<Product2>();
        resultList = new List<ProductWrapper>();
        //map product to unitprice
        pricebookentries = [SELECT Id,Name,Pricebook2Id,Product2Id,ProductCode,UnitPrice 
                            FROM PricebookEntry
                            WHERE pricebook2id = :oppty.pricebook2Id];
        productIdToUnitPrice = new Map<String,Double>();
        //for selecting the right pricebookentryid
        productIdTopricebookEntryId = new Map<String,String>();

        for(PricebookEntry p : pricebookentries)
        {
            productIdToUnitPrice.put(p.Product2Id,p.UnitPrice);
            productIdTopricebookEntryId.put(p.Product2Id, p.id);
        }
    }
    
    public void initialSearch(){
        String theQuery = 'SELECT id,Name,ProductCode,Description,Family FROM Product2';
        
        queryResult = Database.query(theQuery);
        resultList = new List<ProductWrapper>();
        
        for(Product2 t : queryResult)
            resultList.add(new ProductWrapper(false,t,productIdToUnitPrice.get(t.id)));
    }
    
    public PageReference save()
    {
        
        insert oppty;
        //SELECT OpportunityId,PricebookEntryId,Quantity,UnitPrice FROM OpportunityLineItem
        List<OpportunityLineItem> selectedProducts = new List<OpportunityLineItem>();
        for(ProductWrapper pw : resultList)
            if(pw.selected)
                selectedProducts.add(new OpportunityLineItem(
                                                        PricebookEntryId = productIdTopricebookEntryId.get(pw.product.id),
                                                        OpportunityId = oppty.id, 
                                                        Quantity = pw.quantity,
                                                        UnitPrice = pw.unitPrice,
                                                        Party_Guest__c = guest.id
                                                        )
                             );
        insert selectedProducts;
        return new PageReference('/'+guest.id);
    }
    
    public PageReference cancel()
    {
        return new PageReference('/'+guest.id);
    }
    
    public with sharing class ProductWrapper
    {
        public Boolean selected {get;set;}
        public Product2 product {get;set;}
        public Integer quantity {get;set;}
        public Double unitPrice {get;set;}

        public ProductWrapper(Boolean isSelected, Product2 p)
        {
            selected = isSelected;
            product = p;
        }
        public ProductWrapper(Boolean isSelected, Product2 p, Double u)
        {
            selected = isSelected;
            product = p;
            unitPrice = u;
            quantity = 1;
        }
    }
    
    
    
    
    
    
    
    
    //-----Add product 
    //Add Product button - displays list of products
    //Then displays qty field
    //automatically associates the party guest record to the line item
    //Then Save/Save & New
    //Save shows list of products and Qty and total
    
    //-----Save order/Done with Order
    //Saves order / oppty and line items to salesforce
    
    
    /*
    public List<ProductsAvailable> getAllProducts()
    {           
        List<Product2> allProducts = [select ID, Name from Product2 ];
        
            
        for (Product2 prod : allProducts)    
        {
            ProductsAvailable PA = new ProductsAvailable();
            PA.ProductID = prod.ID;
            PA.ProductName = prod.Name;
            PAList.Add(PA);
            system.debug('getAllProducts(): '+PA.ProductName);
        }
        
        return PAList;
    }
    
    public Boolean getLineItems()
    {
        return true;
    }
    */
}