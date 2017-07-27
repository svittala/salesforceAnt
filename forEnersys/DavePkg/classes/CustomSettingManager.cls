global without sharing class CustomSettingManager {

	public static final String ORGANIZATION_ID_TYPE_VALUE = 'Organization Id';
	public static final String ORGANIZATION_NAME_PRODUCTION = 'production';
	public static final String EMEA_QUOTE_TRIGGER_TYPE_VALUE = 'EMEA Quote Trigger';
    public static final String EMEA_QUOTE_LINE_SYNC_TYPE_VALUE = 'EMEA Quote Line Sync';

	global static Configurator_API_Settings__c verifyCustomSettings() {
		Configurator_API_Settings__c settings = Configurator_API_Settings__c.getOrgDefaults();

		if (!String.isBlank(settings.Dummy_Part_Number_Default__c)) {
			ConfiguratorWSUtils.logContents('Configurator API Settings', String.valueOf(settings));

		} else {
			throw new CustomSettingException('Custom Setting "Configurator_API_Settings__c" not defined in Org or no record named "Default"');

		}

		return settings;
	}

	global static Opportunity_Trigger_Settings__c verifyOpportunityTriggerSettings() {
		Opportunity_Trigger_Settings__c settings = Opportunity_Trigger_Settings__c.getOrgDefaults();

		if (settings.Dup_Threshold_Percent__c != null) {
			ConfiguratorWSUtils.logContents('Opportunity Trigger Settings', String.valueOf(settings));

		} else {
			throw new CustomSettingException('Custom Setting "Opportunity_Trigger_Settings__c" not defined in Org or no record named "Default"');

		}

		return settings;
	}

	global static Map<String,Integration_Settings__c> fetchIntegrationSettingsMapByName() {
		Map<String,Integration_Settings__c> returnMap = new Map<String,Integration_Settings__c>{};

		List<Integration_Settings__c> settings = [Select Id, Name, Environment__c, Type__c, Description__c, Text_Value__c, Boolean_Value__c, Integer_Value__c, Date_Value__c From Integration_Settings__c];

		if (settings!=null && settings.size() > 0) {
			for (Integration_Settings__c i : settings) {
				if (String.isBlank(i.Environment__c)) {
					returnMap.put(i.Name, i);

				}

			}
			//Utils.logContents('Integration Settings By Name', String.valueOf(returnMap));

		} else {
			throw new CustomSettingException('Custom Setting "Integration_Settings__c" not populated in Org');

		}

		return returnMap;
	}

	global static Map<String,Integration_Settings__c> fetchIntegrationEnvironmentSpecificSettingsMapByType() {
		Map<String,Integration_Settings__c> returnMap = new Map<String,Integration_Settings__c>{};

		String environmentName = getCurrentEnvironmentName();

		List<Integration_Settings__c> settings = [Select Id, Name, Environment__c, Type__c, Description__c, Text_Value__c, Boolean_Value__c, Integer_Value__c, Date_Value__c From Integration_Settings__c];

		if (settings!=null && settings.size() > 0) {
			for (Integration_Settings__c i : settings) {
					if (!String.isBlank(i.Type__c) && !String.isBlank(i.Environment__c) && environmentName.toLowerCase()==i.Environment__c.toLowerCase()) {
						returnMap.put(i.Type__c, i);
					}

			}
			//Utils.logContents('Integration Environment-Specific Settings for current Org', String.valueOf(returnMap));

		} else {
			throw new CustomSettingException('Custom Setting "Integration_Settings__c" not populated in Org');

		}

		return returnMap;
	}

	global static String getCurrentEnvironmentName() {
		String orgName = '';

		Map<String,Integration_Settings__c> settings = fetchIntegrationSettingsOrgs();
		String targetOrgId = UserInfo.getOrganizationId().left(15);
		for (Integration_Settings__c i : settings.values()) {
			if (i.Text_Value__c!=null) {
				String thisOrgId = i.Text_Value__c.left(15);
				if (thisOrgId==targetOrgId) {
					orgName = i.Name;
				}
			}

		}

		if (String.isBlank(orgName)) {
			if(UserInfo.getUserName().substringAfterLast('.com')!=null) {
                orgName = UserInfo.getUserName().substringAfterLast('.');

            } else {
                orgName = ORGANIZATION_NAME_PRODUCTION;

			}
		}

		Utils.logContents('Current Environment Name', orgName);
		return orgName;
	}

	global static Map<String,Integration_Settings__c> fetchIntegrationSettingsOrgs() {
		Map<String,Integration_Settings__c> returnMap = new Map<String,Integration_Settings__c>{};

		List<Integration_Settings__c> settings = [Select Id, Name, Environment__c, Type__c, Description__c, Text_Value__c, Boolean_Value__c, Integer_Value__c, Date_Value__c From Integration_Settings__c Where Type__c LIKE :ORGANIZATION_ID_TYPE_VALUE];

		if (settings!=null && settings.size() > 0) {
			for (Integration_Settings__c i : settings) {
				if (String.isBlank(i.Environment__c)) {
					returnMap.put(i.Name, i);

				}

			}

		}

		return returnMap;
	}

	global static void fillCustomSettingsWithDefaults() {
		Configurator_API_Settings__c newSettings = new Configurator_API_Settings__c();

		newSettings.Name = 'Default';
		newSettings.Dummy_Part_Number_Default__c = 'Custom Comment';
		newSettings.Dummy_Part_Number_Battery__c = 'Custom Battery';
		newSettings.Dummy_Part_Number_Charger__c = 'Custom Charger';
		newSettings.Dummy_Part_Number_DisconnectSwitch__c = 'Custom Breaker';
		newSettings.Dummy_Part_Number_SpillContainment__c = 'Custom Spill';
		newSettings.Dummy_Part_Number_Optional__c = 'Custom Option';
		newSettings.Dummy_Part_Number_Accessories__c = 'Custom Accessory';
		newSettings.Dummy_Part_Number_Kit__c = 'Custom Kit';
		newSettings.Dummy_Part_Number_Cabinet__c = 'Custom Cabinet';
		newSettings.Dummy_Part_Number_Rack__c = 'Custom Rack';
		newSettings.Base_Launch_URL_BSP__c = 'http://bsp.enersys.com';
		newSettings.Base_Launch_URL_OEMSpec__c = 'https://www.powerfullsolutions.com/OEMSpecs/Default.aspx';
		newSettings.Base_Launch_URL_PSR__c = 'http://psrintegration.enersys.group';
		newSettings.Config_Receipts_Window_Hours__c = 24;
		newSettings.Config_Receipts_Max_Count__c = 10;

		Database.upsert(newSettings, Configurator_API_Settings__c.Name, true);

		Opportunity_Trigger_Settings__c newSettingsOpp = new Opportunity_Trigger_Settings__c();

		newSettingsOpp.Name = 'Default';
		newSettingsOpp.Dup_Threshold_Percent__c = 10;

		Database.upsert(newSettingsOpp, Opportunity_Trigger_Settings__c.Name, true);

		fillIntegrationSettingsWithDefaults();

		fillIntegrationEnvironmentSpecificSettingsWithDefaults();

	}

	public static void fillIntegrationSettingsWithDefaults() {
		List<Integration_Settings__c> settings = new List<Integration_Settings__c>{};
		settings.add(new Integration_Settings__c(Name='emeaart', Type__c=ORGANIZATION_ID_TYPE_VALUE, Text_Value__c='00D0v0000000S72', Description__c='For integration, to positively identify the emeaart environment'));
		settings.add(new Integration_Settings__c(Name='emeadev', Type__c=ORGANIZATION_ID_TYPE_VALUE, Text_Value__c='00D0v0000000S6J', Description__c='For integration, to positively identify the emeadev environment'));
		settings.add(new Integration_Settings__c(Name='int', Type__c=ORGANIZATION_ID_TYPE_VALUE, Text_Value__c='00D0v0000000S70', Description__c='For integration, to positively identify the int environment'));
		settings.add(new Integration_Settings__c(Name='qa', Type__c=ORGANIZATION_ID_TYPE_VALUE, Text_Value__c='00D3D0000000Rmv', Description__c='For integration, to positively identify the qa environment'));
		settings.add(new Integration_Settings__c(Name='production', Type__c=ORGANIZATION_ID_TYPE_VALUE, Text_Value__c='00D41000000fv8d', Description__c='For integration, to positively identify the production environment'));

		settings.add(new Integration_Settings__c(Name=QuoteSapSyncManager.SETTING_QUOTE_TRIGGER_ENABLED_NAME, Type__c=EMEA_QUOTE_TRIGGER_TYPE_VALUE, Boolean_Value__c=false, Description__c='Enables the Quote Trigger that calls out to SAP'));
        settings.add(new Integration_Settings__c(Name=ExtConfigQuoteLineProcessor.SETTING_QUOTE_LINE_SYNC_ENABLED_NAME, Type__c=EMEA_QUOTE_LINE_SYNC_TYPE_VALUE, Boolean_Value__c=false, Description__c='Enables Quote Lines synchronization with SAP'));

		settings.add(new Integration_Settings__c(Name=SAPCreateQuoteBso.SETTING_SAVE_RAW_SAP_RESPONSE, Type__c=EMEA_QUOTE_TRIGGER_TYPE_VALUE, Boolean_Value__c=false, Description__c='Enables saving the raw SAP response in SAP_Quote_Sync_Message__c on the Quote'));

		Database.upsert(settings, Integration_Settings__c.Name, true);
	}

	public static void fillIntegrationEnvironmentSpecificSettingsWithDefaults() {
		List<Integration_Settings__c> settings = new List<Integration_Settings__c>{};
		settings.add(new Integration_Settings__c(Name='EMEA JB Create Quote URL-emeaart', Environment__c='emeaart', Type__c=SAPCreateQuoteBso.SETTING_JITTERBIT_URL_TYPE, Text_Value__c='https://EnerSysTRIAL189156.jitterbit.net/EnerSysEMEA/Create_Quote_Dev', Description__c=SAPCreateQuoteBso.SETTING_JITTERBIT_URL_TYPE));
		settings.add(new Integration_Settings__c(Name='EMEA JB Create Quote Username-emeaart', Environment__c='emeaart', Type__c=SAPCreateQuoteBso.SETTING_JITTERBIT_USERNAME_TYPE, Text_Value__c='(real username not needed for test code)', Description__c=SAPCreateQuoteBso.SETTING_JITTERBIT_USERNAME_TYPE));
		settings.add(new Integration_Settings__c(Name='EMEA JB Create Quote Password-emeaart', Environment__c='emeaart', Type__c=SAPCreateQuoteBso.SETTING_JITTERBIT_PASSWORD_TYPE, Text_Value__c='(real password not needed for test code)', Description__c=SAPCreateQuoteBso.SETTING_JITTERBIT_PASSWORD_TYPE));

		settings.add(new Integration_Settings__c(Name='EMEA JB Create Quote URL-art2', Environment__c='art2', Type__c=SAPCreateQuoteBso.SETTING_JITTERBIT_URL_TYPE, Text_Value__c='https://EnerSysTRIAL189156.jitterbit.net/EnerSysEMEA/Create_Quote_Dev', Description__c=SAPCreateQuoteBso.SETTING_JITTERBIT_URL_TYPE));
		settings.add(new Integration_Settings__c(Name='EMEA JB Create Quote Username-art2', Environment__c='art2', Type__c=SAPCreateQuoteBso.SETTING_JITTERBIT_USERNAME_TYPE, Text_Value__c='(real username not needed for test code)', Description__c=SAPCreateQuoteBso.SETTING_JITTERBIT_USERNAME_TYPE));
		settings.add(new Integration_Settings__c(Name='EMEA JB Create Quote Password-art2', Environment__c='art2', Type__c=SAPCreateQuoteBso.SETTING_JITTERBIT_PASSWORD_TYPE, Text_Value__c='(real password not needed for test code)', Description__c=SAPCreateQuoteBso.SETTING_JITTERBIT_PASSWORD_TYPE));

		settings.add(new Integration_Settings__c(Name='EMEA JB Create Quote URL-emeadev', Environment__c='emeadev', Type__c=SAPCreateQuoteBso.SETTING_JITTERBIT_URL_TYPE, Text_Value__c='https://EnerSysTRIAL189156.jitterbit.net/EnerSysEMEA/Create_Quote_Dev', Description__c=SAPCreateQuoteBso.SETTING_JITTERBIT_URL_TYPE));
		settings.add(new Integration_Settings__c(Name='EMEA JB Create Quote Username-emeadev', Environment__c='emeadev', Type__c=SAPCreateQuoteBso.SETTING_JITTERBIT_USERNAME_TYPE, Text_Value__c='(real username not needed for test code)', Description__c=SAPCreateQuoteBso.SETTING_JITTERBIT_USERNAME_TYPE));
		settings.add(new Integration_Settings__c(Name='EMEA JB Create Quote Password-emeadev', Environment__c='emeadev', Type__c=SAPCreateQuoteBso.SETTING_JITTERBIT_PASSWORD_TYPE, Text_Value__c='(real password not needed for test code)', Description__c=SAPCreateQuoteBso.SETTING_JITTERBIT_PASSWORD_TYPE));

		settings.add(new Integration_Settings__c(Name='EMEA JB Create Quote URL-int', Environment__c='int', Type__c=SAPCreateQuoteBso.SETTING_JITTERBIT_URL_TYPE, Text_Value__c='https://EnerSysTRIAL189156.jitterbit.net/EnerSysEMEA/Create_Quote_Dev', Description__c=SAPCreateQuoteBso.SETTING_JITTERBIT_URL_TYPE));
		settings.add(new Integration_Settings__c(Name='EMEA JB Create Quote Username-int', Environment__c='int', Type__c=SAPCreateQuoteBso.SETTING_JITTERBIT_USERNAME_TYPE, Text_Value__c='(real username not needed for test code)', Description__c=SAPCreateQuoteBso.SETTING_JITTERBIT_USERNAME_TYPE));
		settings.add(new Integration_Settings__c(Name='EMEA JB Create Quote Password-int', Environment__c='int', Type__c=SAPCreateQuoteBso.SETTING_JITTERBIT_PASSWORD_TYPE, Text_Value__c='(real password not needed for test code)', Description__c=SAPCreateQuoteBso.SETTING_JITTERBIT_PASSWORD_TYPE));

		settings.add(new Integration_Settings__c(Name='EMEA JB Create Quote URL-qa', Environment__c='qa', Type__c=SAPCreateQuoteBso.SETTING_JITTERBIT_URL_TYPE, Text_Value__c='https://EnerSysTRIAL189156.jitterbit.net/EnerSysEMEA/Create_Quote_Dev', Description__c=SAPCreateQuoteBso.SETTING_JITTERBIT_URL_TYPE));
		settings.add(new Integration_Settings__c(Name='EMEA JB Create Quote Username-qa', Environment__c='qa', Type__c=SAPCreateQuoteBso.SETTING_JITTERBIT_USERNAME_TYPE, Text_Value__c='(real username not needed for test code)', Description__c=SAPCreateQuoteBso.SETTING_JITTERBIT_USERNAME_TYPE));
		settings.add(new Integration_Settings__c(Name='EMEA JB Create Quote Password-qa', Environment__c='qa', Type__c=SAPCreateQuoteBso.SETTING_JITTERBIT_PASSWORD_TYPE, Text_Value__c='(real password not needed for test code)', Description__c=SAPCreateQuoteBso.SETTING_JITTERBIT_PASSWORD_TYPE));

		settings.add(new Integration_Settings__c(Name='EMEA JB Create Quote URL-prod', Environment__c='production', Type__c=SAPCreateQuoteBso.SETTING_JITTERBIT_URL_TYPE, Text_Value__c='https://EnerSysTRIAL189156.jitterbit.net/EnerSysEMEA/Create_Quote_Dev', Description__c=SAPCreateQuoteBso.SETTING_JITTERBIT_URL_TYPE));
		settings.add(new Integration_Settings__c(Name='EMEA JB Create Quote Username-prod', Environment__c='production', Type__c=SAPCreateQuoteBso.SETTING_JITTERBIT_USERNAME_TYPE, Text_Value__c='(real username not needed for test code)', Description__c=SAPCreateQuoteBso.SETTING_JITTERBIT_USERNAME_TYPE));
		settings.add(new Integration_Settings__c(Name='EMEA JB Create Quote Password-prod', Environment__c='production', Type__c=SAPCreateQuoteBso.SETTING_JITTERBIT_PASSWORD_TYPE, Text_Value__c='(real password not needed for test code)', Description__c=SAPCreateQuoteBso.SETTING_JITTERBIT_PASSWORD_TYPE));

		Database.upsert(settings, Integration_Settings__c.Name, true);
	}

	global class CustomSettingException extends Exception {
	}
}