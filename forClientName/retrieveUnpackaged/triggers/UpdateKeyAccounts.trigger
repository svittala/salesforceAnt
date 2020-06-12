trigger UpdateKeyAccounts on Program__c (after insert) {
    List<Key_account__c> kaList = new List<Key_Account__c>();
    for(Program__c p : trigger.new) {
        List<String> temp = p.region__c.split(';');
        Set<String> regions = new Set<String>();
        for(String s : temp) {
            regions.add(s);
        }
        List<Account> aList = [select id, Annual_Income__c, Account_Region__c, Store_Type__c,OwnerId FROM Account WHERE 
                                Annual_Income__c >= :p.Minimum_Annual_Revenue__c 
                                OR Store_Type__c = :p.Store_Type__c 
                                OR Account_Region__c IN :regions limit 30];
        for(Account a : aList) {
            integer criteriaMet = 0;
            if(a.annual_income__c >= p.Minimum_Annual_Revenue__c) criteriaMet++;
            if(a.Store_Type__c == p.Store_Type__c) criteriaMet++;
            if(regions.contains(p.region__c)) criteriaMet++;
            
            Key_Account__c ka = new Key_Account__c();
            ka.Criteria_Met__c = string.valueof(criteriaMet);
            ka.Customer__c = a.id;
            ka.Promotion__c = p.id;
            
            PostToChatter.postToChatter(a.id,a.ownerId,' A new program has been added to this account! ');
            
            kaList.add(ka);
        }
    }
    insert kaList;
}