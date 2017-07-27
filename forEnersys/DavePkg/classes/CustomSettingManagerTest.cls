@isTest
private class CustomSettingManagerTest
{
	static ConfiguratorWSTestDataFactory testData;
	static OpportunityTriggerTestDataFactory testDataOpp;

	static void setup() {
		testData = new ConfiguratorWSTestDataFactory();
	}

	static void setupOpp() {
		testDataOpp = new OpportunityTriggerTestDataFactory();
	}

	@isTest
	static void testConfiguratorAPISettingsValid()
	{
		setup();
		CustomSettingManager.verifyCustomSettings();
		Configurator_API_Settings__c settings = Configurator_API_Settings__c.getOrgDefaults();
		System.debug(LoggingLevel.INFO, 'settings.Dummy_Part_Number_Default__c: ' + settings.Dummy_Part_Number_Default__c);
		System.assert(settings.Dummy_Part_Number_Default__c!=null, 'Configurator API custom settings do not load properly');

	}

	@isTest
	static void testConfiguratorAPISettingsMissing()
	{
		setup();
		Configurator_API_Settings__c settings = Configurator_API_Settings__c.getOrgDefaults();
		Database.delete(settings);

		String expectedError = '';

		Try {
			CustomSettingManager.verifyCustomSettings();

		} Catch(Exception e) {
			expectedError = e.getMessage();

		}

		System.assert(!String.isBlank(expectedError), 'Error for missing Configurator API custom settings was not thrown as expected');

	}

	@isTest
	static void testOpportunityTriggerSettingsValid()
	{
		setupOpp();
		CustomSettingManager.verifyOpportunityTriggerSettings();
		Opportunity_Trigger_Settings__c settings = Opportunity_Trigger_Settings__c.getOrgDefaults();
		System.debug(LoggingLevel.INFO, 'settings.Dup_Threshold_Percent__c: ' + settings.Dup_Threshold_Percent__c);
		System.assert(settings.Dup_Threshold_Percent__c!=null, 'Opportunity Trigger custom settings do not load properly');

	}

	@isTest
	static void testOpportunityTriggerSettingsMissing()
	{
		setupOpp();
		Opportunity_Trigger_Settings__c settings = Opportunity_Trigger_Settings__c.getOrgDefaults();
		Database.delete(settings);

		String expectedError = '';

		Try {
			CustomSettingManager.verifyOpportunityTriggerSettings();

		} Catch(Exception e) {
			expectedError = e.getMessage();

		}

		System.assert(!String.isBlank(expectedError), 'Error for missing Opportunity Trigger settings was not thrown as expected');

	}

	@isTest
	static void testLoadIntegrationSettings()
	{
		CustomSettingManager.fillIntegrationSettingsWithDefaults();
		Map<String,Integration_Settings__c> settings = CustomSettingManager.fetchIntegrationSettingsMapByName();

		Utils.logContents('settings', String.valueOf(settings));
		System.assert(settings.size() > 0, 'No Integration Settings were found');

	}

	@isTest
	static void testLoadIntegrationEnvironmentSpecificSettings()
	{
		CustomSettingManager.fillIntegrationEnvironmentSpecificSettingsWithDefaults();
		Map<String,Integration_Settings__c> settings = CustomSettingManager.fetchIntegrationEnvironmentSpecificSettingsMapByType();

		Utils.logContents('settings', String.valueOf(settings));
		System.assert(settings.size() > 0, 'No Integration Environment Settings were found');

	}

	@isTest
	static void testIntegrationSettingsMissing()
	{
		String expectedError = '';

		Try {
			CustomSettingManager.fetchIntegrationSettingsMapByName();

		} Catch(Exception e) {
			expectedError = e.getMessage();

		}

		Utils.logContents('expectedError', expectedError);
		System.assert(!String.isBlank(expectedError), 'Error for missing Integration Settings was not thrown as expected');

	}

	@isTest
	static void testIntegrationEnvironmentSettingsMissing()
	{
		String expectedError = '';

		Try {
			CustomSettingManager.fetchIntegrationEnvironmentSpecificSettingsMapByType();

		} Catch(Exception e) {
			expectedError = e.getMessage();

		}

		Utils.logContents('expectedError', expectedError);
		System.assert(!String.isBlank(expectedError), 'Error for missing Integration Environment Settings was not thrown as expected');

	}

}