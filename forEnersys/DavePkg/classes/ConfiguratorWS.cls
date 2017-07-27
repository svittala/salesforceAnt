@RestResource(urlMapping='/QuoteConnector')
global class ConfiguratorWS {

	public static final Set<String> VALID_EXTERNAL_CONFIGURATOR_NAMES = new Set<String>(); 
	public static final Set<String> EXTERNAL_CONFIGURATORS_WITH_UNGROUPED_ITEMS = new Set<String> { 'sap' };	// support for selectors that will not use grouping
	
	static{
		VALID_EXTERNAL_CONFIGURATOR_NAMES.add('oemspec');
		VALID_EXTERNAL_CONFIGURATOR_NAMES.add('core');
		VALID_EXTERNAL_CONFIGURATOR_NAMES.add('bsp');
		VALID_EXTERNAL_CONFIGURATOR_NAMES.add('psr');
		VALID_EXTERNAL_CONFIGURATOR_NAMES.add('sap');
	}

	public ConfiguratorWS() {}

	// Lukasz 06/29/17 - confirmed with Art that this section is not used, all communcation is done via WS Reqest API
	@HttpPost
	global static String saveConfigurations(QuoteConnectorPayload qcp) {
		ConfiguratorWSBso bso = new ConfiguratorWSBso();

		return bso.saveConfigurations(qcp);
	}

	global class QuoteConnectorPayload {
		public List<QuoteConfig> quoteConfigs { get; set; }

		public QuoteConnectorPayload() {}
	}

	global class QuoteConfig {
		public Id wsRequestId { get; set; }
		public String configuratorName { get; set; }
		public String externalConfigId { get; set; }
		public String sfQuoteNumber { get; set; }
		public String configSelections { get; set; }
		public List<QuoteLineItem> lineItems { get; set; }
		public OEMSpecTruckSpecs truckSpecs { get; set; }
		
		// SAP related
		public List<PricingCondition> sapConditions { get; set; }

		public QuoteConfig() {}
	}

	global class QuoteLineItem {
		public String partNumber { get; set; }
		public Decimal quantity { get; set; }
		public Decimal specialPrice { get; set; }
		public String itemType { get; set; }
		public String itemNotes { get; set; }
		public String technicalSpecId { get; set; }
		public String batteryTypeSelected { get; set; }
		public String batteryAHSelected { get; set; }
		public String batteryKWHSelected { get; set; }
		public String chargerVacSelected { get; set; }
		public String chargerVoltageSelected { get; set; }
		public String chargerMaxAHSelected { get; set; }
		public String chargerInputACAmpsSelected { get; set; }
		public String chargerOutputDCAmpsSelected { get; set; }
		public Boolean confirmationRequired { get; set; }
		public Boolean approvalRequired { get; set; }
		
		// SAP related
		public Integer itemNo { get; set; }
		public String itemDescription { get; set; } 
		public String priceUnit { get; set; }
		public Map<String, String> configurationJSON { get; set; } // configuration options
		public List<PricingCondition> sapConditions { get; set; }

		public QuoteLineItem() {}
	}

	global class OEMSpecTruckSpecs {
		public String manufacturer { get; set; }
		public String modelOrClass { get; set; }
		public String typeAndCover { get; set; }
		public String dimensions { get; set; }
		public String connector { get; set; }
		public String voltageAndTerm { get; set; }
		public String minWeight { get; set; }
		public String notes { get; set; }

		public OEMSpecTruckSpecs() {}
	}

	global class QuoteConnectorResponse {
		public String status { get; set; }
		public String errorMessage { get; set; }
		public List<QuoteExternalConfigSaveResult> saveResults { get; set; }

		public QuoteConnectorResponse() {
			saveResults = new List<QuoteExternalConfigSaveResult>{};
		}
	}

	global class QuoteExternalConfigSaveResult {
		public Id wsRequestId { get; set; }
		public String externalConfigId { get; set; }
		public String sfQuoteNumber { get; set; }
		public Boolean saveSuccess { get; set; }
		public String sfExternalConfigId { get; set; }
		public String sfErrorMessage { get; set; }
	}
	
	public class PricingCondition {
    	public Decimal itemNumber {get;set;}
    	public String conditionTypeCode {get;set;}
    	public Decimal baseAmount {get;set;}
		public Decimal amount {get;set;}
		public String currencyCode {get;set;}
		public Decimal value {get;set;}
	}
}