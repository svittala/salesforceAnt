@isTest
private class QATestDataFactoryEMEATest
{
	@isTest
	static void testQATestDataFactoryEMEA()
	{
		CustomSettingManager.fillCustomSettingsWithDefaults();
		QATestDataFactoryEMEA f = new QATestDataFactoryEMEA();
		f.resetTestDataSetStdPricebook(Test.getStandardPricebookId());
	}
}