public with sharing class QuoteSapSyncManager {

	public static final String SETTING_QUOTE_TRIGGER_ENABLED_NAME = 'EMEA Quote Trigger Enabled';

	private Boolean triggerEnabled;
	private Boolean triggerIsInsert;
	private Boolean triggerIsUpdate;
	private Boolean triggerIsDelete;
	private Boolean triggerIsUndelete;
	private Map<Id, SBQQ__Quote__c> triggerOldMap;
	private Map<Id, SBQQ__Quote__c> triggerNewMap;
	private Map<Id, SBQQ__Quote__c> quotesForSync;

	private SapCreateQuoteBso bso;
	private static Map<String,Integration_Settings__c> settings;

	public QuoteSapSyncManager(Boolean isInsert, Boolean isUpdate, Boolean isDelete, Boolean isUndelete, Map<Id, SBQQ__Quote__c> oldMap, Map<Id, SBQQ__Quote__c> newMap) {
		settings = CustomSettingManager.fetchIntegrationSettingsMapByName();
		triggerEnabled = settings.get(SETTING_QUOTE_TRIGGER_ENABLED_NAME).Boolean_Value__c;

		triggerIsInsert = isInsert;
		triggerIsUpdate = isUpdate;
		triggerIsDelete = isDelete;
		triggerIsUndelete = isUndelete;
		triggerOldMap = oldMap;
		triggerNewMap = newMap;

	}

	public void syncToSap() {
		Map<Id, SBQQ__Quote__c> quotesForSync = new Map<Id, SBQQ__Quote__c>{};

		if (triggerEnabled && triggerNewMap.size()==1) {
			if (!System.isFuture() && !System.isBatch()) {
				if (triggerIsInsert) {
					quotesForSync = triggerNewMap;

				} else if (triggerIsUpdate) {
					quotesForSync = getChangedQuotesFromOldAndNewMaps();

				}

			}

			if (quotesForSync.size() > 0) {
				Utils.logContents('Quotes For Sync (Trigger)', String.valueOf(quotesForSync));

				SObject quoteSObj = (SObject)quotesForSync.values()[0];
				bso = new SapCreateQuoteBso();
				bso.syncQuoteHeaderToSap(quoteSObj);

			}
		}

	}

	private Map<Id, SBQQ__Quote__c> getChangedQuotesFromOldAndNewMaps() {
		Map<Id, SBQQ__Quote__c> returnMap = new Map<Id, SBQQ__Quote__c>{};
		for (Id quoteId : triggerNewMap.keySet()) {
			SBQQ__Quote__c oldQuote = triggerOldMap.get(quoteId);
			SBQQ__Quote__c newQuote = triggerNewMap.get(quoteId);
			if (
				newQuote.Currency_Code__c != oldQuote.Currency_Code__c
				|| newQuote.Customer_Requested_Date__c != oldQuote.Customer_Requested_Date__c
				|| newQuote.Incoterms__c != oldQuote.Incoterms__c
				|| newQuote.Incoterms2_Text__c != oldQuote.Incoterms2_Text__c
				|| newQuote.Payment_Terms_SAP__c != oldQuote.Payment_Terms_SAP__c
				|| newQuote.Shipping_Conditions__c != oldQuote.Shipping_Conditions__c
				|| newQuote.Valid_From__c != oldQuote.Valid_From__c
				|| newQuote.SBQQ__ExpirationDate__c != oldQuote.SBQQ__ExpirationDate__c
				// Delivery Terms have no destination on SAP Quote per Cedric
				//|| newQuote.Delivery_Terms__c != oldQuote.Delivery_Terms__c
				|| newQuote.Reference_Information_Number__c != oldQuote.Reference_Information_Number__c
				|| newQuote.Sales_Area_Data__c != oldQuote.Sales_Area_Data__c
				|| newQuote.Ship_To_Data__c != oldQuote.Ship_To_Data__c
				) {
				returnMap.put(quoteId, newQuote);

			}
		}
		return returnMap;
	}

}