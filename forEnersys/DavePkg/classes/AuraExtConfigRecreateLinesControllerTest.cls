@isTest
private class AuraExtConfigRecreateLinesControllerTest
{
	static ConfiguratorWSTestDataFactory testData;

	static void setup() {
		testData = new ConfiguratorWSTestDataFactory();

	}

	@isTest
	static void testRecreateLineItems()
	{
		setup();
		testData.setupScenario5();
		External_Configuration__c testExtConfig = testData.externalConfigs.values()[0];
		
		Test.startTest();

		String userMessage = AuraExtConfigRecreateLinesController.apexRecreateQuoteLineItems(testExtConfig.Id);

		Test.stopTest();

		String failUserMessage = '';

		System.assert(userMessage!=failUserMessage, 'The apexRecreateQuoteLineItems method did return a response to the User');

	}
}