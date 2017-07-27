public class QuoteController {
    
    /**
* Retunrs an SBQQ__Quote__c.
*
* @return an SBQQ__Quote__c for selected Opportunity.
*/
    @AuraEnabled
    public static SBQQ__Quote__c createSalesQuote(String oppId, String recordTypeName){
        Opportunity opp = [SELECT AccountId FROM Opportunity WHERE Id =: oppId];
        SBQQ__Quote__c quote = new SBQQ__Quote__c();
        quote.SBQQ__Opportunity2__c = oppId;
        quote.SBQQ__Account__c = opp.AccountId;
        quote.RecordTypeId = Schema.SObjectType.SBQQ__Quote__c.getRecordTypeInfosByName().get(recordTypeName).getRecordTypeId();
        quote.SBQQ__Status__c = 'Draft';
        quote.SBQQ__WatermarkShown__c = true;
        quote.SBQQ__ExpirationDate__c = system.today().addDays(30);
        insert quote;
        return [SELECT Id, Name FROM SBQQ__Quote__c WHERE Id =: quote.Id];
    }
}