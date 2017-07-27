@isTest
private class SAPCreateQuoteTest
{
	static SAPCreateQuoteTestDataFactory testData;

	static void setup() {
		CustomSettingManager.fillCustomSettingsWithDefaults();
		//CustomSettingManager.fillIntegrationEnvironmentSpecificSettingsWithDefaults();
		testData = new SAPCreateQuoteTestDataFactory();

	}

	@isTest
	static void testSAPCreateQuoteHeaderSuccess()
	{
		setup();
		testData.setupHeaderScenario1();

		Test.setMock(HttpCalloutMock.class, SAPCreateQuoteTestHttpCalloutMock.getStaticResourceMock_Ok());

		Test.startTest();

		Map<Id, SBQQ__Quote__c> quotes = SAPCreateQuoteTestDataFactory.createGenericTestQuotesForOpptys(1, testData.opptys);

		Test.stopTest();

		List<SBQQ__Quote__c> updatedQuotes = [Select SAP_Sync_Last_Message__c From SBQQ__Quote__c Where Id = :quotes.values()[0].Id];

		System.assert(updatedQuotes[0].SAP_Sync_Last_Message__c!=null, 'The Quote Trigger was not able to update Quote.SAP_Sync_Last_Message__c for success scenario');
//		System.assert(updatedQuotes[0].SAP_Sync_Last_Message__c.contains(SAPCreateQuoteBso.USER_MESSAGE_QUOTE_CREATED), 'The Quote Trigger did not properly update SAP_Sync_Last_Message__c for success scenario');
	}

	@isTest
	static void testSAPCreateQuoteHeaderErrorSapInternal()
	{
		setup();
		testData.setupHeaderScenario1();

		Test.setMock(HttpCalloutMock.class, SAPCreateQuoteTestHttpCalloutMock.getStaticResourceMock_Error());

		Test.startTest();

		Map<Id, SBQQ__Quote__c> quotes = SAPCreateQuoteTestDataFactory.createGenericTestQuotesForOpptys(1, testData.opptys);

		Test.stopTest();

		List<SBQQ__Quote__c> updatedQuotes = [Select SAP_Sync_Last_Message__c From SBQQ__Quote__c Where Id = :quotes.values()[0].Id];

		System.assert(updatedQuotes[0].SAP_Sync_Last_Message__c!=null, 'The Quote Trigger was not able to update Quote.SAP_Sync_Last_Message__c for SAP internal error scenario');
//		System.assert(updatedQuotes[0].SAP_Sync_Last_Message__c.contains(SAPCreateQuoteBso.USER_MESSAGE_QUOTE_CREATE_FAILED_WITHIN_SAP), 'The Quote Trigger did not properly update SAP_Sync_Last_Message__c for SAP internal error scenario');
	}

	@isTest
	static void testSAPCreateQuoteHeaderErrorQuoteNotFound()
	{
		setup();
		testData.setupHeaderScenario1();

		Test.startTest();

		SAPCreateQuoteBso bso = new SAPCreateQuoteBso();

		String errorReturned = '';

		Try {
			bso.syncQuoteHeaderToSap(null);

		} Catch(Exception e) {
			errorReturned = e.getMessage();

		}

		Test.stopTest();

		System.assert(errorReturned.contains(SAPCreateQuoteBso.USER_MESSAGE_PRECHECK_ERROR_QUOTE_NOT_FOUND), 'The Quote Trigger did not properly return error Quote Not Found');
	}

	@isTest
	static void testSAPResponseNull()
	{
		setup();
		testData.setupHeaderScenario1();

		Test.startTest();

		List<SBQQ__Quote__c> quotesToUpsert = SAPCreateQuoteBso.processHttpResponse(null, null, true, true);

		Test.stopTest();

		String expectedUserMessage = SAPCreateQuoteBso.USER_MESSAGE_ERROR_SAP_RESPONSE_NULL;

		System.assert(quotesToUpsert[0].SAP_Sync_Last_Message__c.contains(expectedUserMessage), 'The Quote Trigger did not properly handle a null response from SAP');

	}

	@isTest
	static void testSAPResponseUnexpected()
	{
		setup();
		testData.setupHeaderScenario1();

		String sapMessage = 'SAP did something unexpected';
		String sapUnexpectedResponse = '{"returns":[{"SAP_TYPE":"U","SAP_SYSTEM":null,"SAP_NUMBER":"311","ROW":null,"PARAMETER":null,"MESSAGE_V4":null,"MESSAGE_V3":null,"MESSAGE_V2":null,"MESSAGE_V1":null,"MESSAGE":"' + sapMessage + '","LOG_NO":null,"LOG_MSG_NO":null,"ID":"V1","FIELD":null}]}';

		Test.startTest();

		List<SBQQ__Quote__c> quotesToUpsert = SAPCreateQuoteBso.processHttpResponse(null, sapUnexpectedResponse, true, true);

		Test.stopTest();

		String expectedUserMessage = SAPCreateQuoteBso.USER_MESSAGE_ERROR_SAP_RESPONSE_UNEXPECTED;

		System.assert(quotesToUpsert[0].SAP_Sync_Last_Message__c.contains(expectedUserMessage), 'The Quote Trigger did not properly handle an unexpected SAP response');
		System.assert(quotesToUpsert[0].SAP_Sync_Last_Message__c.contains(sapMessage), 'The Quote Trigger did not properly save the unexpected SAP response on the Quote');
	}

	@isTest
	static void testSAPResponseNoReturns()
	{
		setup();
		testData.setupHeaderScenario1();

		String sapResponse = '{"returns":[]}';

		Test.startTest();

		List<SBQQ__Quote__c> quotesToUpsert = SAPCreateQuoteBso.processHttpResponse(null, sapResponse, true, true);

		Test.stopTest();

		String expectedUserMessage = SAPCreateQuoteBso.USER_MESSAGE_ERROR_SAP_RESPONSE_NO_RETURN;

		System.assert(quotesToUpsert[0].SAP_Sync_Last_Message__c.contains(expectedUserMessage), 'The Quote Trigger did not properly handle an SAP response with no RETURN node');
	}

	@isTest
	static void testCreateMultipleSfQuoteHeadersNoCallout()
	{
		setup();
		testData.setupHeaderScenario1();

		Test.startTest();

		Map<Id, SBQQ__Quote__c> quotes = SAPCreateQuoteTestDataFactory.createGenericTestQuotesForOpptys(2, testData.opptys);

		Test.stopTest();

		List<SBQQ__Quote__c> updatedQuotes = [Select SAP_Sync_Last_Message__c From SBQQ__Quote__c Where Id = :quotes.values()[0].Id];

		System.assert(updatedQuotes[0].SAP_Sync_Last_Message__c==null, 'The Quote Trigger should not perform a callout when the Trigger batch contains more than 1 record');

	}

	@isTest
	static void testJsonParser() {
		setup();

		String jsonSampleSuccess = '{ "returns": [ { "SAP_TYPE": "S", "SAP_SYSTEM": "C01CLNT010", "SAP_NUMBER": "233", "ROW": "0", "PARAMETER": "SALES_HEADER_IN", "MESSAGE_V4": null, "MESSAGE_V3": null, "MESSAGE_V2": null, "MESSAGE_V1": "VBAKKOM", "MESSAGE": "SALES_HEADER_IN has been processed successfully", "LOG_NO": null, "LOG_MSG_NO": "000000", "ID": "V4", "FIELD": null }, { "SAP_TYPE": "W", "SAP_SYSTEM": "C01CLNT010", "SAP_NUMBER": "555", "ROW": "0", "PARAMETER": "VBUVKOM", "MESSAGE_V4": null, "MESSAGE_V3": null, "MESSAGE_V2": null, "MESSAGE_V1": "VBAKKOM", "MESSAGE": "The sales document is not yet complete: Edit data", "LOG_NO": null, "LOG_MSG_NO": "000000", "ID": "V1", "FIELD": null }, { "SAP_TYPE": "S", "SAP_SYSTEM": "C01CLNT010", "SAP_NUMBER": "311", "ROW": "0", "PARAMETER": "SALES_HEADER_IN", "MESSAGE_V4": null, "MESSAGE_V3": null, "MESSAGE_V2": "220000432", "MESSAGE_V1": "Quotation", "MESSAGE": "Quotation 220000432 has been saved", "LOG_NO": null, "LOG_MSG_NO": "000000", "ID": "V1", "FIELD": null } ] }';
		String jsonSampleFailed = '{ "returns": [ { "SAP_TYPE": "S", "SAP_SYSTEM": "C01CLNT010", "SAP_NUMBER": "233", "ROW": "0", "PARAMETER": "SALES_HEADER_IN", "MESSAGE_V4": null, "MESSAGE_V3": null, "MESSAGE_V2": null, "MESSAGE_V1": "VBAKKOM", "MESSAGE": "SALES_HEADER_IN has been processed successfully", "LOG_NO": null, "LOG_MSG_NO": "000000", "ID": "V4", "FIELD": null }, { "SAP_TYPE": "E", "SAP_SYSTEM": "C01CLNT010", "SAP_NUMBER": "331", "ROW": "1", "PARAMETER": "SALES_SCHEDULES_IN", "MESSAGE_V4": null, "MESSAGE_V3": null, "MESSAGE_V2": null, "MESSAGE_V1": "000010", "MESSAGE": "Item 000010 does not exist", "LOG_NO": null, "LOG_MSG_NO": "000000", "ID": "V1", "FIELD": null }, { "SAP_TYPE": "W", "SAP_SYSTEM": "C01CLNT010", "SAP_NUMBER": "555", "ROW": "0", "PARAMETER": "VBUVKOM", "MESSAGE_V4": null, "MESSAGE_V3": null, "MESSAGE_V2": null, "MESSAGE_V1": "000010", "MESSAGE": "The sales document is not yet complete: Edit data", "LOG_NO": null, "LOG_MSG_NO": "000000", "ID": "V1", "FIELD": null }, { "SAP_TYPE": "E", "SAP_SYSTEM": "C01CLNT010", "SAP_NUMBER": "219", "ROW": "0", "PARAMETER": null, "MESSAGE_V4": null, "MESSAGE_V3": null, "MESSAGE_V2": null, "MESSAGE_V1": null, "MESSAGE": "Sales document was not changed", "LOG_NO": null, "LOG_MSG_NO": "000000", "ID": "V4", "FIELD": null } ] }';

		Test.startTest();

		SAPCreateQuoteBso.SAPResponses successResponses = SAPCreateQuoteBso.parseSapResponse(jsonSampleSuccess);
		SAPCreateQuoteBso.SAPResponses failedResponses = SAPCreateQuoteBso.parseSapResponse(jsonSampleFailed);

		Test.stopTest();

		System.assert(successResponses.returns[0].SAP_TYPE == 'S', 'Salesforce did not properly parse sample success JSON');
		System.assert(failedResponses.returns[0].SAP_TYPE == 'S', 'Salesforce did not properly parse sample failed JSON');
	}

	@isTest
	static void outputJsonStructures()
	{
		SAPCreateQuoteBso.SAPCreateQuotePayload cqp = new SAPCreateQuoteBso.SAPCreateQuotePayload();

		SAPCreateQuoteBso.SAPQuoteRequest qr = new SAPCreateQuoteBso.SAPQuoteRequest();		

		SAPCreateQuoteBso.SAPQuotationPartner qp = new SAPCreateQuoteBso.SAPQuotationPartner();

		SAPCreateQuoteBso.SAPQuotationItemInx qiix = new SAPCreateQuoteBso.SAPQuotationItemInx();
		SAPCreateQuoteBso.SAPQuotationItemIn qii = new SAPCreateQuoteBso.SAPQuotationItemIn();

		SAPCreateQuoteBso.SAPQuotationScheduleInx qsix = new SAPCreateQuoteBso.SAPQuotationScheduleInx();
		SAPCreateQuoteBso.SAPQuotationScheduleIn qsi = new SAPCreateQuoteBso.SAPQuotationScheduleIn();
			qsi.REQ_QTY = 0.0;

		SAPCreateQuoteBso.SAPQuotationConditionInx qcix = new SAPCreateQuoteBso.SAPQuotationConditionInx();
		SAPCreateQuoteBso.SAPQuotationConditionIn qci = new SAPCreateQuoteBso.SAPQuotationConditionIn();
			qci.COND_VALUE = 0.0;

		qr.QUOTATION_PARTNERS = new List<SAPCreateQuoteBso.SAPQuotationPartner>{qp};
		qr.QUOTATION_HEADER_INX = new SAPCreateQuoteBso.SAPQuotationHeaderInx();

		SAPCreateQuoteBso.SAPQuotationHeaderIn hi = new SAPCreateQuoteBso.SAPQuotationHeaderIn();
			hi.REQ_DATE_H = Date.today();
			hi.QT_VALID_F = Date.today();
			hi.QT_VALID_T = Date.today();

		qr.QUOTATION_HEADER_IN = hi;
		qr.QUOTATION_ITEMS_INX = new List<SAPCreateQuoteBso.SAPQuotationItemInx>{qiix};
		qr.QUOTATION_ITEMS_IN = new List<SAPCreateQuoteBso.SAPQuotationItemIn>{qii};
		qr.QUOTATION_SCHEDULES_INX = new List<SAPCreateQuoteBso.SAPQuotationScheduleInx>{qsix};
		qr.QUOTATION_SCHEDULES_IN = new List<SAPCreateQuoteBso.SAPQuotationScheduleIn>{qsi};
		qr.QUOTATION_CONDITIONS_INX = new List<SAPCreateQuoteBso.SAPQuotationConditionInx>{qcix};
		qr.QUOTATION_CONDITIONS_IN = new List<SAPCreateQuoteBso.SAPQuotationConditionIn>{qci};

		cqp.quoteRequests = new List<SAPCreateQuoteBso.SAPQuoteRequest>{qr};

		SAPCreateQuoteBso.SAPResponses cqr = new SAPCreateQuoteBso.SAPResponses();		

		SAPCreateQuoteBso.SAPReturn qsr = new SAPCreateQuoteBso.SAPReturn();

		cqr.returns = new List<SAPCreateQuoteBso.SAPReturn>{qsr};
		cqr.quoteRequests = new List<SAPCreateQuoteBso.SAPQuoteRequest>{qr};

		Utils.logContents('SAPCreateQuotePayload', JSON.serialize(cqp));
		Utils.logContents('SAPResponses', JSON.serialize(cqr));
	}

	@isTest
	static void testCreateSapCreateQuoteLinesPayload() {
		Integer startingSapQuoteNumber = 10000;

		setup();
		testData.setupLinesScenario1(startingSapQuoteNumber);
		SBQQ__Quote__c testQuote = testData.quotes.values()[0];

		Test.startTest();

		SAPCreateQuoteBso.SAPCreateQuotePayload testPayloadResult = SAPCreateQuoteBso.createSapCreateQuoteLinesPayload(String.valueOf(startingSapQuoteNumber), testData.quoteLinesPayload);

		Test.stopTest();

		SAPCreateQuoteBso.SAPQuoteRequest testRequest = testPayloadResult.quoteRequests[0];

		Integer expectedLinesCount = 2;
		Integer expectedPricingConditionsCount = 0;
		String expectedItem0 = '10'.leftPad(6,'0');
		String expectedItem1 = '20'.leftPad(6,'0');
		String expectedMaterial0 = '1276000'.leftPad(18,'0');
		String expectedMaterial1 = 'NP12V155FS';
		Integer expectedQty0 = 1;
		Integer expectedQty1 = 2;

		System.assert(testRequest.QUOTATION_ITEMS_INX.size() == expectedLinesCount, 'The createSapCreateQuoteLinesPayload method returned an incorrect number of SAPQuotationItemInx nodes');
		System.assert(testRequest.QUOTATION_ITEMS_INX[0].ITM_NUMBER == expectedItem0, 'The createSapCreateQuoteLinesPayload method an incorrect ITM_NUMBER in ItemInx line 0');
		System.assert(testRequest.QUOTATION_ITEMS_INX[1].ITM_NUMBER == expectedItem1, 'The createSapCreateQuoteLinesPayload method an incorrect ITM_NUMBER in ItemInx line 1');

		System.assert(testRequest.QUOTATION_ITEMS_IN.size() == expectedLinesCount, 'The createSapCreateQuoteLinesPayload method returned an incorrect number of SAPQuotationItemIn nodes');
		System.assert(testRequest.QUOTATION_ITEMS_IN[0].ITM_NUMBER == expectedItem0, 'The createSapCreateQuoteLinesPayload method an incorrect ITM_NUMBER in ItemIn line 0');
		System.assert(testRequest.QUOTATION_ITEMS_IN[1].ITM_NUMBER == expectedItem1, 'The createSapCreateQuoteLinesPayload method an incorrect ITM_NUMBER in ItemIn line 1');
		System.assert(testRequest.QUOTATION_ITEMS_IN[0].MATERIAL == expectedMaterial0, 'The createSapCreateQuoteLinesPayload method an incorrect MATERIAL in ItemIn line 0');
		System.assert(testRequest.QUOTATION_ITEMS_IN[1].MATERIAL == expectedMaterial1, 'The createSapCreateQuoteLinesPayload method an incorrect MATERIAL in ItemIn line 1');

		System.assert(testRequest.QUOTATION_SCHEDULES_INX.size() == expectedLinesCount, 'The createSapCreateQuoteLinesPayload method returned an incorrect number of SAPQuotationScheduleInx nodes');
		System.assert(testRequest.QUOTATION_SCHEDULES_INX[0].ITM_NUMBER == expectedItem0, 'The createSapCreateQuoteLinesPayload method an incorrect ITM_NUMBER in ScheduleInx line 0');
		System.assert(testRequest.QUOTATION_SCHEDULES_INX[1].ITM_NUMBER == expectedItem1, 'The createSapCreateQuoteLinesPayload method an incorrect ITM_NUMBER in ScheduleInx line 1');

		System.assert(testRequest.QUOTATION_SCHEDULES_IN.size() == expectedLinesCount, 'The createSapCreateQuoteLinesPayload method returned an incorrect number of SAPQuotationScheduleIn nodes');
		System.assert(testRequest.QUOTATION_SCHEDULES_IN[0].ITM_NUMBER == expectedItem0, 'The createSapCreateQuoteLinesPayload method an incorrect ITM_NUMBER in ScheduleIn line 0');
		System.assert(testRequest.QUOTATION_SCHEDULES_IN[1].ITM_NUMBER == expectedItem1, 'The createSapCreateQuoteLinesPayload method an incorrect ITM_NUMBER in ScheduleIn line 1');
		System.assert(testRequest.QUOTATION_SCHEDULES_IN[0].REQ_QTY == expectedQty0, 'The createSapCreateQuoteLinesPayload method an incorrect REQ_QTY in ScheduleIn line 0');
		System.assert(testRequest.QUOTATION_SCHEDULES_IN[1].REQ_QTY == expectedQty1, 'The createSapCreateQuoteLinesPayload method an incorrect REQ_QTY in ScheduleIn line 1');

		System.assert(testRequest.QUOTATION_CONDITIONS_INX.size() == expectedPricingConditionsCount, 'The createSapCreateQuoteLinesPayload method returned an incorrect number of SAPQuotationConditionInx nodes');
		System.assert(testRequest.QUOTATION_CONDITIONS_IN.size() == expectedPricingConditionsCount, 'The createSapCreateQuoteLinesPayload method returned an incorrect number of SAPQuotationConditionIn nodes');

	}

	@isTest
	static void testSAPCreateQuoteLinesSuccess()
	{
		Integer startingSapQuoteNumber = 10000;

		setup();
		testData.setupLinesScenario1(startingSapQuoteNumber);
		SBQQ__Quote__c testQuote = testData.quotes.values()[0];

		Test.setMock(HttpCalloutMock.class, SAPCreateQuoteTestHttpCalloutMock.getStaticResourceMock_Ok());

		Test.startTest();

		SAPCreateQuoteBso.insertQuoteLinesIntoSap(new Map<Id, SBQQ__Quote__c>{testQuote.Id=>testQuote}, testData.quoteLinesPayload);

		Test.stopTest();

		List<SBQQ__Quote__c> updatedQuotes = [Select SAP_Sync_Last_Result__c, SAP_Sync_Last_Message__c From SBQQ__Quote__c Where Id = :testQuote.Id];

		// Need an assert to check the outgoing payload content
		Utils.logContents('updatedQuotes[0].SAP_Sync_Last_Result__c', updatedQuotes[0].SAP_Sync_Last_Result__c);
		Utils.logContents('updatedQuotes[0].SAP_Sync_Last_Message__c', updatedQuotes[0].SAP_Sync_Last_Message__c);

		System.assert(updatedQuotes[0].SAP_Sync_Last_Result__c==SAPCreateQuoteBso.SAP_RESULT_SUCCESS, 'The Quote Trigger did not properly update SAP_Sync_Last_Result__c for successful Quote Line sync');
	}

	@isTest
	static void testConfiguratorApiToSapQuoteLinesEndToEnd() {
		setup();
		testData.setupLinesScenario2('psr', 10000);
        ConfiguratorWSBso bso = new ConfiguratorWSBso();
        bso.stdPricebookId = Test.getStandardPricebookId();

		Test.setMock(HttpCalloutMock.class, SAPCreateQuoteTestHttpCalloutMock.getStaticResourceMock_Ok());

		Test.startTest();

        bso.saveConfigurations(testData.payload);

		Test.stopTest();

		List<SBQQ__Quote__c> updatedQuotes = [Select SAP_Sync_Last_Message__c From SBQQ__Quote__c Where Id = :testData.quotes.values()[0].Id];

		System.assert(updatedQuotes[0].SAP_Sync_Last_Message__c!=null, 'The Quote Trigger was not able to update Quote.SAP_Sync_Last_Message__c for success scenario');

	}

}