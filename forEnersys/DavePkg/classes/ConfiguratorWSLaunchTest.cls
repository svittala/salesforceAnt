@isTest
private class ConfiguratorWSLaunchTest
{
	static ConfiguratorWSTestDataFactory testData;

	static void setup() {
		testData = new ConfiguratorWSTestDataFactory();

	}

	@isTest
	static void testConfiguratorWSLaunchBSP()
	{
		setup();
		testData.setupScenario2('BSP');
		SBQQ__Quote__c testQuote = testData.quotes.values()[0];

		Test.startTest();

		ApexPages.StandardController sc = new ApexPages.StandardController(testQuote);
		ConfiguratorWSLaunchBSPController c = new ConfiguratorWSLaunchBSPController(sc);

		Test.stopTest();

		String expectedQuoteName = testQuote.Name;
		String expectedUserEmail = UserInfo.getUserEmail();

		System.assert(c.quote.Name==expectedQuoteName, 'The ConfiguratorWSLaunchBSPController did not obtain the Quote Name properly');
		System.assert(c.user.Email==expectedUserEmail, 'The ConfiguratorWSLaunchBSPController did not obtain the SF Users email address properly');
		System.assert(c.launchUrl!=null, 'The ConfiguratorWSLaunchBSPController did not create a launchUrl');

	}

	@isTest
	static void testConfiguratorWSLaunchOEMSpec()
	{
		setup();
		testData.setupScenario2('OEMSpec');
		SBQQ__Quote__c testQuote = testData.quotes.values()[0];

		Test.startTest();

		ApexPages.StandardController sc = new ApexPages.StandardController(testQuote);
		ConfiguratorWSLaunchOEMSpecController c = new ConfiguratorWSLaunchOEMSpecController(sc);

		Test.stopTest();

		String expectedQuoteName = testQuote.Name;
		String expectedUserEmail = UserInfo.getUserEmail();

		System.assert(c.quote.Name==expectedQuoteName, 'The ConfiguratorWSLaunchOEMSpecController did not obtain the Quote Name properly');
		System.assert(c.user.Email==expectedUserEmail, 'The ConfiguratorWSLaunchOEMSpecController did not obtain the SF Users email address properly');
		System.assert(c.launchUrl!=null, 'The ConfiguratorWSLaunchOEMSpecController did not create a launchUrl');
	}
	
	@isTest
	static void testConfiguratorWSLaunchPSR()
	{
		setup();
		testData.setupScenario2('PSR');
		SBQQ__Quote__c testQuote = testData.quotes.values()[0];

		Test.startTest();

		ApexPages.StandardController sc = new ApexPages.StandardController(testQuote);
		ConfiguratorWSLaunchPSRController c = new ConfiguratorWSLaunchPSRController(sc);

		Test.stopTest();

		String expectedQuoteName = testQuote.Name;
		String expectedUserEmail = UserInfo.getUserEmail();

		System.assert(c.quote.Name==expectedQuoteName, 'The ConfiguratorWSLaunchPSRController did not obtain the Quote Name properly');
		System.assert(c.user.Email==expectedUserEmail, 'The ConfiguratorWSLaunchPSRController did not obtain the SF Users email address properly');
		System.assert(c.launchUrl!=null, 'The ConfiguratorWSLaunchPSRController did not create a launchUrl');
	}
}