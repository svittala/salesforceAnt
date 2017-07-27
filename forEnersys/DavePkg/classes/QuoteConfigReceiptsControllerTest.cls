@isTest
private class QuoteConfigReceiptsControllerTest
{
	static ConfiguratorWSTestDataFactory testData;

	static void setup() {
		testData = new ConfiguratorWSTestDataFactory();

	}

	@isTest
	static void testResolveQuoteId()
	{
		setup();
		testData.setupScenario5();
		SBQQ__Quote__c testQuote = testData.quotes.values()[0];

		QuoteConfigReceiptsController c = new QuoteConfigReceiptsController();

		Test.startTest();

		Id quoteIdFromIdInput = QuoteConfigReceiptsController.apexResolveQuoteId(null, testQuote.Id);
		Id quoteIdFromNumberInput = QuoteConfigReceiptsController.apexResolveQuoteId(testQuote.Name, null);

		Test.stopTest();

		Id expectedQuoteId = testQuote.Id;

		System.assert(quoteIdFromIdInput==expectedQuoteId, 'Did not resolve Quote Id correctly from Quote Id input');
		System.assert(quoteIdFromNumberInput==expectedQuoteId, 'Did not resolve Quote Id correctly from Quote Number input');

	}

	@isTest
	static void testGetExternalConfigs()
	{
		setup();
		testData.setupScenario5();
		SBQQ__Quote__c testQuote = testData.quotes.values()[0];

		QuoteConfigReceiptsController c = new QuoteConfigReceiptsController();

		Test.startTest();

		List<QuoteConfigReceiptsController.ExternalConfigResult> externalConfigsReturnedForQuoteId = QuoteConfigReceiptsController.apexGetExternalConfigsByQuoteNumberOrQuoteId(testQuote.Name, null);
		List<QuoteConfigReceiptsController.ExternalConfigResult> externalConfigsReturnedForCurrentUser = QuoteConfigReceiptsController.apexGetExternalConfigsByQuoteNumberOrQuoteId(null, null);

		Test.stopTest();

		Integer failExternalConfigCount = 0;

		System.assert(externalConfigsReturnedForQuoteId.size() > failExternalConfigCount, 'Did not return External Config records for the Quote as expected');
		System.assert(externalConfigsReturnedForCurrentUser.size() > failExternalConfigCount, 'Did not return External Config records for the Current User as expected');

	}

}