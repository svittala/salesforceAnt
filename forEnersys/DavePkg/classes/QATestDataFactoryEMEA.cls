public with sharing class QATestDataFactoryEMEA {

	private static final String MOTIVE_TEST_QUOTE_NAME = 'Q-00923';

	Id stdPricebookId;
	Map<Id, Account> accts;
	Map<Id, Opportunity> opptys;
	Map<Id, SBQQ__Quote__c> quotes;
	Map<Id, Sales_Area__c> salesAreas;
	Map<Id, Sales_Area_Data__c> salesAreaDatas;
	Map<Id, Sales_Area_Data__c> mapAcctIdToSalesAreaDatas;
	Map<Id, Ship_To_Data__c> shipToDatas;
	Map<Id, Ship_To_Data__c> mapSalesAreaDataIdToShipToData;
	Map<String, Id> mapSapCodeToId;

	public QATestDataFactoryEMEA() {
		accts = new Map<Id, Account>{};
		opptys = new Map<Id, Opportunity>{};
		quotes = new Map<Id, SBQQ__Quote__c>{};
		salesAreas = new Map<Id, Sales_Area__c>{};
		salesAreaDatas = new Map<Id, Sales_Area_Data__c>{};
		shipToDatas = new Map<Id, Ship_To_Data__c>{};
	}

	public void resetTestData() {
		upsertSettings();
		stdPricebookId = [Select Id From Pricebook2 Where IsStandard=true and IsActive=true Limit 1].Id;
		resetTestDataSetStdPricebook(stdPricebookId);

	}

	public void upsertSettings() {
		upsertIntegrationSettings();
		upsertQuoteTriggerCustomSettings(true, true, true);

	}

	private void upsertIntegrationSettings() {
		List<Integration_Settings__c> settings = new List<Integration_Settings__c>{};

		settings.add(new Integration_Settings__c(Name='emeaart', Type__c=CustomSettingManager.ORGANIZATION_ID_TYPE_VALUE, Text_Value__c='00D0v0000000S72', Description__c='For integration, to positively identify the emeaart environment'));
		settings.add(new Integration_Settings__c(Name='art2', Type__c=CustomSettingManager.ORGANIZATION_ID_TYPE_VALUE, Text_Value__c='00Dc0000003w18k', Description__c='For integration, to positively identify the art2 environment'));
		settings.add(new Integration_Settings__c(Name='emeadev', Type__c=CustomSettingManager.ORGANIZATION_ID_TYPE_VALUE, Text_Value__c='00D0v0000000S6J', Description__c='For integration, to positively identify the emeadev environment'));
		settings.add(new Integration_Settings__c(Name='int', Type__c=CustomSettingManager.ORGANIZATION_ID_TYPE_VALUE, Text_Value__c='00D0v0000000S70', Description__c='For integration, to positively identify the int environment'));
		settings.add(new Integration_Settings__c(Name='qa', Type__c=CustomSettingManager.ORGANIZATION_ID_TYPE_VALUE, Text_Value__c='00D3D0000000Rmv', Description__c='For integration, to positively identify the qa environment'));
		settings.add(new Integration_Settings__c(Name='production', Type__c=CustomSettingManager.ORGANIZATION_ID_TYPE_VALUE, Text_Value__c='00D41000000fv8d', Description__c='For integration, to positively identify the production environment'));

		settings.add(new Integration_Settings__c(Name='EMEA JB Create Quote URL-emeaart', Environment__c='emeaart', Type__c=SAPCreateQuoteBso.SETTING_JITTERBIT_URL_TYPE, Text_Value__c='https://EnerSysTRIAL189156.jitterbit.net/EnerSysEMEA/Create_Quote_Dev', Description__c=SAPCreateQuoteBso.SETTING_JITTERBIT_URL_TYPE));
		settings.add(new Integration_Settings__c(Name='EMEA JB Create Quote Username-emeaart', Environment__c='emeaart', Type__c=SAPCreateQuoteBso.SETTING_JITTERBIT_USERNAME_TYPE, Text_Value__c='EnerSys_EMEA_Test', Description__c=SAPCreateQuoteBso.SETTING_JITTERBIT_USERNAME_TYPE));
		settings.add(new Integration_Settings__c(Name='EMEA JB Create Quote Password-emeaart', Environment__c='emeaart', Type__c=SAPCreateQuoteBso.SETTING_JITTERBIT_PASSWORD_TYPE, Text_Value__c='Zidane01', Description__c=SAPCreateQuoteBso.SETTING_JITTERBIT_PASSWORD_TYPE));

		settings.add(new Integration_Settings__c(Name='EMEA JB Create Quote URL-art2', Environment__c='art2', Type__c=SAPCreateQuoteBso.SETTING_JITTERBIT_URL_TYPE, Text_Value__c='https://EnerSysTRIAL189156.jitterbit.net/EnerSysEMEA/Create_Quote_Dev', Description__c=SAPCreateQuoteBso.SETTING_JITTERBIT_URL_TYPE));
		settings.add(new Integration_Settings__c(Name='EMEA JB Create Quote Username-art2', Environment__c='art2', Type__c=SAPCreateQuoteBso.SETTING_JITTERBIT_USERNAME_TYPE, Text_Value__c='EnerSys_EMEA_Test', Description__c=SAPCreateQuoteBso.SETTING_JITTERBIT_USERNAME_TYPE));
		settings.add(new Integration_Settings__c(Name='EMEA JB Create Quote Password-art2', Environment__c='art2', Type__c=SAPCreateQuoteBso.SETTING_JITTERBIT_PASSWORD_TYPE, Text_Value__c='Zidane01', Description__c=SAPCreateQuoteBso.SETTING_JITTERBIT_PASSWORD_TYPE));

		settings.add(new Integration_Settings__c(Name='EMEA JB Create Quote URL-emeadev', Environment__c='emeadev', Type__c=SAPCreateQuoteBso.SETTING_JITTERBIT_URL_TYPE, Text_Value__c='https://EnerSysTRIAL189156.jitterbit.net/EnerSysEMEA/Create_Quote_Dev', Description__c=SAPCreateQuoteBso.SETTING_JITTERBIT_URL_TYPE));
		settings.add(new Integration_Settings__c(Name='EMEA JB Create Quote Username-emeadev', Environment__c='emeadev', Type__c=SAPCreateQuoteBso.SETTING_JITTERBIT_USERNAME_TYPE, Text_Value__c='EnerSys_EMEA_Test', Description__c=SAPCreateQuoteBso.SETTING_JITTERBIT_USERNAME_TYPE));
		settings.add(new Integration_Settings__c(Name='EMEA JB Create Quote Password-emeadev', Environment__c='emeadev', Type__c=SAPCreateQuoteBso.SETTING_JITTERBIT_PASSWORD_TYPE, Text_Value__c='Zidane01', Description__c=SAPCreateQuoteBso.SETTING_JITTERBIT_PASSWORD_TYPE));

		settings.add(new Integration_Settings__c(Name='EMEA JB Create Quote URL-int', Environment__c='int', Type__c=SAPCreateQuoteBso.SETTING_JITTERBIT_URL_TYPE, Text_Value__c='https://EnerSysTRIAL189156.jitterbit.net/EnerSysEMEA/Create_Quote_Dev', Description__c=SAPCreateQuoteBso.SETTING_JITTERBIT_URL_TYPE));
		settings.add(new Integration_Settings__c(Name='EMEA JB Create Quote Username-int', Environment__c='int', Type__c=SAPCreateQuoteBso.SETTING_JITTERBIT_USERNAME_TYPE, Text_Value__c='EnerSys_EMEA_Test', Description__c=SAPCreateQuoteBso.SETTING_JITTERBIT_USERNAME_TYPE));
		settings.add(new Integration_Settings__c(Name='EMEA JB Create Quote Password-int', Environment__c='int', Type__c=SAPCreateQuoteBso.SETTING_JITTERBIT_PASSWORD_TYPE, Text_Value__c='Zidane01', Description__c=SAPCreateQuoteBso.SETTING_JITTERBIT_PASSWORD_TYPE));

		settings.add(new Integration_Settings__c(Name='EMEA JB Create Quote URL-qa', Environment__c='qa', Type__c=SAPCreateQuoteBso.SETTING_JITTERBIT_URL_TYPE, Text_Value__c='https://EnerSysTRIAL189156.jitterbit.net/EnerSysEMEA/Create_Quote_Dev', Description__c=SAPCreateQuoteBso.SETTING_JITTERBIT_URL_TYPE));
		settings.add(new Integration_Settings__c(Name='EMEA JB Create Quote Username-qa', Environment__c='qa', Type__c=SAPCreateQuoteBso.SETTING_JITTERBIT_USERNAME_TYPE, Text_Value__c='EnerSys_EMEA_Test', Description__c=SAPCreateQuoteBso.SETTING_JITTERBIT_USERNAME_TYPE));
		settings.add(new Integration_Settings__c(Name='EMEA JB Create Quote Password-qa', Environment__c='qa', Type__c=SAPCreateQuoteBso.SETTING_JITTERBIT_PASSWORD_TYPE, Text_Value__c='Zidane01', Description__c=SAPCreateQuoteBso.SETTING_JITTERBIT_PASSWORD_TYPE));

		Database.upsert(settings, Integration_Settings__c.Name, true);

	}

	private void upsertQuoteTriggerCustomSettings(Boolean triggerEnabled, Boolean saveRawSapResponse, Boolean syncEnabled) {
		List<Integration_Settings__c> intSettings = new List<Integration_Settings__c>{};
		intSettings.add(new Integration_Settings__c (Name=QuoteSapSyncManager.SETTING_QUOTE_TRIGGER_ENABLED_NAME, Type__c = CustomSettingManager.EMEA_QUOTE_TRIGGER_TYPE_VALUE, Boolean_Value__c = triggerEnabled, Description__c = 'Enables the Quote Trigger that calls out to SAP'));
		intSettings.add(new Integration_Settings__c(Name=SAPCreateQuoteBso.SETTING_SAVE_RAW_SAP_RESPONSE, Type__c=CustomSettingManager.EMEA_QUOTE_TRIGGER_TYPE_VALUE, Boolean_Value__c=saveRawSapResponse, Description__c='Enables saving the raw SAP response in SAP_Quote_Sync_Message__c on the Quote'));
        intSettings.add(new Integration_Settings__c(Name=ExtConfigQuoteLineProcessor.SETTING_QUOTE_LINE_SYNC_ENABLED_NAME, Type__c=CustomSettingManager.EMEA_QUOTE_LINE_SYNC_TYPE_VALUE, Boolean_Value__c=syncEnabled, Description__c='Enables Quote Lines synchronization with SAP'));
		Database.upsert(intSettings, Integration_Settings__c.Name, true);
	}

	@TestVisible
	private void resetTestDataSetStdPricebook(Id pbId) {
		stdPricebookId = pbId;
		createMapSapCodeToId(upsertTestSapReferences());

		deleteOldTestAccounts();
		accts = upsertTestAccounts();
		Map<Id, Account> soldTos = new Map<Id, Account>{accts.values()[0].Id=>accts.values()[0]};
		salesAreas = upsertTestSalesAreas();
		salesAreaDatas = insertTestSalesAreaDatasForAccounts(accts, salesAreas);
		mapAcctIdToSalesAreaDatas = createMapTestAcctIdToSalesAreaDatas(accts, salesAreaDatas);
		shipToDatas = insertTestShipToDatasForSalesAreaDatas(accts, salesAreaDatas);
		mapSalesAreaDataIdToShipToData = createMapTestSalesAreaDataIdToShipToData(shipToDatas);
		opptys = upsertTestOpptysForAccounts(soldTos);
		quotes = insertTestQuotesForOpptys(opptys);
	}

	private List<SAP_Reference__c> upsertTestSapReferences() {
		List<SAP_Reference__c> refs = new List<SAP_Reference__c>{};
		refs.add(new SAP_Reference__c(Name='Test INCOTERMS Z16', Code__c='Z16', System__c='SAP', Code_Type__c='Incoterm - IC'));
		refs.add(new SAP_Reference__c(Name='Test INCOTERMS Z17', Code__c='Z17', System__c='SAP', Code_Type__c='Incoterm - IC'));
		refs.add(new SAP_Reference__c(Name='Test INCOTERMS2 ARRAS', Code__c='ARRAS', System__c='SAP', Code_Type__c='Test'));
		refs.add(new SAP_Reference__c(Name='Test INCOTERMS2 PARIS', Code__c='PARIS', System__c='SAP', Code_Type__c='Test'));
		refs.add(new SAP_Reference__c(Name='Test PMNTTRMS Z000', Code__c='Z000', System__c='SAP', Code_Type__c='Terms of Payment - TP'));
		refs.add(new SAP_Reference__c(Name='Test PMNTTRMS Z001', Code__c='Z001', System__c='SAP', Code_Type__c='Terms of Payment - TP'));
		refs.add(new SAP_Reference__c(Name='Test SHIP_COND 03', Code__c='03', System__c='SAP', Code_Type__c='Shipping Condition - SC'));
		refs.add(new SAP_Reference__c(Name='Test SHIP_COND 04', Code__c='04', System__c='SAP', Code_Type__c='Shipping Condition - SC'));
		refs.add(new SAP_Reference__c(Name='Test SALES_OFF 0210', Code__c='0210', System__c='SAP', Code_Type__c='Sales Office - SO'));
		refs.add(new SAP_Reference__c(Name='Test SALES_OFF 0211', Code__c='0211', System__c='SAP', Code_Type__c='Sales Office - SO'));
		refs.add(new SAP_Reference__c(Name='Test DLV_TERMS 05', Code__c='05', System__c='SAP', Code_Type__c='Test'));
		Database.upsert(refs, SAP_Reference__c.Name, true);
		return refs;
	}

	private void createMapSapCodeToId(List<SAP_Reference__c> refs) {
		mapSapCodeToId = new Map<String, Id>{};
		for (SAP_Reference__c r : refs) {
			mapSapCodeToId.put(r.Code__c, r.Id);
		}
	}

	private void deleteOldTestAccounts() {
		List<Account> oldAccounts = [Select Id From Account Where Name = 'QA Test Account0' or Name = 'QA Test Account1'];
		Database.delete(oldAccounts);

	}

// Select proper record type
	private Map<Id, Account> upsertTestAccounts() {
		List<Account> newAccounts = new List<Account>{};
		newAccounts.add(new Account(Name='QA Test Account0', SAP_Customer_Id__c='0001149768'));
		newAccounts.add(new Account(Name='QA Test Account1', SAP_Customer_Id__c='0001034472'));
		Database.upsert(newAccounts, Account.SAP_Customer_Id__c, true);
		return new Map<Id, Account>([Select Id, Name, SAP_Customer_Id__c From Account Where Id IN :newAccounts]);

	}

	private Map<Id, Sales_Area__c> upsertTestSalesAreas() {
		List<Sales_Area__c> newSalesAreas = new List<Sales_Area__c>{};
		newSalesAreas.add(new Sales_Area__c(Name='0201/01/01-QATest',
												Sales_Organization__c='0201',
												Distribution_Channel_Code__c='01',
												Division_Code__c='01'
		));
		Database.upsert(newSalesAreas, Sales_Area__c.Name, true);
		return new Map<Id, Sales_Area__c>([Select Id, Name, Distribution_Channel_Code__c, Division_Code__c From Sales_Area__c Where Id IN :newSalesAreas]);

	}

	private Map<Id, Sales_Area_Data__c> insertTestSalesAreaDatasForAccounts(Map<Id, Account> accts, Map<Id, Sales_Area__c> salesAreas) {
		List<Sales_Area_Data__c> newSalesAreaDatas = new List<Sales_Area_Data__c>{};
		for (Account acct : accts.values()) {
			for (Sales_Area__c sa : salesAreas.values()) {
				newSalesAreaDatas.add(new Sales_Area_Data__c(Account__c=acct.Id,
														Currency_Code__c='EUR',
														Sales_Area_Sales_Organisation_Code__c=sa.Id,
														Shipcond_Code__c='03',
														Sales_Office_lookup__c=mapSapCodeToId.get('0210')
				));
			}
		}
		Database.insert(newSalesAreaDatas, true);
		return new Map<Id, Sales_Area_Data__c>([Select Id, Account__c, Currency_Code__c, Sales_Area_Sales_Organisation_Code__c, Shipcond_Code__c From Sales_Area_Data__c Where Id IN :newSalesAreaDatas]);

	}

	private Map<Id, Sales_Area_Data__c> createMapTestAcctIdToSalesAreaDatas(Map<Id, Account> accts, Map<Id, Sales_Area_Data__c> salesAreaDatas) {
		Map<Id, Sales_Area_Data__c> returnMap = new Map<Id, Sales_Area_Data__c>{};
		for (Account acct : accts.values()) {
			for (Sales_Area_Data__c sad : salesAreaDatas.values()) {
				if (sad.Account__c==acct.Id) {
					returnMap.put(acct.Id, sad);
				}
			}
		}
		return returnMap;

	}

	private Map<Id, Ship_To_Data__c> insertTestShipToDatasForSalesAreaDatas(Map<Id, Account> accts, Map<Id, Sales_Area_Data__c> salesAreaDatas) {
		List<Ship_To_Data__c> newShipToDatas = new List<Ship_To_Data__c>{};
		for (Sales_Area_Data__c sad : salesAreaDatas.values()) {
			for (Account a : accts.values()) {
				newShipToDatas.add(new Ship_To_Data__c(Ship_To_Account__c=a.Id,
														Sales_Area_Data__c=sad.Id
				));
			}
		}
		Database.insert(newShipToDatas, true);
		return new Map<Id, Ship_To_Data__c>([Select Id, Ship_To_Account__c, Sales_Area_Data__c, SAP_Customer_Id__c From Ship_To_Data__c Where Id IN :newShipToDatas]);

	}

	private Map<Id, Ship_To_Data__c> createMapTestSalesAreaDataIdToShipToData(Map<Id, Ship_To_Data__c> shipToDatas) {
		Map<Id, Ship_To_Data__c> returnMap = new Map<Id, Ship_To_Data__c>{};
		for (Ship_To_Data__c std : shipToDatas.values()) {
			returnMap.put(std.Sales_Area_Data__c, std);
		}

		Utils.logContents('shipToDatas', String.valueOf(returnMap));

		return returnMap;

	}

// Select proper record type
	private Map<Id, Opportunity> upsertTestOpptysForAccounts(Map<Id, Account> accts) {
		List<Opportunity> newOpptys = new List<Opportunity>{};
		Integer i=0;
		for (Account acct : accts.values()) {
			if (mapAcctIdToSalesAreaDatas.containsKey(acct.Id) && mapSalesAreaDataIdToShipToData.containsKey(mapAcctIdToSalesAreaDatas.get(acct.Id).Id)) {
				newOpptys.add(new Opportunity(Name='QA Test Oppty' + i,
												AccountId=acct.Id,
												Pricebook2Id=stdPricebookId,
												StageName='Qualification',
												CloseDate=Date.today(),
												Sales_Area_Data__c=mapAcctIdToSalesAreaDatas.get(acct.Id).Id,
												Ship_To_Data__c=mapSalesAreaDataIdToShipToData.get(mapAcctIdToSalesAreaDatas.get(acct.Id).Id).Id
				));
				i++;
			}
		}
		Database.upsert(newOpptys, Opportunity.Name, true);
		return new Map<Id, Opportunity>([Select Id, Name, AccountId, Pricebook2Id, StageName, CloseDate From Opportunity Where Id IN :newOpptys]);
	}

// Select proper record type
	private Map<Id, SBQQ__Quote__c> insertTestQuotesForOpptys(Map<Id, Opportunity> opptys) {
		List<SBQQ__Quote__c> newQuotes = new List<SBQQ__Quote__c>{};
		for (Opportunity oppty : opptys.values()) {
			newQuotes.add(new SBQQ__Quote__c(Customer_Requested_Date__c=Date.today().addDays(30),
												Incoterms__c=mapSapCodeToId.get('Z16'),
												Incoterms2_Text__c = 'ARRAS',
												Payment_Terms_SAP__c=mapSapCodeToId.get('Z000'),
												SBQQ__Pricebook__c=stdPricebookId,
												SBQQ__Account__c=oppty.AccountId,
												SBQQ__Opportunity2__c=oppty.Id,
												SBQQ__LineItemsGrouped__c=true,
												Shipping_Conditions__c=mapSapCodeToId.get('03'),
												Valid_From__c=Date.today(),
												SBQQ__ExpirationDate__c = Date.today().addDays(30),
												Delivery_Terms__c = mapSapCodeToId.get('05'),
												Reference_Information_Number__c = '2',
												Sales_Area_Data__c = mapAcctIdToSalesAreaDatas.get(oppty.AccountId).Id,
												Ship_To_Data__c = mapSalesAreaDataIdToShipToData.get(mapAcctIdToSalesAreaDatas.get(oppty.AccountId).Id).Id,
												SBU__c = 'MP - EMEA'
												));

		Utils.logContents('shipToData', String.valueOf(mapSalesAreaDataIdToShipToData.get(mapAcctIdToSalesAreaDatas.get(oppty.AccountId).Id).Id));


		}

		insert newQuotes;
		return new Map<Id, SBQQ__Quote__c>([Select Id, Name, SBQQ__Pricebook__c, SBQQ__Account__c, SBQQ__Opportunity2__c, SBQQ__LineItemsGrouped__c, SBU__c From SBQQ__Quote__c Where Id IN :newQuotes]);
	}


//
// --------------------------------------- TO PRODUCE SIMULATED CALLS FROM PSR -------------------------
//

	public void runTest01() {
		insertTestWSRequest(createJsonTestPayload(createJsonTestMotive01QuoteConfigs()));

	}

	private void insertTestWSRequest(ConfiguratorWS.QuoteConnectorPayload payload) {
		insert new WS_Request__c(JSON_Payload__c=JSON.serializePretty(payload));
	}

	private ConfiguratorWS.QuoteConnectorPayload createJsonTestPayload(List<ConfiguratorWS.QuoteConfig> quoteConfigs) {
		ConfiguratorWS.QuoteConnectorPayload payload = new ConfiguratorWS.QuoteConnectorPayload();
		payload.quoteConfigs = quoteConfigs;
		return payload;
	}

	private List<ConfiguratorWS.QuoteConfig> createJsonTestMotive01QuoteConfigs() {
		List<ConfiguratorWS.QuoteConfig> returnList = new List<ConfiguratorWS.QuoteConfig>{};

		ConfiguratorWS.QuoteConfig newQuote = new ConfiguratorWS.QuoteConfig();
		newQuote.configuratorName = 'PSR';
		newQuote.sfQuoteNumber = MOTIVE_TEST_QUOTE_NAME;
		newQuote.lineItems = createJsonTest01LineItems();
		returnList.add(newQuote);

		return returnList;
	}

	private List<ConfiguratorWS.QuoteLineItem> createJsonTest01LineItems() {
		List<ConfiguratorWS.QuoteLineItem> returnItems = new List<ConfiguratorWS.QuoteLineItem>{};

		returnItems.add(createJsonLineItem(10, '1276000'.leftPad(18,'0'), 1, 'EA', 'Test Product1', null));
		returnItems.add(createJsonLineItem(20, 'NP12V155FS', 2, 'EA', 'Test Product2', null));

		return returnItems;
	}

	private ConfiguratorWS.QuoteLineItem createJsonLineItem(Integer itemNo, String partNumber, Integer quantity, String priceUnit, String itemDescription, String itemNotes) {
		ConfiguratorWS.QuoteLineItem newItem = new ConfiguratorWS.QuoteLineItem();
		newItem.itemNo = itemNo;
		newItem.partNumber = partNumber;
		newItem.quantity = quantity;
		newItem.priceUnit = priceUnit;
		newItem.itemDescription = itemDescription;
		newItem.itemNotes = itemNotes;
		return newItem;
	}

}