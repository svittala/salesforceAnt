public with sharing class QuoteConfigReceiptsController {

	//private static final String PUSH_TOPIC_NAME_PREFIX = 'ECs-';

	public QuoteConfigReceiptsController(ApexPages.StandardController c) {
	}

    public QuoteConfigReceiptsController() {
    }

    @AuraEnabled
    public static Id apexResolveQuoteId(String rawQuoteNumber, String rawQuoteId) {
        System.debug('*** rawQuoteNumber: ' + rawQuoteNumber);
        System.debug('*** rawQuoteId: ' + rawQuoteId);

        Id returnId = null;

        if (isValidSfId(rawQuoteId)) {
            returnId = rawQuoteId;

        } else if (!String.isBlank(rawQuoteNumber)) {
            returnId = fetchQuoteIdFromQuoteNumber(rawQuoteNumber);

        }

        System.debug('*** returnId: ' + returnId);
        return returnId;
    }

    @AuraEnabled
    public static List<ExternalConfigResult> apexGetExternalConfigsByQuoteNumberOrQuoteId(String rawQuoteNumber, String rawQuoteId) {
        List<ExternalConfigResult> returnList = new List<ExternalConfigResult>{};

        List<External_Configuration__c> extConfigs = new List<External_Configuration__c>{};

        Id quoteId = apexResolveQuoteId(rawQuoteNumber, rawQuoteId);

        ConfiguratorWSDao dao = new ConfiguratorWSDao();

        if (quoteId!=null) {
            extConfigs = dao.fetchExternalConfigurationsForQuoteIdRecent(quoteId);

        } else {
            extConfigs = dao.fetchExternalConfigurationsForCurrentUserRecent();

        }

        if (extConfigs!=null && extConfigs.size() > 0) {
            for (External_Configuration__c ec : extConfigs) {
                ExternalConfigResult ecr = new ExternalConfigResult();
                ecr.id = ec.Id;
                ecr.name = ec.Name;
                ecr.configuratorName = ec.Configurator_Name__c;
                ecr.createdDate = ec.CreatedDate!=null ? ec.CreatedDate.format('yyyy-MM-dd HH:mm:ss') : null;
                ecr.quoteLineCreationDate = ec.Quote_Line_Creation_Date__c!=null ? ec.Quote_Line_Creation_Date__c.format('yyyy-MM-dd HH:mm:ss') : null;
                ecr.quoteLineCreationWarnings = ec.Quote_Line_Creation_Warnings__c;
                ecr.quoteLineCreationErrors = ec.Quote_Line_Creation_Errors__c;
                ecr.quoteOpptyName = ec.Quote__r.SBQQ__Opportunity2__r.Name;
                ecr.quoteSoldToName = ec.Quote__r.SBQQ__Account__r.Name;
                if (!String.isBlank(ec.Quote_Line_Creation_Errors__c)) {
                    ecr.quoteLineCreationErrorsYesNo = 'Yes';
                } else {
                    ecr.quoteLineCreationErrorsYesNo = 'None';
                }
                ecr.quoteId = ec.Quote__c;
                ecr.quoteNumber = ec.Quote__r.Name;
                returnList.add(ecr);
            }
        }

        ConfiguratorWSUtils.logContents('returnList', String.valueOf(returnList));
        return returnList;
    }

    private static Boolean isValidSfId(String rawId) {
        Boolean returnFlag = false;
        Id validId = null;
        Try {
            validId = (Id)rawId;
        } Catch(Exception e){}
        if (validId!=null) {
            returnFlag=true;
        }
        return returnFlag;
    }

    private static Id fetchQuoteIdFromQuoteNumber(String rawQuoteNumber) {
        Id returnId = null;
        if (!String.isBlank(rawQuoteNumber)) {

            ConfiguratorWSDao dao = new ConfiguratorWSDao();
            Set<String> quoteNumbers = new Set<String>();
            quoteNumbers.add(rawQuoteNumber);
            Map<Id, SBQQ__Quote__c> quoteMap = dao.fetchQuotesByQuoteNumber(quoteNumbers);
            List<SBQQ__Quote__c> quotes = quoteMap.values();

            if (quotes!=null && quotes.size() > 0) {
                returnId = quotes[0].Id;

            }
        }
        return returnId;
    }

    public class ExternalConfigResult {
        @AuraEnabled
        public Id id {get;set;}
        @AuraEnabled
        public String name {get;set;}
        @AuraEnabled
        public String configuratorName {get;set;}
        @AuraEnabled
        public String createdDate {get;set;}
        @AuraEnabled
        public String quoteLineCreationDate {get;set;}
        @AuraEnabled
        public String quoteLineCreationWarnings {get;set;}
        @AuraEnabled
        public String quoteLineCreationErrors {get;set;}
        @AuraEnabled
        public String quoteLineCreationErrorsYesNo {get;set;}
        @AuraEnabled
        public String quoteOpptyName {get;set;}
        @AuraEnabled
        public String quoteSoldToName {get;set;}
        @AuraEnabled
        public Id quoteId {get;set;}
        @AuraEnabled
        public String quoteNumber {get;set;}

        public ExternalConfigResult() {}
    }

    //@AuraEnabled
    //public static String apexFetchPushTopicName(String rawQuoteNumber, String rawQuoteId) {
    //  String pushTopicName = null;

 //       Id quoteId = apexResolveQuoteId(rawQuoteNumber, rawQuoteId);

    //  if (quoteId!=null) {
    //      String tempName = PUSH_TOPIC_NAME_PREFIX + quoteId;

    //      List<PushTopic> existingPts = [Select Id, Name From PushTopic Where Name = :tempName];

    //      if (existingPts!=null && existingPts.size() > 0) {
    //          pushTopicName = existingPts[0].Name;

    //      } else {
    //          PushTopic pushTopic = new PushTopic();
    //          pushTopic.Name = tempName;
    //          pushTopic.Query = 'SELECT Id, Name, CreatedDate, Quote_Line_Creation_Date__c, Quote__c, Configurator_Name__c FROM External_Configuration__c Where Quote__c = \'' + quoteId + '\'';
    //          pushTopic.ApiVersion = 37.0;
    //          pushTopic.NotifyForOperationCreate = true;
    //          pushTopic.NotifyForOperationUpdate = true;
    //          pushTopic.NotifyForOperationUndelete = true;
    //          pushTopic.NotifyForOperationDelete = true;
    //          pushTopic.NotifyForFields = 'Referenced';
    //          insert pushTopic;
    //          pushTopicName = pushTopic.Name;

    //      }

    //  }

 //       ConfiguratorWSUtils.logContents('pushTopicName', String.valueOf(pushTopicName));
    //  return pushTopicName;
    //}

}