public with sharing class AuraExtConfigRecreateLinesController {

    @AuraEnabled
    public static String apexRecreateQuoteLineItems(Id extConfigId) {
        if (extConfigId!=null) {
            Set<Id> extConfigIds = new Set<Id>();
            extConfigIds.add(extConfigId);
            ExtConfigQuoteLineProcessor processor = new ExtConfigQuoteLineProcessor();
            processor.processQuoteLines(extConfigIds);
            ConfiguratorWSDao dao = new ConfiguratorWSDao();
            Set<Id> setExtConfigIds = new Set<Id>();
            setExtConfigIds.add(extConfigId);
            List<External_Configuration__c> extConfigs = dao.fetchExternalConfigurationsById(setExtConfigIds).values();
            if (extConfigs!=null && extConfigs.size() > 0) {
                return createStatusMessage(extConfigs[0]);
            }  else {
                return 'Error: No External Configuration with Id = ' + extConfigId;
            }
        } else {
            return 'Error: null External Configuration Id';
        }
    }

    private static String createStatusMessage(External_Configuration__c ec) {
        String resultType = 'No Errors';
        if (!String.isBlank(ec.Quote_Line_Creation_Warnings__c)) {
            if (!String.isBlank(ec.Quote_Line_Creation_Errors__c)) {
                    resultType = 'Warnings and Errors';
                } else {
                    resultType = 'Warnings';
            }
        } else {
            if (!String.isBlank(ec.Quote_Line_Creation_Errors__c)) {
                    resultType = 'Errors';
                } else {
                    resultType = 'No Errors';
            }
        }

        return 'Quote Lines recreated with ' + resultType + '. ' + (ec.Quote_Line_Creation_Warnings__c!=null ? ec.Quote_Line_Creation_Warnings__c : '') + (ec.Quote_Line_Creation_Errors__c!=null ? ec.Quote_Line_Creation_Errors__c : '');

    }

}