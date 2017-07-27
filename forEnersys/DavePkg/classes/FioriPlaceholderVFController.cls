public with sharing class FioriPlaceholderVFController {

    public SBQQ__Quote__c quote {
        set;
        get {
            if (quoteCache == null) {
                queryQuote();
            }
            return quoteCache;
        }
    }
    public Id quoteId;
    private SBQQ__Quote__c quoteCache;

    public FioriPlaceholderVFController(ApexPages.StandardController c) {
        quoteId = c.getId();
    }

    public Boolean getCanAddProducts() {
        return (quote.SAP_Quote_Number__c != null
                && quote.SBQQ__Account__r.RecordType.Name == 'Customer');
    }

    private void queryQuote() {
        quoteCache = [SELECT
                Id, SAP_Quote_Number__c, SBQQ__Account__r.RecordType.Name
            FROM
                SBQQ__Quote__c
            WHERE
                Id =: quoteId
            LIMIT 1];
    }

}