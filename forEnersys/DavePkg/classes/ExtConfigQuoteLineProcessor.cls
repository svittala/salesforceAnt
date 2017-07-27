public with sharing class ExtConfigQuoteLineProcessor {

    public static final String CONFIG_ERROR_NO_PRICEBOOK_ENTRIES_FOUND = 'Error: No relevant PricebookEntries found for the Products named in the Quote Line Items;\n';
    public static final String CONFIG_ERROR_LOST_JSON = 'Error: Lost matching Quote Config JSON (logic error);\n';
    public static final String CONFIG_ERROR_NO_LINE_ITEMS = 'Error: Quote Config JSON does not contain any line items;\n';
    public static final String CONFIG_ERROR_NOT_ATTACHED_TO_SF_QUOTE = 'Error: External_Configuration__c record is not attached to a Salesforce Quote;\n';
    public static final String CONFIG_ERROR_PRICEBOOK_IS_NULL = 'Error: Salesforce Quote has null Pricebook;\n';
    public static final String CONFIG_ERROR_QUOTE_LINE_GROUP_NOT_FOUND = 'Error: Could not create Quote Line Group to hold new Quote Lines;\n';
    public static final String QUOTE_LINE_ERROR_BLANK_LINE = 'Error: Quote line skipped - Blank Quote Line;\n';
    public static final String QUOTE_LINE_ERROR_MISSING_PART_NUMBER = 'Error: Quote line skipped - Missing partNumber;\n';
    public static final String QUOTE_LINE_ERROR_NO_PRICE_FOUND = 'Error: Quote line skipped - partNumber not found in required pricebook\n';
    public static final String QUOTE_LINE_ERROR_REQD_PRICE_NOT_FOUND = 'Error: Quote line skipped - partNumber not found in required pricebook (although it exists in other pricebooks)\n';
    public static final String QUOTE_LINE_WARNING_TECH_SPEC_NOT_FOUND = 'Warning: Referenced Technical Spec Id not found, reverted to default Technical Spec\n';

    public static final String SETTING_QUOTE_LINE_SYNC_ENABLED_NAME = 'EMEA Quote Line Sync Enabled';
    
    private Map<Id, String> mapPricebookIdToName = new Map<Id, String>();

    public Map<String, String> dummyPartNumberMap = new Map<String, String>();

    private Configurator_API_Settings__c settings;
    private Map<String, Integration_Settings__c> intSettings;

    private ConfiguratorWSDao dao;

    @TestVisible private Map<Id, SBQQ__Quote__c> mapQuotes;
    @TestVisible private Map<Id, External_Configuration__c> mapSFIdToExtConfig;
    @TestVisible private Map<Id, ConfiguratorWS.QuoteConfig> mapSFIdToQuoteConfig;
    @TestVisible private Map<Id, SBQQ__QuoteLineGroup__c> mapSFIdToQuoteLineGroup;
    @TestVisible private Set<String> partNumbersUsed;
    @TestVisible private Map<Id, String> mapSavedExtConfigIdToLineItemWarnings;
    @TestVisible private Map<Id, String> mapSavedExtConfigIdToLineItemErrors;
    @TestVisible private List<SBQQ__QuoteLine__c> quoteLinesUpserted;
    @TestVisible private Id stdPricebookId;

    public ExtConfigQuoteLineProcessor() {
        settings = CustomSettingManager.verifyCustomSettings();
        intSettings = CustomSettingManager.fetchIntegrationSettingsMapByName();
        createPricebookNameMap();
        fillDummyPartNumberMap();
        dao = new ConfiguratorWSDao();
        Map<Id, Pricebook2> mapStdPricebook = dao.fetchStdPricebook();
        if (mapStdPricebook.keySet().size() > 0) {
            for (Id pbId : mapStdPricebook.keySet()) {
                stdPricebookId = pbId;
            }
        }
    }

    private void createPricebookNameMap() {
        for (Pricebook2 pb : [Select Id, Name From Pricebook2]) {
            mapPricebookIdToName.put(pb.Id, pb.Name);
        }
    }

    private void fillDummyPartNumberMap() {
        dummyPartNumberMap.put('generic', String.valueOf(settings.Dummy_Part_Number_Default__c));
        dummyPartNumberMap.put('battery', String.valueOf(settings.Dummy_Part_Number_Battery__c));
        dummyPartNumberMap.put('charger', String.valueOf(settings.Dummy_Part_Number_Charger__c));
        dummyPartNumberMap.put('disconnect switch', String.valueOf(settings.Dummy_Part_Number_DisconnectSwitch__c));
        dummyPartNumberMap.put('spill containment', String.valueOf(settings.Dummy_Part_Number_SpillContainment__c));
        dummyPartNumberMap.put('optional accessories', String.valueOf(settings.Dummy_Part_Number_Optional__c));
        dummyPartNumberMap.put('accessories', String.valueOf(settings.Dummy_Part_Number_Accessories__c));
        dummyPartNumberMap.put('kit', String.valueOf(settings.Dummy_Part_Number_Kit__c));
        dummyPartNumberMap.put('rack', String.valueOf(settings.Dummy_Part_Number_Rack__c));
        dummyPartNumberMap.put('cabinet', String.valueOf(settings.Dummy_Part_Number_Cabinet__c));

    }

    public static void processConfigurationQuoteLines(Id stdPricebookId, Set<Id> extConfigIds) {
        System.debug('*** processConfigurationQuoteLines.extConfigIds: ' + extConfigIds);
        ExtConfigQuoteLineProcessor processor = new ExtConfigQuoteLineProcessor();
        processor.stdPricebookId = stdPricebookId;
        processor.processQuoteLines(extConfigIds);

    }

    // Since the method below would cause two @future calls if syncing to SAP, we can't call syncSapQuoteLines asynchronously
    //@future
    //public static void processAsyncConfigurationQuoteLines(Id stdPricebookId, Set<Id> extConfigIds) {
    //  System.debug('*** processAsyncConfigurationQuoteLines.extConfigIds: ' + extConfigIds);
    //  ExtConfigQuoteLineProcessor processor = new ExtConfigQuoteLineProcessor();
    //  processor.stdPricebookId = stdPricebookId;
    //  processor.processQuoteLines(extConfigIds);
    //}

    @AuraEnabled
    public void processQuoteLines(Set<Id> extConfigIds) {
        if (extConfigIds!=null && extConfigIds.size() > 0) {
            
            Map<Id, SBQQ__Quote__c> quotesWithGrouppedLineItems = new Map<Id, SBQQ__Quote__c>();
            mapSFIdToExtConfig = dao.fetchExternalConfigurationsById(extConfigIds);
            
            createQuoteConfigMapFromExtConfigMap();
            
            // gather ungrouped items
            Map<Id, ConfiguratorWS.QuoteConfig> mapSFIdToQuoteConfigGroupped = new Map<Id, ConfiguratorWS.QuoteConfig>();
            for(Id key : mapSFIdToQuoteConfig.keySet()) {
                if(!ConfiguratorWS.EXTERNAL_CONFIGURATORS_WITH_UNGROUPED_ITEMS.contains(mapSFIdToQuoteConfig.get(key).configuratorName)) {
                    mapSFIdToQuoteConfigGroupped.put(key, mapSFIdToQuoteConfig.get(key));
                }
            }
            Map<Id, External_Configuration__c> mapSFIdToExtConfigGroupped = new Map<Id, External_Configuration__c>();
            for(Id key : mapSFIdToExtConfig.keySet()) {
                if(!ConfiguratorWS.EXTERNAL_CONFIGURATORS_WITH_UNGROUPED_ITEMS.contains(mapSFIdToExtConfig.get(key).Configurator_Name__c)) {
                    mapSFIdToExtConfigGroupped.put(key, mapSFIdToExtConfig.get(key));
                }
            }

            if (mapSFIdToQuoteConfig.keySet().size() > 0) {
                mapQuotes = createMapQuotes(mapSFIdToQuoteConfig);
                
                Map<Id, SBQQ__Quote__c> mapQuotesGroupped = createMapQuotes(mapSFIdToQuoteConfigGroupped);
                setLineItemsGroupedFlagOnQuotes(mapQuotesGroupped);

                createSfQuoteLineGroups(mapSFIdToExtConfigGroupped);

                createSfQuoteLines();

                ConfiguratorWSDao.DaoResults daoExtConfigUpdateResults = dao.upsertExternalConfigurationsById(createExternalConfigsWithQuoteLineErrors());

                Utils.logContents('mapQuotes',String.valueOf(mapQuotes));
                Utils.logContents('quoteLinesUpserted',String.valueOf(quoteLinesUpserted));
                                
                if(intSettings.get(SETTING_QUOTE_LINE_SYNC_ENABLED_NAME).Boolean_Value__c) {
                    SAPCreateQuoteBso.insertQuoteLinesIntoSap(mapQuotes, quoteLinesUpserted);
                    
                }

            }

        }

    }

    private void createSfQuoteLineGroups(Map<Id, External_Configuration__c> mapSFIdToExtConfig) {
        Map<Id, SBQQ__QuoteLineGroup__c> mapQuoteLineGroupObjByExtId = createSfQuoteLineGroupObjects(mapSFIdToExtConfig);

        ConfiguratorWSDao.DaoResults daoResults = dao.upsertQuoteLineGroups(mapQuoteLineGroupObjByExtId.values());

        mapSFIdToQuoteLineGroup = new Map<Id, SBQQ__QuoteLineGroup__c>{};

        if (mapQuoteLineGroupObjByExtId.keySet().size() > 0 && daoResults.upsertResults!=null && daoResults.upsertResults.size() > 0) {
            for (Integer i=0; i<daoResults.upsertResults.size(); i++) {
                SBQQ__QuoteLineGroup__c qlg = mapQuoteLineGroupObjByExtId.values()[i];
                Database.UpsertResult ur = daoResults.upsertResults[i];
                if (ur.isSuccess()) {
                    mapSFIdToQuoteLineGroup.put(qlg.External_Id__c, qlg);
                }
            }
        }
    }

    private Map<Id, SBQQ__QuoteLineGroup__c> createSfQuoteLineGroupObjects(Map<Id, External_Configuration__c> mapSFIdToExtConfig) {
        Map<Id, SBQQ__QuoteLineGroup__c> newQuoteLineGroups = new Map<Id, SBQQ__QuoteLineGroup__c>{};
        Integer i=1;
        for (Id extConfigId : mapSFIdToExtConfig.keySet()) {
            SBQQ__QuoteLineGroup__c newGroup = createQuoteLineGroup(i, extConfigId);
            newQuoteLineGroups.put(extConfigId, newGroup);
            i++;

        }
        return newQuoteLineGroups;

    }

    private SBQQ__QuoteLineGroup__c createQuoteLineGroup(Integer i, Id extConfigId) {
        SBQQ__QuoteLineGroup__c newGroup = new SBQQ__QuoteLineGroup__c();
        External_Configuration__c ec = mapSFIdToExtConfig.get(extConfigId);
        ConfiguratorWS.QuoteConfig qc = mapSFIdToQuoteConfig.get(extConfigId);

        newGroup.External_Configuration__c=extConfigId;
        newGroup.External_Id__c=extConfigId;
        newGroup.Name='Solution ' + i;
        newGroup.SBQQ__Number__c = i;
        newGroup.SBQQ__Quote__c=ec.Quote__c;
        if (qc.truckSpecs!=null) {
            newGroup.SBQQ__Description__c=createHtmlFromTruckSpec(qc.truckSpecs);
            newGroup.Truck_Connector__c=qc.truckSpecs.connector;
            newGroup.Truck_L_x_W_x_H__c=qc.truckSpecs.dimensions;
            newGroup.Truck_Manufacturer__c=qc.truckSpecs.manufacturer;
            newGroup.Truck_Min_Weight__c=qc.truckSpecs.minWeight;
            newGroup.Truck_Model_Class__c=qc.truckSpecs.modelOrClass;
            newGroup.Truck_Notes__c=qc.truckSpecs.notes;
            newGroup.Truck_Type_Cover__c=qc.truckSpecs.typeAndCover;
            newGroup.Truck_Volt_Term__c=qc.truckSpecs.voltageAndTerm;
        } else {
            newGroup.SBQQ__Description__c=getCleanConfigSelections(extConfigId);
        }
        return newGroup;
    }

    private String getCleanConfigSelections(Id extConfigId) {
        String returnString = '';

        if (extConfigId!=null && mapSFIdToQuoteConfig.containsKey(extConfigId)) {
            ConfiguratorWS.QuoteConfig qc = mapSFIdToQuoteConfig.get(extConfigId);
            if (qc.configSelections!=null) {
                returnString = mapSFIdToQuoteConfig.get(extConfigId).configSelections;
                if (returnString.length() > 32000) {
                    returnString = returnString.left(32000);

                }

            }
        }
        return returnString;
    }

    private String createHtmlFromTruckSpec(ConfiguratorWS.OEMSpecTruckSpecs ts) {
        String returnString='';
        returnString+='Manufacturer: ' + Utils.noNull(ts.manufacturer) + ', ';
        returnString+='Model / Class: ' + Utils.noNull(ts.modelOrClass) + ', ';
        returnString+='Type / Cover: ' + Utils.noNull(ts.typeAndCover) + ', ';
        returnString+='L x W x H: ' + Utils.noNull(ts.dimensions) + ', ';
        returnString+='Connector: ' + Utils.noNull(ts.connector) + ', ';
        returnString+='Volt / Term.: ' + Utils.noNull(ts.voltageAndTerm) + ', ';
        returnString+='Min. Weight: ' + Utils.noNull(ts.minWeight) + ', ';
        returnString+=Utils.noNull(ts.notes);
        return returnString;
    }

    private void createQuoteConfigMapFromExtConfigMap() {
        mapSFIdToQuoteConfig = new Map<Id, ConfiguratorWS.QuoteConfig>{};

        for (Id sfId : mapSFIdToExtConfig.keySet())  {
            External_Configuration__c extConfig = mapSFIdToExtConfig.get(sfId);
            mapSFIdToQuoteConfig.put(sfId, (ConfiguratorWS.QuoteConfig)JSON.deserialize(extConfig.JSON_QuoteConfig__c, ConfiguratorWS.QuoteConfig.class));
        }

        ConfiguratorWSUtils.logContents('mapSFIdToExtConfig populated', String.valueOf(mapSFIdToExtConfig));
    }

    private Map<Id, SBQQ__Quote__c> createMapQuotes(Map<Id, ConfiguratorWS.QuoteConfig> mapSFIdToQuoteConfig) {
        Map<Id, SBQQ__Quote__c> result = dao.fetchQuotesByQuoteNumber(getSetQuoteNumbers(mapSFIdToQuoteConfig.values()));

        if (Test.isRunningTest()) {
            modifyMapQuotesForTest(result);
        }
        
        return result;
    }

    private void setLineItemsGroupedFlagOnQuotes(Map<Id, SBQQ__Quote__c> mapQuotes) {
        List<SBQQ__Quote__c> quotesToUpsert = new List<SBQQ__Quote__c>{};
        for (SBQQ__Quote__c q : mapQuotes.values()) {
            if (q.SBQQ__LineItemsGrouped__c==false) {
                quotesToUpsert.add(new SBQQ__Quote__c(Id=q.Id, SBQQ__LineItemsGrouped__c=true));
            }
        }

        ConfiguratorWSDao.DaoResults daoQuoteResults = dao.upsertQuotes(quotesToUpsert);
    }

    private Set<String> getSetQuoteNumbers(List<ConfiguratorWS.QuoteConfig> quoteConfigs) {
        Set<String> quoteNumbers = new Set<String>();
        for (ConfiguratorWS.QuoteConfig qc : quoteConfigs) {
            if (qc.sfQuoteNumber!=null && qc.sfQuoteNumber!='') {
                quoteNumbers.add(qc.sfQuoteNumber);
            }
        }
        return quoteNumbers;
    }

    private void modifyMapQuotesForTest( Map<Id, SBQQ__Quote__c> mapQuotes) {
        for (Id qId : mapQuotes.keySet()) {
            SBQQ__Quote__c quote = mapQuotes.get(qId);
            quote.SBQQ__Pricebook__c = stdPricebookId;
            mapQuotes.put(qId, quote);
        }
    }

    private void createSfQuoteLines() {
        String processingWarnings = '';
        String processingErrors = '';
        mapSavedExtConfigIdToLineItemWarnings = new Map<Id, String>{};
        mapSavedExtConfigIdToLineItemErrors = new Map<Id, String>{};

        partNumbersUsed = createSetPartNumbersUsed();
        Map<Id, Product2> products = dao.fetchProductsBypartNumbers(partNumbersUsed);
        Set<Id> pricebookIds = createSetPricebookIds(mapQuotes.values());
        Map<Id, PricebookEntry> pricebookEntries = dao.fetchPricebookEntriesByPricebookIdsAndProductIds(pricebookIds, products.keySet());
        Map<String, Map<Id, PricebookEntry>> mapPartNumberToPricebookEntries = createMapPartNumberToPricebookEntries(products, pricebookEntries);
        
        Map<Id, Set<String>> externalIds = new Map<Id, Set<String>>();
        
        List<SBQQ__Quote__c> quotesToUpsert = new List<SBQQ__Quote__c>();
        List<SBQQ__QuoteLine__c> quoteLinesToDelete = new List<SBQQ__QuoteLine__c>{};
        List<SBQQ__QuoteLine__c> quoteLinesToUpsert = new List<SBQQ__QuoteLine__c>{};
        List<SBQQ__QuoteLine__c> quoteLinesToUpsertByExternalId = new List<SBQQ__QuoteLine__c>{};

        for (Id extConfigId : mapSFIdToExtConfig.keySet()) {
            Id quoteId = mapSFIdToExtConfig.get(extConfigId).Quote__c;

            processingErrors = configPrecheckErrors(extConfigId, quoteId, pricebookEntries);

            if (processingErrors=='') {
                ConfiguratorWS.QuoteConfig quoteConfig = mapSFIdToQuoteConfig.get(extConfigId);
                List<ConfiguratorWS.QuoteLineItem> quoteLines = quoteConfig.lineItems;
                Id pricebookId = mapQuotes.get(quoteId).SBQQ__PriceBook__c;
                
                SBQQ__Quote__c quoteToUpdate = new SBQQ__Quote__c(Id = quoteId);
                quoteToUpdate.JSON_Pricing_Conditions__c = JSON.serialize(quoteConfig.sapConditions);
                SAPHeaderPricingConditions parsedHeaderConditions = new SAPHeaderPricingConditions(quoteConfig.sapConditions);
                quoteToUpdate.EMEA_Items_Total__c = parsedHeaderConditions.itemsTotal;
                quoteToUpdate.EMEA_Final_Amount__c = parsedHeaderConditions.finalAmount;
                
                quotesToUpsert.add(quoteToUpdate);
                
                
                Integer lineNumber = 1;
                for (ConfiguratorWS.QuoteLineItem ql : quoteLines) {
                    String originalPartNumber = ql.partNumber;
                    
                    ConfiguratorWS.QuoteLineItem qlUpdated = switchToDummyPartNumberIfNeeded(quoteConfig.configuratorName, ql, mapPartNumberToPricebookEntries);
                    //String lineProcessWarning=quoteLinePrecheckWarnings(qlUpdated, mapSpecIdToTechSpec);
                    String lineProcessError=quoteLinePrecheckErrors(qlUpdated, pricebookId, mapPartNumberToPricebookEntries);

                    //processingWarnings+=lineProcessWarning;

                    if (lineProcessError!='')  {
                        processingErrors+=lineProcessError;
                    } else {
                        String partNumber = qlUpdated.partNumber!=null ? qlUpdated.partNumber.trim() : null;
                        PricebookEntry pbe = mapPartNumberToPricebookEntries.get(partNumber).get(pricebookId);
                        
                        SBQQ__QuoteLine__c newQuoteLine = new SBQQ__QuoteLine__c();
                        
                        newQuoteLine.SBQQ__Number__c = lineNumber;
                        
                        newQuoteLine.SBQQ__Quote__c = quoteId;
                        newQuoteLine.SBQQ__Product__c = pbe.Product2Id;
                        newQuoteLine.External_Configuration__c = extConfigId;
                        newQuoteLine.SBQQ__Quantity__c = qlUpdated.quantity;
                        newQuoteLine.SBQQ__Group__c = mapSFIdToQuoteLineGroup.containsKey(extConfigId) ? mapSFIdToQuoteLineGroup.get(extConfigId).Id : null;
                        newQuoteLine.Line_Notes__c = qlUpdated.itemNotes;
                        newQuoteLine.Charger_VAC_Selected__c = qlUpdated.chargerVacSelected;
                        newQuoteLine.Charger_Voltage_Selected__c = qlUpdated.chargerVoltageSelected;
                        newQuoteLine.Charger_Max_AH_Selected__c = qlUpdated.chargerMaxAHSelected;
                        newQuoteLine.Charger_Input_AC_Amps_Selected__c = qlUpdated.chargerInputACAmpsSelected;
                        newQuoteLine.Charger_Output_DC_Amps_Selected__c = qlUpdated.chargerOutputDCAmpsSelected;
                        //if (qlUpdated.confirmationRequired!=null && qlUpdated.confirmationRequired) {
                        //  newQuoteLine.Product_Selection_Confirmed__c=false;
                        //}
                        if (qlUpdated.approvalRequired!=null && qlUpdated.approvalRequired) {
                            newQuoteLine.Approval_Required_For_Quote_Line__c=true;
                        }
                        /*if (qlUpdated.specialPrice!=null) {
                            System.debug('*** qlUpdated.specialPrice: ' + qlUpdated.specialPrice);
                            newQuoteLine.SBQQ__PriceEditable__c=true;
                            newQuoteLine.SBQQ__SpecialPrice__c=qlUpdated.specialPrice;
                        }*/
                        if (products.containsKey(pbe.Product2Id)) {
                            newQuoteLine.Approval_Required__c=products.get(pbe.Product2Id).Approval_Required__c;
                            newQuoteLine.SBQQ__Description__c=products.get(pbe.Product2Id).Description;
                            newQuoteLine.Charger_VAC_Options__c=products.get(pbe.Product2Id).Charger_VAC_Options__c;
                            newQuoteLine.Charger_Voltage_Options__c=products.get(pbe.Product2Id).Charger_Voltage_Options__c;
                            newQuoteLine.SBQQ__PriceEditable__c=products.get(pbe.Product2Id).SBQQ__PriceEditable__c;
                        }
                        
                        // SAP fields
                        if(mapSFIdToExtConfig.get(extConfigId).Configurator_Name__c == 'sap'
                            || mapSFIdToExtConfig.get(extConfigId).Configurator_Name__c == 'psr') {                         
                            newQuoteLine.SBQQ__Number__c = ql.itemNo;
                            
                            newQuoteLine.SAP_Line_Number__c = ql.itemNo;
                            newQuoteLine.SAP_Material_Number__c = originalPartNumber.replaceFirst('^0+', '');
                            
                            newQuoteLine.SBQQ__Description__c = ql.itemDescription;
                            newQuoteLine.SBQQ__Quantity__c = ql.quantity;
                            newQuoteLine.EMEA_Price_Unit__c = ql.priceUnit;
                            newQuoteLine.JSON_SAP_configuration__c = JSON.serialize(ql.configurationJSON);
                            newQuoteLine.JSON_Pricing_Conditions__c = JSON.serialize(ql.sapConditions);
                            newQuoteLine.External_Id__c = mapSFIdToExtConfig.get(extConfigId).Quote__r.SAP_Quote_Number__c + '-' + String.valueOf(ql.itemNo);
                            
                            if(!externalIds.containsKey(quoteId)) {
                                externalIds.put(quoteId, new Set<String>());
                            }
                            externalIds.get(quoteId).add(newQuoteLine.External_Id__c);
                            
                            SAPPricingConditions parsedConditions = new SAPPricingConditions(ql.sapConditions);
                            pupulateQuoteLineItemDetailsFromProcingConfitions(newQuoteLine, parsedConditions);
                        }
                        
                        // SAP items can be upserted using External Id
                        if(!String.isBlank(newQuoteLine.External_Id__c)) {
                            quoteLinesToUpsertByExternalId.add(newQuoteLine);
                        } else {
                            quoteLinesToUpsert.add(newQuoteLine);
                        }
                        lineNumber++;
                    }
                }
            }

            mapSavedExtConfigIdToLineItemWarnings.put(extConfigId, processingWarnings);             
            mapSavedExtConfigIdToLineItemErrors.put(extConfigId, processingErrors);             

        }
        
        ConfiguratorWSDao.DaoResults daoQuoteLineResults;
        ConfiguratorWSDao.DaoResults daoQuoteResults;
        
        // perform deletes
        for(SBQQ__QuoteLine__c qLine : [ SELECT SBQQ__Quote__c, External_Id__c FROM SBQQ__QuoteLine__c WHERE SBQQ__Quote__c IN :externalIds.keySet() ]) {
            if(!externalIds.get(qLine.SBQQ__Quote__c).contains(qLine.External_Id__c)) {
                quoteLinesToDelete.add(qLine);
            }
        }
        
        if(!quoteLinesToDelete.isEmpty()) {
            daoQuoteLineResults = dao.deleteQuoteLines(quoteLinesToDelete);
            
            addSaveResultsToQuoteLineSaveResultMap(quoteLinesToUpsertByExternalId, daoQuoteLineResults);
            
        }
        
        if(!quoteLinesToUpsertByExternalId.isEmpty()) {
            daoQuoteLineResults = dao.upsertQuoteLinesbyExternalId(quoteLinesToUpsertByExternalId);
            
            addSaveResultsToQuoteLineSaveResultMap(quoteLinesToUpsertByExternalId, daoQuoteLineResults);
            
        } else {
            daoQuoteLineResults = dao.upsertQuoteLines(quoteLinesToUpsert);
            
            addSaveResultsToQuoteLineSaveResultMap(quoteLinesToUpsert, daoQuoteLineResults);    
        }
        
        // update quotes
        if(!quotesToUpsert.isEmpty()) {
            daoQuoteResults = dao.upsertQuotes(quotesToUpsert);
        }
    }
    
    private void pupulateQuoteLineItemDetailsFromProcingConfitions(SBQQ__QuoteLine__c newQuoteLine, SAPPricingConditions parsedConditions) {
        newQuoteLine.SBQQ__PriceEditable__c = true;
        newQuoteLine.SBQQ__SpecialPrice__c = parsedConditions.listAmount;
        newQuoteLine.SBQQ__ListPrice__c = parsedConditions.listAmount;
        newQuoteLine.EMEA_List_Price__c = parsedConditions.listAmount;
        newQuoteLine.EMEA_List_Total__c = parsedConditions.listAmountTotal;
        newQuoteLine.EMEA_Net_Total__c = parsedConditions.netAmountTotal;
        
        newQuoteLine.EMEA_Internal_Discount__c = parsedConditions.internalDiscount;
        newQuoteLine.EMEA_Internal_Discount_Total__c = parsedConditions.internalDiscount;
        
        newQuoteLine.EMEA_External_Discount__c = parsedConditions.externalDiscount;
        newQuoteLine.EMEA_External_Discount_Total__c = parsedConditions.externalDiscountAmount;
        
        newQuoteLine.EMEA_Volume_Discount__c = parsedConditions.volumeDiscount;
        newQuoteLine.EMEA_Volume_Discount_Total__c = parsedConditions.volumeDiscountAmount; 
        
        newQuoteLine.EMEA_Lead_Adjuster__c = parsedConditions.leadAdjuster;
        newQuoteLine.EMEA_Lead_Adjuster_Total__c = parsedConditions.leadAdjusterAmount;
                                    
        newQuoteLine.EMEA_VAT_Rate__c = parsedConditions.vatRate;
        newQuoteLine.EMEA_VAT_Amount__c = parsedConditions.vatAmount;
        
        newQuoteLine.EMEA_Raw_Material_Adjuster__c = parsedConditions.rawMaterialAdjuster;
        newQuoteLine.EMEA_Raw_Material_Adjuster_Amount__c = parsedConditions.rawMaterialAdjusterAmount;
        
        newQuoteLine.EMEA_Eco_Contribution__c = parsedConditions.ecoContribution;
        newQuoteLine.EMEA_Eco_Contribution_Total__c = parsedConditions.ecoContributionTotal;
        
        newQuoteLine.EMEA_Transport__c = parsedConditions.transport;
        newQuoteLine.EMEA_Transport_Amount__c = parsedConditions.transportTotal;
        
        newQuoteLine.EMEA_Freight__c = parsedConditions.freight;
        newQuoteLine.EMEA_Freight_Amount__c = parsedConditions.freightTotal;
        
        newQuoteLine.EMEA_Packing_Expenses__c = parsedConditions.packingExpenses;
        newQuoteLine.EMEA_Packing_Expenses_Total__c = parsedConditions.packingExpensesTotal;
        
        newQuoteLine.EMEA_Discount_From_Gross_Pricelist__c = parsedConditions.discountFromGrossPricelist;
        newQuoteLine.EMEA_Discount_From_Gross_Pricelist_Total__c = parsedConditions.discountFromGrossPricelistAmount;
        
        newQuoteLine.EMEA_Guarantee_Costs__c = parsedConditions.guaranteeCosts;
        newQuoteLine.EMEA_Guarantee_Costs_Amount__c = parsedConditions.guaranteeCostsAmount;
        
        newQuoteLine.EMEA_Packing_Costs__c = parsedConditions.packingCosts;
        newQuoteLine.EMEA_Packing_Costs_Amount__c = parsedConditions.packingCostsAmount;
        
        newQuoteLine.EMEA_Shipment_Costs__c = parsedConditions.shipmentCosts;
        newQuoteLine.EMEA_Shipment_Costs_Amount__c = parsedConditions.shipmentCostsAmount;
        
        newQuoteLine.EMEA_Comission_Costs__c = parsedConditions.comissionCosts;
        newQuoteLine.EMEA_Comission_Costs_Amount__c = parsedConditions.comissionCostsAmount;
        
        newQuoteLine.EMEA_Calculat_sconto__c = parsedConditions.calculatedSconto;
        newQuoteLine.EMEA_Calculat_sconto_Amount__c = parsedConditions.calculatedScontoAmount;
        
        newQuoteLine.EMEA_Calculat_sconto__c = parsedConditions.calculatedSconto;
        newQuoteLine.EMEA_Calculat_sconto_Amount__c = parsedConditions.calculatedScontoAmount;
        
        newQuoteLine.EMEA_Volume_Rebate__c = parsedConditions.volumeRebate;
        newQuoteLine.EMEA_Volume_Rebate_Amount__c = parsedConditions.volumeRebateAmount;
        
        newQuoteLine.EMEA_Calculat_sconto__c = parsedConditions.otherSDCS;
        newQuoteLine.EMEA_Calculat_sconto_Amount__c = parsedConditions.otherSDCSAmount;
        
        newQuoteLine.EMEA_Profit_Margin__c = parsedConditions.profitMargin;
        newQuoteLine.EMEA_Profit_Margin_Amount__c = parsedConditions.profitMarginAmount;
        
        newQuoteLine.SBQQ__Discount__c = parsedConditions.overallDiscount;
        
        newQuoteLine.CurrencyISOCode = parsedConditions.currencyCode;
    }

    private ConfiguratorWS.QuoteLineItem switchToDummyPartNumberIfNeeded(String configuratorName, ConfiguratorWS.QuoteLineItem ql, Map<String, Map<Id, PricebookEntry>> mapPartNumberToPricebookEntries) {
        String partNumber = ql.partNumber!=null ? ql.partNumber.trim() : null;
        if (!String.isBlank(partNumber)) {
            if (mapPartNumberToPricebookEntries.containsKey(partNumber)) {
                if (configuratorName!=null && (configuratorName.toLowerCase()=='bsp' || configuratorName.toLowerCase()=='core')) {
                    ql.itemNotes=null;
                    // RP Quotes do not get Item Notes unless its a Custom(Dummy Part Number)
                }

            } else {
                String itemType = '';
                if (ql.itemType!=null) {
                    itemType = ql.itemType.toLowerCase();
                }

                String existingNotes = ql.itemNotes!=null ? ql.itemNotes : '';

                if (!String.isBlank(itemType) && dummyPartNumberMap.containsKey(itemType)) {
                    String dummy = dummyPartNumberMap.get(itemType);
                    ql.itemNotes = 'Part Number: ' + ql.partNumber + '; ' + existingNotes;
                    ql.partNumber = dummy;

                } else {
                    String genericDummy = dummyPartNumberMap.get('generic');
                    ql.itemNotes = 'Part Number: ' + ql.partNumber + '; ' + existingNotes;
                    ql.partNumber = genericDummy;
                    ql.confirmationRequired = true;

                }

            }
        }
        return ql;
    }

    private void addDeleteResultsToQuoteLineSaveResultMap(List<SBQQ__QuoteLine__c> quoteLinesToDelete, ConfiguratorWSDao.DaoResults daoResults) {
        if (daoResults.upsertResults!=null) {
                
            for (Integer i=0; i<daoResults.deleteResults.size(); i++) {
                Database.DeleteResult ur = daoResults.deleteResults[i];
                SBQQ__QuoteLine__c ql = quoteLinesToDelete[i];

                if (!ur.isSuccess() && mapSavedExtConfigIdToLineItemErrors.containsKey(ql.External_Configuration__c)) {
                    String existingContent = mapSavedExtConfigIdToLineItemErrors.get(ql.External_Configuration__c);
                    String lineIdentity = ql.External_Id__c;
                    String saveError = ConfiguratorWSUtils.combineErrorMessages(ur.getErrors());
                    mapSavedExtConfigIdToLineItemErrors.put(ql.External_Configuration__c, existingContent + lineIdentity + ', ' + saveError);

                }

            }

        }

    }
    
    private void addSaveResultsToQuoteLineSaveResultMap(List<SBQQ__QuoteLine__c> quoteLinesToUpsert, ConfiguratorWSDao.DaoResults daoResults) {
        quoteLinesUpserted = new List<SBQQ__QuoteLine__c>{};

        if (daoResults.upsertResults!=null) {
                
            for (Integer i=0; i<daoResults.upsertResults.size(); i++) {
                Database.UpsertResult ur = daoResults.upsertResults[i];
                SBQQ__QuoteLine__c ql = quoteLinesToUpsert[i];

                if (!ur.isSuccess()) {
                    if(mapSavedExtConfigIdToLineItemErrors.containsKey(ql.External_Configuration__c)) {
                    String existingContent = mapSavedExtConfigIdToLineItemErrors.get(ql.External_Configuration__c);
                    String lineIdentity = ql.External_Id__c;
                    String saveError = ConfiguratorWSUtils.combineErrorMessages(ur.getErrors());
                    mapSavedExtConfigIdToLineItemErrors.put(ql.External_Configuration__c, existingContent + lineIdentity + ', ' + saveError);

                }
                } else {
                    quoteLinesUpserted.add(ql);

                }

            }

        }

    }


    private String configPrecheckErrors(Id extConfigId, Id quoteId, Map<Id, PricebookEntry> pricebookEntries) {
        String returnResult = '';

        if (!mapSFIdToQuoteConfig.containsKey(extConfigId)) {
            returnResult+=CONFIG_ERROR_LOST_JSON;

        } else {
            ConfiguratorWS.QuoteConfig quoteConfig = mapSFIdToQuoteConfig.get(extConfigId);
            if (quoteConfig.lineItems==null || quoteConfig.lineItems.size()==0) {
                returnResult+=CONFIG_ERROR_NO_LINE_ITEMS;

            } else {
                if (quoteId == null) {
                    returnResult+=CONFIG_ERROR_NOT_ATTACHED_TO_SF_QUOTE;

                } else {
                    if (!mapQuotes.containsKey(quoteId)) {
                        // Not possible--would mean the Quote__c lookup value on the External_Configuration__c does not exist in SF

                    } else {
                        if (!ConfiguratorWS.EXTERNAL_CONFIGURATORS_WITH_UNGROUPED_ITEMS.contains(mapSFIdToExtConfig.get(extConfigId).Configurator_Name__c) && !mapSFIdToQuoteLineGroup.containsKey(extConfigId)){
                            returnResult+=CONFIG_ERROR_QUOTE_LINE_GROUP_NOT_FOUND;
                        }

                        if (mapQuotes.get(quoteId).SBQQ__PriceBook__c==null) {
                            returnResult+=CONFIG_ERROR_PRICEBOOK_IS_NULL;

                        } else if (pricebookEntries==null || pricebookEntries.size() == 0) {
                            //returnResult+=CONFIG_ERROR_NO_PRICEBOOK_ENTRIES_FOUND;

                        }
                    }
                }

            }
        }

        return returnResult;
    }

    private String quoteLinePrecheckErrors(ConfiguratorWS.QuoteLineItem ql, Id pricebookId, Map<String, Map<Id, PricebookEntry>> mapPartNumberToPricebookEntries) {
        String returnResult = '';
        if (ql == null) {
            returnResult+=QUOTE_LINE_ERROR_BLANK_LINE;
        }
        if (String.isBlank(ql.partNumber)) {
            returnResult+=QUOTE_LINE_ERROR_MISSING_PART_NUMBER;
        } else {
            String partNumber = ql.partNumber!=null ? ql.partNumber.trim() : null;
            if (!mapPartNumberToPricebookEntries.containsKey(partNumber)) {
                returnResult+=QUOTE_LINE_ERROR_NO_PRICE_FOUND + '- partNumber: ' + ql.partNumber + ', pricebook: ' + (mapPricebookIdToName.containsKey(pricebookId) ? mapPricebookIdToName.get(pricebookId) : pricebookId) + ';\n';
            } else {
                Map<Id, PricebookEntry> pbesForProduct = mapPartNumberToPricebookEntries.get(partNumber);
                if (!pbesForProduct.containsKey(pricebookId)) {
                    returnResult+=QUOTE_LINE_ERROR_REQD_PRICE_NOT_FOUND + '- partNumber: ' + ql.partNumber + ', pricebook: ' + (mapPricebookIdToName.containsKey(pricebookId) ? mapPricebookIdToName.get(pricebookId) : pricebookId) + ';\n';
                }
            }
        }

        return returnResult;
    }

    private Set<String> createSetPartNumbersUsed() {
        Set<String> returnSet = new Set<String>();
        for (ConfiguratorWS.QuoteConfig qc : mapSFIdToQuoteConfig.values()) {
            if (qc.lineItems!=null) {
                for (ConfiguratorWS.QuoteLineItem ql : qc.lineItems) {
                    String newPartNumber = ql.partNumber!=null ? ql.partNumber.trim() : null;
                    returnSet.add(newPartNumber);
                }
            }
        }
        for (String dummy : dummyPartNumberMap.values()) {
            returnSet.add(dummy);
        }
        return returnSet;
    }

    private Set<Id> createSetPricebookIds(List<SBQQ__Quote__c> quotes) {
        Set<Id> returnSet = new Set<Id>();
        for (SBQQ__Quote__c q : quotes) {
            if (q.SBQQ__PriceBook__c!=null) {
                returnSet.add(q.SBQQ__PriceBook__c);
            }
        }

        if (returnSet.size() == 0) {
            returnSet.add(stdPricebookId);
        }

        ConfiguratorWSUtils.logContents('Set of pricebookIds', String.valueOf(returnSet));
        return returnSet;
    }

    private Map<String, Map<Id, PricebookEntry>> createMapPartNumberToPricebookEntries(Map<Id, Product2> products, Map<Id, PricebookEntry> pricebookEntries) {
        Map<String, Map<Id, PricebookEntry>> returnMap = new Map<String, Map<Id, PricebookEntry>>{};

        for (PricebookEntry pbe : pricebookEntries.values()) {
            String partNumber = products.get(pbe.Product2Id).Name;
            Map<Id, PricebookEntry> newMap = new Map<Id, PricebookEntry>{};
            if (returnMap.containsKey(partNumber)) {
                newMap = returnMap.get(partNumber);
            }
            newMap.put(pbe.Pricebook2Id, pbe);
            returnMap.put(partNumber, newMap);
        }

        return returnMap;
    }

    private List<External_Configuration__c> createExternalConfigsWithQuoteLineErrors() {
        List<External_Configuration__c> returnList = new List<External_Configuration__c>{};
        for (Id extConfigId : mapSavedExtConfigIdToLineItemErrors.keySet()) {
            String quoteLineCreationWarnings = mapSavedExtConfigIdToLineItemWarnings.get(extConfigId);
            String quoteLineCreationErrors = mapSavedExtConfigIdToLineItemErrors.get(extConfigId);
            System.debug('*** quoteLineCreationErrors: ' + quoteLineCreationErrors);    
            External_Configuration__c newExtConfig = new External_Configuration__c(Id=extConfigId, 
                            Quote_Line_Creation_Date__c=Datetime.Now(),
                            Quote_Line_Creation_Warnings__c=quoteLineCreationWarnings,
                            Quote_Line_Creation_Errors__c=quoteLineCreationErrors);
            returnList.add(newExtConfig);
        }
        return returnList;
    }

}