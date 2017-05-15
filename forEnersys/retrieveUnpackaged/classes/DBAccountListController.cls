public with sharing class DBAccountListController {
     @AuraEnabled
       public static List<Account> findParent(Id accountId) {
    			string lookupDuns;
                Account myAccount = [SELECT sv_ParentOrHqDunsNumber__c from Account where id =:accountID ];
          		lookupDuns = myAccount.sv_ParentOrHqDunsNumber__c;
                return [SELECT id, name, billingstreet, billingcity, 
                billingstate,DandbCompanyId,DunsNumber,
                sc_GlobalUltimateDunsNumber__c,sv_DomesticUltimateDunsNumber__c,sv_ParentOrHqDunsNumber__c
                FROM Account
                WHERE DunsNumber = :lookupDuns
                LIMIT 1];
               
       }
}