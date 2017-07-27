@isTest
private class ConfiguratorWSCombinedTest
{

	static ConfiguratorWSTestDataFactory testData;

	static void setup() {
		testData = new ConfiguratorWSTestDataFactory();

	}

	@testSetup
	static void setupProductsAndStdPrices() {
		ConfiguratorWSTestDataFactory.setupProductsAndStdPrices();

	}

	@isTest
	static void testSaveValidQuoteConfig()
	{
		setup();
		testData.setupScenario1a('OEMSpec');

		Test.startTest();	

		ConfiguratorWS.QuoteConnectorResponse resultObj = (ConfiguratorWS.QuoteConnectorResponse)JSON.deserialize(ConfiguratorWS.saveConfigurations(testdata.payload), ConfiguratorWS.QuoteConnectorResponse.class);

		Test.stopTest();

		String expectedStatus = ConfiguratorWSBso.WS_STATUS_PROCESSED;

		System.assert(resultObj.status==expectedStatus, 'The ConfiguratorWS did not save a valid configuration');	
		
		Id failResult = null;
		Integer expectedExtConfigCount = 2;
		Integer expectedQuoteLineGroupesCount = 0;	// there's no quote created so the line item groups / lines are not created
		Integer expectedQuoteLinesCount = 0;

		Map<Id, External_Configuration__c> updatedExtConfigs = new Map<Id, External_Configuration__c>([Select Quote__c, Quote_Line_Creation_Errors__c From External_Configuration__c ]);
		System.assert(updatedExtConfigs.size()==expectedExtConfigCount, 'The ConfiguratorWS did not create 2 External_Configuration__c as expected');
		
		for(External_Configuration__c extConfig : updatedExtConfigs.values()) {
			System.assert(extConfig.Quote__c==failResult, 'The ConfiguratorWS did attach an incoming QuoteConfig to the non-existing SF Quote');
			System.assert(extConfig.Quote_Line_Creation_Errors__c!=null, 'The ConfiguratorWS did attach an incoming QuoteConfig to the non-existing SF Quote');
		}
		
		System.assert([ SELECT count() FROM SBQQ__QuoteLineGroup__c ]==expectedQuoteLineGroupesCount, 'The ConfiguratorWS did not create 0 SBQQ__QuoteLineGroup__c as expected');
		System.assert([ SELECT count() FROM SBQQ__QuoteLine__c ]==expectedQuoteLinesCount, 'The ConfiguratorWS did not create 0 SBQQ__QuoteLine__c as expected');
	}

	@isTest
	static void testWSInvalidPayload()
	{
		setup();
		ConfiguratorWSBso bso = new ConfiguratorWSBso();
		bso.stdPricebookId = Test.getStandardPricebookId();

		Test.startTest();

		ConfiguratorWS.QuoteConnectorResponse resultObj = bso.saveConfigurationsReturnObject(testdata.payload);

		Test.stopTest();

		String expectedStatus = ConfiguratorWSBso.WS_STATUS_FAILED;
		String expectedError = ConfiguratorWSBso.WS_ERROR_INVALID_PAYLOAD;

		System.assert(resultObj.status==expectedStatus, 'The ConfiguratorWS did not return a failed status for an invalid WS payload');
		System.assert(resultObj.errorMessage==expectedError, 'The ConfiguratorWS did not return an error message for an invalid WS payload');
		
		Integer expectedExtConfigCount = 0;
		Integer expectedQuoteLineGroupesCount = 0;	// the payload was not valid so the line item groups / lines are not created
		Integer expectedQuoteLinesCount = 0;

		Map<Id, External_Configuration__c> updatedExtConfigs = new Map<Id, External_Configuration__c>([Select Quote__c, Quote_Line_Creation_Errors__c From External_Configuration__c ]);
		System.assert(updatedExtConfigs.size()==expectedExtConfigCount, 'The ConfiguratorWS did not create 0 External_Configuration__c as expected');
		
		System.assert([ SELECT count() FROM SBQQ__QuoteLineGroup__c ]==expectedQuoteLineGroupesCount, 'The ConfiguratorWS did not create 0 SBQQ__QuoteLineGroup__c as expected');
		System.assert([ SELECT count() FROM SBQQ__QuoteLine__c ]==expectedQuoteLinesCount, 'The ConfiguratorWS did not create 0 SBQQ__QuoteLine__c as expected');
	}

	@isTest
	static void testWSNoQuoteConfigsInPayload()
	{
		setup();
		testData.setupScenario1c();
		ConfiguratorWSBso bso = new ConfiguratorWSBso();
		bso.stdPricebookId = Test.getStandardPricebookId();

		Test.startTest();

		ConfiguratorWS.QuoteConnectorResponse resultObj = bso.saveConfigurationsReturnObject(testdata.payload);

		Test.stopTest();

		String expectedStatus = ConfiguratorWSBso.WS_STATUS_FAILED;
		String expectedError = ConfiguratorWSBso.WS_ERROR_NO_CONFIGS;

		System.assert(resultObj.status==expectedStatus, 'The ConfiguratorWS did not return a failed status for no QuoteConfigs in WS payload');
		System.assert(resultObj.errorMessage==expectedError, 'The ConfiguratorWS did not return an error message for no QuoteConfigs in WS payload');
		
		Integer expectedExtConfigCount = 0;
		Integer expectedQuoteLineGroupesCount = 0;	// the payload was not valid so the line item groups / lines are not created
		Integer expectedQuoteLinesCount = 0;

		Map<Id, External_Configuration__c> updatedExtConfigs = new Map<Id, External_Configuration__c>([Select Quote__c, Quote_Line_Creation_Errors__c From External_Configuration__c ]);
		System.assert(updatedExtConfigs.size()==expectedExtConfigCount, 'The ConfiguratorWS did not create 0 External_Configuration__c as expected');
		
		System.assert([ SELECT count() FROM SBQQ__QuoteLineGroup__c ]==expectedQuoteLineGroupesCount, 'The ConfiguratorWS did not create 0 SBQQ__QuoteLineGroup__c as expected');
		System.assert([ SELECT count() FROM SBQQ__QuoteLine__c ]==expectedQuoteLinesCount, 'The ConfiguratorWS did not create 0 SBQQ__QuoteLine__c as expected');

	}

	@isTest
	static void testAddExtConfigToExistingQuoteOEMSpec()
	{
		setup();
		testData.setupScenario2('OEMSpec');
		ConfiguratorWSBso bso = new ConfiguratorWSBso();
		bso.stdPricebookId = Test.getStandardPricebookId();

		Test.startTest();	

		bso.saveConfigurations(testData.payload);

		Test.stopTest();

		Id failResult = null;
		Integer expectedExtConfigCount = 1;
		Integer expectedQuoteLineGroupesCount = 1;
		Integer expectedQuoteLinesCount = 1;

		Map<Id, External_Configuration__c> updatedExtConfigs = new Map<Id, External_Configuration__c>([Select Quote_Line_Creation_Errors__c From External_Configuration__c Where Id = :bso.sfExtConfigObjects[0].Id]);

		System.assert(bso.sfExtConfigObjects[0].Quote__c!=failResult, 'The ConfiguratorWS did not attach an incoming QuoteConfig to the pre-existing SF Quote');
		System.assert(updatedExtConfigs.size()==expectedExtConfigCount, 'The ConfiguratorWS did not create 1 External_Configuration__c as expected');
		System.assert([ SELECT count() FROM SBQQ__QuoteLineGroup__c ]==expectedQuoteLineGroupesCount, 'The ConfiguratorWS did not create 1 SBQQ__QuoteLineGroup__c as expected');
		System.assert([ SELECT count() FROM SBQQ__QuoteLine__c ]==expectedQuoteLineGroupesCount, 'The ConfiguratorWS did not create 1 SBQQ__QuoteLine__c as expected');
	}
	
	@isTest
	static void testAddExtConfigToExistingQuoteSAP()
	{
		setup();
		testData.setupScenario2('sap');
		ConfiguratorWSBso bso = new ConfiguratorWSBso();
		bso.stdPricebookId = Test.getStandardPricebookId();

		Test.startTest();	

		bso.saveConfigurations(testData.payload);

		Test.stopTest();

		Id failResult = null;
		Integer expectedExtConfigCount = 1;
		Integer expectedQuoteLineGroupesCount = 0;	// for SAP no quote groups are created
		Integer expectedQuoteLinesCount = 1;

		Map<Id, External_Configuration__c> updatedExtConfigs = new Map<Id, External_Configuration__c>([Select Quote_Line_Creation_Errors__c From External_Configuration__c Where Id = :bso.sfExtConfigObjects[0].Id]);

		System.assert(bso.sfExtConfigObjects[0].Quote__c!=failResult, 'The ConfiguratorWS did not attach an incoming QuoteConfig to the pre-existing SF Quote');
		System.assert(updatedExtConfigs.size()==expectedExtConfigCount, 'The ConfiguratorWS did not create 1 External_Configuration__c as expected');
		System.assert([ SELECT count() FROM SBQQ__QuoteLineGroup__c ]==expectedQuoteLineGroupesCount, 'The ConfiguratorWS did not create 0 SBQQ__QuoteLineGroup__c as expected');
		System.assert([ SELECT count() FROM SBQQ__QuoteLine__c ]==expectedQuoteLinesCount, 'The ConfiguratorWS did not create 1 SBQQ__QuoteLine__c as expected');
	}

	@isTest
	static void testUpdateToExistingExternalConfig()
	{
		Integer expectedExtConfigCount = 1;
		Integer expectedQuoteLineGroupesCount = 1;
		Integer expectedQuoteLinesCount = 1;
		
		setup();
		testData.setupScenario3();
		
		Map<Id, External_Configuration__c> updatedExtConfigs = new Map<Id, External_Configuration__c>([Select Quote_Line_Creation_Errors__c From External_Configuration__c ]);
		
		ConfiguratorWSBso bso = new ConfiguratorWSBso();

		Test.startTest();	

		bso.saveConfigurations(testData.payload);

		Test.stopTest();

		String expectedResult = testData.payload.quoteConfigs[0].externalConfigId;

		System.assert(bso.sfExtConfigObjects[0].External_Id__c==expectedResult, 'The ConfiguratorWS did not update a pre-existing External Configuration that matched the incoming QuoteConfig on externalConfigId');
	}

	@isTest
	static void testWSInvalidConfiguratorName()
	{
		setup();
		testData.setupScenario2e();
		ConfiguratorWSBso bso = new ConfiguratorWSBso();
		bso.stdPricebookId = Test.getStandardPricebookId();

		Test.startTest();

		bso.saveConfigurations(testData.payload);

		Test.stopTest();

		String expectedStatus = ConfiguratorWSBso.WS_STATUS_FAILED;
		String expectedError = ConfiguratorWSBso.CONFIG_ERROR_INVALID_CONFIGURATOR_NAME;

		ConfiguratorWSUtils.logContents('bso.precheckResults', String.valueOf(bso.precheckResults));

		System.assert(bso.qcr.status==expectedStatus, 'The ConfiguratorWS did not return a failed status for an invalid configuratorName (leaving no valid configs)');
		System.assert(bso.precheckResults[0].sfErrorMessage==expectedError, 'The ConfiguratorWS did not return an error for invalid configuratorName');
	}

	@isTest
	static void testAddLargeNumberOfExtConfigsToExistingQuote()
	{
		setup();
		testData.setupScenario2f();
		ConfiguratorWSBso bso = new ConfiguratorWSBso();
		bso.stdPricebookId = Test.getStandardPricebookId();

		Test.startTest();	

		bso.saveConfigurations(testData.payload);

		Test.stopTest();

		Id failResult = null;
		Integer expectedExtConfigCount = 17;

		Map<Id, External_Configuration__c> newExtConfigs = new Map<Id, External_Configuration__c>([Select Quote_Line_Creation_Errors__c From External_Configuration__c Where Id IN :bso.sfExtConfigObjects]);

		System.assert(bso.sfExtConfigObjects[0].Quote__c!=failResult, 'The ConfiguratorWS did not attach an incoming QuoteConfig to the pre-existing SF Quote');
		System.assert(newExtConfigs.size()==expectedExtConfigCount, 'The ConfiguratorWS did not create 3 External_Configuration__c records as expected');
	}



	// --------------------------------------------------------------------------------------

	// ExtConfigQuoteLineProcessor Tests

	// --------------------------------------------------------------------------------------

	@isTest
	static void testProcessExtConfigHappyPath()
	{
		setup();
		testData.setupScenario2('OEMSpec');
		ConfiguratorWSBso bso = new ConfiguratorWSBso();
		// For some reason we cannot create a valid test Quote in Salesforce CPQ (pricebook always comes out null)
		// Therefore if we don't override the standardpricebook setting the created test quote will have a null SBQQ__Pricebook__c
		bso.stdPricebookId = Test.getStandardPricebookId();

		Test.startTest();	

		bso.saveConfigurations(testData.payload);

		Test.stopTest();

		Id failResult = null;

		String expectedStatus = ConfiguratorWSBso.WS_STATUS_PROCESSED;
		String expectedError = null;
		Integer expectedLineCount = 1;
		Set<String> expectedLinePartNumbers = new Set<String>();
		for (Product2 p : testData.products.values()) {
			expectedLinePartNumbers.add(p.Name);
		}

		Map<Id, External_Configuration__c> updatedExtConfigs = new Map<Id, External_Configuration__c>([Select Quote_Line_Creation_Errors__c From External_Configuration__c Where Id = :bso.sfExtConfigObjects[0].Id]);
		Map<Id, SBQQ__QuoteLine__c> newQuoteLines = new Map<Id, SBQQ__QuoteLine__c>([Select Id, SBQQ__Product__r.Name From SBQQ__QuoteLine__c Where External_Configuration__c = :bso.sfExtConfigObjects[0].Id]);

		System.assert(bso.qcr.status==expectedStatus, 'The ConfiguratorWS did not save a QuoteConfig');
		System.assert(updatedExtConfigs.get(bso.sfExtConfigObjects[0].Id).Quote_Line_Creation_Errors__c==expectedError, 'The QuoteLineProcessor returned error(s)');
		System.assert(newQuoteLines.values().size()==expectedLineCount, 'The QuoteLineProcessor did not create 1 Quote Line as expected');
		System.assert(expectedLinePartNumbers.contains(newQuoteLines.values()[0].SBQQ__Product__r.Name), 'The QuoteLineProcessor did not create a Quote Line with a specific part number as required');
	}

	@isTest
	static void testProcessExtConfigWithNoMatchingQuote()
	{
		setup();
		testData.setupScenario4();
		ConfiguratorWSBso bso = new ConfiguratorWSBso();
		bso.stdPricebookId = Test.getStandardPricebookId();

		Test.startTest();	

		bso.saveConfigurations(testData.payload);

		Test.stopTest();

		String expectedStatus = ConfiguratorWSBso.WS_STATUS_PROCESSED;
		String expectedError = ExtConfigQuoteLineProcessor.CONFIG_ERROR_NOT_ATTACHED_TO_SF_QUOTE.removeEnd('\n').trim();
		Integer expectedExtConfigCount = 1;

		Map<Id, External_Configuration__c> updatedExtConfigs = new Map<Id, External_Configuration__c>([Select Quote_Line_Creation_Errors__c From External_Configuration__c Where Id = :bso.sfExtConfigObjects[0].Id]);

		System.assert(bso.qcr.status==expectedStatus, 'The ConfiguratorWS did not process a QuoteConfig with null SfQuoteNumber');
		System.assert(updatedExtConfigs.get(bso.sfExtConfigObjects[0].Id).Quote_Line_Creation_Errors__c==expectedError, 'The QuoteLineProcessor did not return an error for missing SfQuoteNumber');
		System.assert(updatedExtConfigs.size()==expectedExtConfigCount, 'The QuoteLineProcessor did not create 1 External Configuration record as expected');
	}

	@isTest
	static void testNoLineItemsinQuoteConfig()
	{
		setup();
		testData.setupScenario2d();
		ConfiguratorWSBso bso = new ConfiguratorWSBso();
		bso.stdPricebookId = Test.getStandardPricebookId();

		Test.startTest();	

		bso.saveConfigurations(testData.payload);

		Test.stopTest();

		String expectedStatus = ConfiguratorWSBso.WS_STATUS_PROCESSED;
		String expectedError = ExtConfigQuoteLineProcessor.CONFIG_ERROR_NO_LINE_ITEMS.removeEnd('\n').trim();
		Integer expectedQuoteLineGroupCount = 1;

		Map<Id, External_Configuration__c> updatedExtConfigs = new Map<Id, External_Configuration__c>([Select Quote_Line_Creation_Errors__c From External_Configuration__c Where Id = :bso.sfExtConfigObjects[0].Id]);
		Map<Id, SBQQ__QuoteLineGroup__c> newQuoteLineGroups = new Map<Id, SBQQ__QuoteLineGroup__c>([Select Id From SBQQ__QuoteLineGroup__c Where External_Id__c = :bso.sfExtConfigObjects[0].Id]);

		System.assert(bso.qcr.status==expectedStatus, 'The ConfiguratorWS did not process a QuoteConfig with no line items (it should have)');
		System.assert(updatedExtConfigs.get(bso.sfExtConfigObjects[0].Id).Quote_Line_Creation_Errors__c==expectedError, 'The QuoteLineProcessor did not document an error for QuoteConfig does not contain any line items');
		System.assert(newQuoteLineGroups.size()==expectedQuoteLineGroupCount, 'The QuoteLineProcessor did not create 1 Quote Line Group as expected');
	}

	@isTest
	static void testPricebookIsNullOnSfQuote()
	{
		setup();
		testData.setupScenario2('OEMSpec');
		ConfiguratorWSBso bso = new ConfiguratorWSBso();
		// For some reason we cannot create a valid test Quote in Salesforce CPQ (pricebook always comes out null)
		// Therefore if we don't override the standardpricebook setting the created test quote will have a null SBQQ__Pricebook__c
		//bso.stdPricebookId = Test.getStandardPricebookId();

		Test.startTest();	

		bso.saveConfigurations(testData.payload);

		Test.stopTest();

		Id failResult = null;

		String expectedStatus = ConfiguratorWSBso.WS_STATUS_PROCESSED;
		String expectedError = ExtConfigQuoteLineProcessor.CONFIG_ERROR_PRICEBOOK_IS_NULL.removeEnd('\n').trim();

		Map<Id, External_Configuration__c> updatedExtConfigs = new Map<Id, External_Configuration__c>([Select Quote_Line_Creation_Errors__c From External_Configuration__c Where Id = :bso.sfExtConfigObjects[0].Id]);

		System.assert(bso.qcr.status==expectedStatus, 'The ConfiguratorWS did not save a QuoteConfig that attaches to a SF Quote will a null Pricebook');
		System.assert(updatedExtConfigs.get(bso.sfExtConfigObjects[0].Id).Quote_Line_Creation_Errors__c==expectedError, 'The QuoteLineProcessor did not document an error for no null Pricebook on the SF Quote');
	}

	@isTest
	static void testNoPricebookEntriesFoundForProducts()
	{
		setup();
		testData.setupScenario2b();
		ConfiguratorWSBso bso = new ConfiguratorWSBso();
		bso.stdPricebookId = Test.getStandardPricebookId();

		Test.startTest();	

		bso.saveConfigurations(testData.payload);

		Test.stopTest();

		String expectedStatus = ConfiguratorWSBso.WS_STATUS_PROCESSED;
		String expectedError = ExtConfigQuoteLineProcessor.QUOTE_LINE_ERROR_NO_PRICE_FOUND.removeEnd('\n').trim();

		Map<Id, External_Configuration__c> updatedExtConfigs = new Map<Id, External_Configuration__c>([Select Quote_Line_Creation_Errors__c From External_Configuration__c Where Id = :bso.sfExtConfigObjects[0].Id]);

		System.assert(bso.qcr.status==expectedStatus, 'The ConfiguratorWS did not save a QuoteConfig with no prices found for products (it should still save)');
		System.assert(updatedExtConfigs.get(bso.sfExtConfigObjects[0].Id).Quote_Line_Creation_Errors__c.contains(expectedError), 'The QuoteLineProcessor did not document an error for no price found for product');
	}

	@isTest
	static void testQuoteLineNoPriceFoundForGenericDummyPartNumber()
	{
		setup();
		testData.setupScenario2c();
		ConfiguratorWSBso bso = new ConfiguratorWSBso();
		bso.stdPricebookId = Test.getStandardPricebookId();

		Test.startTest();	

		bso.saveConfigurations(testData.payload);

		Test.stopTest();

		String expectedStatus = ConfiguratorWSBso.WS_STATUS_PROCESSED;
		String expectedError = ExtConfigQuoteLineProcessor.QUOTE_LINE_ERROR_NO_PRICE_FOUND.removeEnd('\n').trim();
		ExtConfigQuoteLineProcessor processor = new ExtConfigQuoteLineProcessor();
		String expectedErrorNamedPartNumber = processor.dummyPartNumberMap.get('generic');

		Map<Id, External_Configuration__c> updatedExtConfigs = new Map<Id, External_Configuration__c>([Select Quote_Line_Creation_Errors__c From External_Configuration__c Where Id = :bso.sfExtConfigObjects[0].Id]);

		System.assert(bso.qcr.status==expectedStatus, 'The ConfiguratorWS did not save a QuoteConfig with one product with a missing price (it should still save)');
		System.assert(updatedExtConfigs.get(bso.sfExtConfigObjects[0].Id).Quote_Line_Creation_Errors__c.contains(expectedError), 'The QuoteLineProcessor did not document an error for product with missing price');
		System.assert(updatedExtConfigs.get(bso.sfExtConfigObjects[0].Id).Quote_Line_Creation_Errors__c.contains(expectedErrorNamedPartNumber), 'The QuoteLineProcessor did not document an error for generic dummy part number with missing price');

	}

	@isTest
	static void testSwitchToSpecificDummyPartNumber()
	{
		setup();
		testData.setupScenario2g();
		ConfiguratorWSBso bso = new ConfiguratorWSBso();
		bso.stdPricebookId = Test.getStandardPricebookId();

		Test.startTest();	

		bso.saveConfigurations(testData.payload);

		Test.stopTest();

		String expectedStatus = ConfiguratorWSBso.WS_STATUS_PROCESSED;
		Integer expectedLineCount = 1;
		String expectedLineNote = 'TestProduct-NoPBEs';
		Set<String> expectedLinePartNumbers = new Set<String>();
		ExtConfigQuoteLineProcessor processor = new ExtConfigQuoteLineProcessor();
		for (String itemType : processor.dummyPartNumberMap.keySet()) {
			if (itemType!='generic') {
				expectedLinePartNumbers.add(processor.dummyPartNumberMap.get(itemType));
			}
		}

		Map<Id, External_Configuration__c> updatedExtConfigs = new Map<Id, External_Configuration__c>([Select Quote_Line_Creation_Errors__c From External_Configuration__c Where Id = :bso.sfExtConfigObjects[0].Id]);

		System.assert(bso.qcr.status==expectedStatus, 'The ConfiguratorWS did not save a QuoteConfig with one product with a custom part number (requiring dummy part number substitute)');

		Map<Id, SBQQ__QuoteLine__c> newQuoteLines = new Map<Id, SBQQ__QuoteLine__c>([Select Id, SBQQ__Product__r.Name, Line_Notes__c From SBQQ__QuoteLine__c Where External_Configuration__c = :bso.sfExtConfigObjects[0].Id]);

		System.assert(newQuoteLines.values().size()==expectedLineCount, 'The QuoteLineProcessor did not create 1 dummy Quote Line as expected');
		System.assert(expectedLinePartNumbers.contains(newQuoteLines.values()[0].SBQQ__Product__r.Name), 'The QuoteLineProcessor did not create a dummy Quote Line with a specific dummy part number as required');
		System.assert(newQuoteLines.values()[0].Line_Notes__c.contains(expectedLineNote), 'The QuoteLineProcessor did not create a dummy Quote Line with the original custom part number copied to the Line_Notes__c field');

	}

	//@isTest
	//static void testProcessExtConfigLargeNumberOfLines()
	//{
	//	setup();
	//	testData.setupScenario2k();
	//	ConfiguratorWSBso bso = new ConfiguratorWSBso();
	//	// For some reason we cannot create a valid test Quote in Salesforce CPQ (pricebook always comes out null)
	//	// Therefore if we don't override the standardpricebook setting the created test quote will have a null SBQQ__Pricebook__c
	//	bso.stdPricebookId = Test.getStandardPricebookId();

	//	Test.startTest();	

	//	bso.saveConfigurations(testData.payload);

	//	Test.stopTest();

	//	String expectedStatus = ConfiguratorWSBso.WS_STATUS_PROCESSED;
	//	String expectedError = null;
	//	Integer expectedLineCount = 200;

	//	Map<Id, External_Configuration__c> updatedExtConfigs = new Map<Id, External_Configuration__c>([Select Quote_Line_Creation_Errors__c From External_Configuration__c Where Id = :bso.sfExtConfigObjects[0].Id]);
	//	Map<Id, SBQQ__QuoteLine__c> newQuoteLines = new Map<Id, SBQQ__QuoteLine__c>([Select Id, SBQQ__Product__r.Name From SBQQ__QuoteLine__c Where External_Configuration__c = :bso.sfExtConfigObjects[0].Id]);

	//	System.assert(bso.qcr.status==expectedStatus, 'The ConfiguratorWS did not save a QuoteConfig');
	//	System.assert(updatedExtConfigs.get(bso.sfExtConfigObjects[0].Id).Quote_Line_Creation_Errors__c==expectedError, 'The QuoteLineProcessor returned error(s)');
	//	System.assert(newQuoteLines.values().size()==expectedLineCount, 'The QuoteLineProcessor did not create 1 Quote Line as expected');
	//}


	// --------------------------------------------------------------------------------------

	// WSRequestTriggerHandler Tests

	// --------------------------------------------------------------------------------------

	@isTest
	static void testSingleWsRequest()
	{
		setup();
		testData.setupScenario2('OEMSpec');

		String testPayload = JSON.serializePretty(testData.payload);

		Test.startTest();	

		List<WS_Request__c> testWSRequests = new List<WS_Request__c>{};
		testWSRequests.add(new WS_Request__c(JSON_Payload__c=testPayload));
		insert testWSRequests;

		Test.stopTest();

		Integer expectedExtConfigCount = 1;

		Map<Id, WS_Request__c> updatedWsRequests = new Map<Id, WS_Request__c>([Select Processing_Results__c From WS_Request__c Where Id = :testWSRequests[0].Id]);
		Map<Id, External_Configuration__c> newExtConfigs = new Map<Id, External_Configuration__c>([Select Id From External_Configuration__c]);

		System.assert(updatedWsRequests.get(testWSRequests[0].Id).Processing_Results__c!='', 'The WSRequestManager did not update the Processing_Results__c field on the WS_Request__c');
		System.assert(newExtConfigs.keySet().size()==expectedExtConfigCount, 'The WSRequestManager did not create 1 External Configuration record as expected');
	}

	@isTest
	static void testBatchOf3WsRequests()
	{
		setup();
		testData.setupScenario2h();

		String testPayload = JSON.serializePretty(testData.payload);
		String testPayload1 = JSON.serializePretty(testData.payload1);
		String testPayload2 = JSON.serializePretty(testData.payload2);

		Test.startTest();	

		List<WS_Request__c> testWSRequests = new List<WS_Request__c>{};
		testWSRequests.add(new WS_Request__c(JSON_Payload__c=testPayload));
		testWSRequests.add(new WS_Request__c(JSON_Payload__c=testPayload1));
		testWSRequests.add(new WS_Request__c(JSON_Payload__c=testPayload2));
		insert testWSRequests;

		Test.stopTest();

		Integer expectedExtConfigCount = 3;

		Map<Id, WS_Request__c> updatedWsRequests = new Map<Id, WS_Request__c>([Select Processing_Results__c From WS_Request__c Where Id IN :testWSRequests]);
		Map<Id, External_Configuration__c> newExtConfigs = new Map<Id, External_Configuration__c>([Select Id From External_Configuration__c]);

		System.assert(updatedWsRequests.get(testWSRequests[0].Id).Processing_Results__c!='', 'The WSRequestManager did not update the Processing_Results__c field on WS_Request__c 1 of 3');
		System.assert(updatedWsRequests.get(testWSRequests[1].Id).Processing_Results__c!='', 'The WSRequestManager did not update the Processing_Results__c field on WS_Request__c 2 of 3');
		System.assert(updatedWsRequests.get(testWSRequests[2].Id).Processing_Results__c!='', 'The WSRequestManager did not update the Processing_Results__c field on WS_Request__c 3 of 3');
		System.assert(newExtConfigs.keySet().size()==expectedExtConfigCount, 'The WSRequestManager did not create 3 External Configuration record as expected');
	}

	@isTest
	static void testSingleExtraLargeWsRequest()
	{
		setup();
		testData.setupScenario2m();

		String testPayload = JSON.serializePretty(testData.payload);
		System.debug(LoggingLevel.INFO, '*** testPayload.length(): ' + testPayload.length());

		Test.startTest();	

		List<WS_Request__c> testWSRequests = new List<WS_Request__c>{};
		testWSRequests.add(new WS_Request__c(JSON_Payload__c=testPayload));
		insert testWSRequests;

		Test.stopTest();

		Integer expectedExtConfigCount = 1;

		Map<Id, WS_Request__c> updatedWsRequests = new Map<Id, WS_Request__c>([Select Processing_Results__c From WS_Request__c Where Id = :testWSRequests[0].Id]);
		Map<Id, External_Configuration__c> newExtConfigs = new Map<Id, External_Configuration__c>([Select Id From External_Configuration__c]);

		System.assert(updatedWsRequests.get(testWSRequests[0].Id).Processing_Results__c!='', 'The WSRequestManager did not update the Processing_Results__c field on the WS_Request__c');
		System.assert(newExtConfigs.keySet().size()==expectedExtConfigCount, 'The WSRequestManager did not create 1 External Configuration record as expected');
	}

}