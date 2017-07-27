public with sharing class ConfiguratorWSLaunchOEMSpecController {

	Configurator_API_Settings__c settings;

	public String isOkToRedirect {get;set;}
	public String userMessage {get;set;}
	public String launchUrl {get;set;}

	private static final String BASE_RETURN_URL = System.URL.getSalesforceBaseUrl().toExternalForm();

	@TestVisible private SBQQ__Quote__c quote {get;set;}
	@TestVisible private User user {get;set;}
	private ConfiguratorWSLaunchDao dao;

	public ConfiguratorWSLaunchOEMSpecController(ApexPages.StandardController c) {
		settings = CustomSettingManager.verifyCustomSettings();
		getDataForUrl(c.getRecord());
		isOkToRedirect=isOkToRedirect();
		userMessage = createUserMessage();
		launchUrl = createLaunchUrl();
	}

	private void getDataForUrl(SObject quoteSObj) {
		dao = new ConfiguratorWSLaunchDao();
		quote = dao.fetchQuoteData(quoteSObj.Id);
		user = dao.fetchUserData(UserInfo.getUserId());
	}

	public String isOkToRedirect() {
		if (quote!=null && quote.SBQQ__PriceBook__c!=null) {
			return 'true';
		} else {
			return 'false';
		}
	}

	private String createUserMessage() {
		String returnMessage = '';
		if (isOkToRedirect()=='true') {
			returnMessage = 'Redirecting to OEMSpec...';
		} else {
			returnMessage = 'Please set the Pricebook on the Quote before proceeding';
		}
		return returnMessage;
	}

	private String createLaunchUrl() {
		String returnUrl = BASE_RETURN_URL + '?quoteNumber=' + quote.Name;
		return String.valueOf(settings.Base_Launch_URL_OEMSpec__c) 
						+ '?user=' + EncodingUtil.urlEncode(user.Email, 'UTF-8') 
						+ '&quoteNumber=' + EncodingUtil.urlEncode(quote.Name, 'UTF-8')
						+ '&returnUrl=' + EncodingUtil.urlEncode(returnUrl, 'UTF-8');
	}

}