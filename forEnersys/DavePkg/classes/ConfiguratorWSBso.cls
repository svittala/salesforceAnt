public without sharing class ConfiguratorWSBso {
	
	public static final String WS_STATUS_PROCESSED = 'Processed';
	public static final String WS_STATUS_MIXED = 'Partial Failure';
	public static final String WS_STATUS_FAILED = 'Failed';
	public static final String WS_ERROR_SAVE_FAILED = 'Error: Save Failed';
	public static final String WS_ERROR_INVALID_PAYLOAD = 'Error: Invalid Webservice payload';
	public static final String WS_ERROR_NO_CONFIGS = 'Error: Unable to parse JSON for individual Quote Configurations';
	public static final String WS_ERROR_CANNOT_DESERIALIZE_JSON_PAYLOAD = 'Error: Unable to parse JSON payload';
	public static final String CONFIG_ERROR_INVALID_CONFIGURATOR_NAME = 'Error: Invalid configuratorName';

	private ConfiguratorWSDao dao;

	@TestVisible private ConfiguratorWS.QuoteConnectorPayload qcp;
	@TestVisible private List<ConfiguratorWS.QuoteConfig> quoteConfigsRaw;
	@TestVisible private List<ConfiguratorWS.QuoteConfig> quoteConfigsValid;
	@TestVisible private ConfiguratorWS.QuoteConnectorResponse qcr;
	@TestVisible private Map<Id, SBQQ__Quote__c> mapQuotes;
	@TestVisible private List<External_Configuration__c> sfExtConfigObjects;
	@TestVisible private Id stdPricebookId;
	@TestVisible private List<ConfiguratorWS.QuoteExternalConfigSaveResult> precheckResults;

	public ConfiguratorWSBso() {
		dao = new ConfiguratorWSDao();
		Map<Id, Pricebook2> mapStdPricebook = dao.fetchStdPricebook();
		if (mapStdPricebook.keySet().size() > 0) {
			for (Id pbId : mapStdPricebook.keySet()) {
				stdPricebookId = pbId;
			}
		}
	}

	public String saveConfigurations(ConfiguratorWS.QuoteConnectorPayload qcpRaw) {
		return JSON.serializePretty(saveConfigurationsReturnObject(qcpRaw));

	}

	public ConfiguratorWS.QuoteConnectorResponse saveConfigurationsReturnObject(ConfiguratorWS.QuoteConnectorPayload qcpRaw) {
		qcr = null;

		String payloadValidationErrorMsg = validatePayload(qcpRaw);

		if (payloadValidationErrorMsg!='') {
			qcr = createWSResponse(WS_STATUS_FAILED, payloadValidationErrorMsg, null);

		} else {
			ConfiguratorWSUtils.logContents('QuoteConnectorPayload', String.valueOf(qcpRaw));

			this.qcp = qcpRaw;

			Try {
				qcr = processQuoteConfigs();

			} Catch(Exception e){
				qcr = createWSResponse(WS_STATUS_FAILED, WS_ERROR_SAVE_FAILED + ', ' + ConfiguratorWSUtils.combineExceptionMessages(e), null);

			}

		}


		return qcr;
	}

	private String validatePayload(ConfiguratorWS.QuoteConnectorPayload qcpRaw) {
		String returnErrorMsgs = '';
		if (qcpRaw==null) {
			returnErrorMsgs = WS_ERROR_INVALID_PAYLOAD;

		} else {
			if(qcpRaw.quoteConfigs==null || qcpRaw.quoteConfigs.size()==0) {
				returnErrorMsgs = WS_ERROR_NO_CONFIGS;

			}

		}

		System.debug('*** payloadValidationErrorMsg: ' + returnErrorMsgs);
		return returnErrorMsgs;
	}

	public ConfiguratorWS.QuoteConnectorResponse createWSResponse(String status, String errorMessage, List<ConfiguratorWS.QuoteExternalConfigSaveResult> saveResults) {
		ConfiguratorWS.QuoteConnectorResponse qcr = new ConfiguratorWS.QuoteConnectorResponse();
		qcr.status = status;
		qcr.errorMessage = errorMessage;
		qcr.saveResults = saveResults;
		return qcr;
	}

	private ConfiguratorWS.QuoteConnectorResponse processQuoteConfigs() {
		ConfiguratorWS.QuoteConnectorResponse qcr = new ConfiguratorWS.QuoteConnectorResponse();

		quoteConfigsValid = precheckQuoteConfigs(qcp.quoteConfigs);

		if (quoteConfigsValid.size() > 0) {
			createQuoteMap();

			Map<String, Id> mapQuoteNumberToId = createMapQuoteNumberToId(mapQuotes.values());

			sfExtConfigObjects = createSfExtConfigObjects(mapQuoteNumberToId);

			ConfiguratorWSDao.DaoResults daoExtConfigResults = dao.upsertExternalConfigurations(sfExtConfigObjects);

			qcr = createWSResponseFromDaoResults(daoExtConfigResults);

			ExtConfigQuoteLineProcessor.processConfigurationQuoteLines(stdPricebookId, createSetSavedExternalConfigIds(daoExtConfigResults.upsertResults));
			//ExtConfigQuoteLineProcessor.processAsyncConfigurationQuoteLines(stdPricebookId, createSetSavedExternalConfigIds(daoExtConfigResults.upsertResults));

		} else {
			qcr = createWSResponse(WS_STATUS_FAILED, WS_ERROR_NO_CONFIGS, precheckResults);

		}

		return qcr;

	}

	private List<ConfiguratorWS.QuoteConfig> precheckQuoteConfigs(List<ConfiguratorWS.QuoteConfig> quoteConfigsRaw) {
		List<ConfiguratorWS.QuoteConfig> returnList = new List<ConfiguratorWS.QuoteConfig>{};
		precheckResults = new List<ConfiguratorWS.QuoteExternalConfigSaveResult>{};
		Integer i = 0;
		for (ConfiguratorWS.QuoteConfig qc : quoteConfigsRaw) {
			if (isValidConfiguratorName(qc.configuratorName)) {
				returnList.add(qc);
			} else {
				precheckResults.add(createSaveResultFromErrorMessage(qc, CONFIG_ERROR_INVALID_CONFIGURATOR_NAME));
			}
		}

		ConfiguratorWSUtils.logContents('QuoteConfigs that passed precheck', String.valueOf(returnList));
		return returnList;
	}

	private void createQuoteMap() {
		mapQuotes = dao.fetchQuotesByQuoteNumber(getSetQuoteNumbers());

		if (Test.isRunningTest()) {
			modifyMapQuotesForTest();
		}

	}

	private void modifyMapQuotesForTest() {
		for (Id qId : mapQuotes.keySet()) {
			SBQQ__Quote__c quote = mapQuotes.get(qId);
			quote.SBQQ__Pricebook__c = stdPricebookId;
			mapQuotes.put(qId, quote);
		}
	}

	private Set<String> getSetQuoteNumbers() {
		Set<String> quoteNumbers = new Set<String>();
		for (ConfiguratorWS.QuoteConfig qc : quoteConfigsValid) {
			if (qc.sfQuoteNumber!=null && qc.sfQuoteNumber!='') {
				quoteNumbers.add(qc.sfQuoteNumber);
			}
		}
		return quoteNumbers;
	}

	private Map<String,Id> createMapQuoteNumberToId(List<SBQQ__Quote__c> quotes) {
		Map<String, Id> returnMap = new Map<String, Id>{};
		for (SBQQ__Quote__c q : quotes) {
			returnMap.put(q.Name, q.Id);
		}
		return returnMap;
	}

	private Set<Id> createSetSavedExternalConfigIds(Database.UpsertResult[] upsertResults) {
		Set<Id> returnSet = new Set<Id>();	

		for (Integer i=0; i<upsertResults.size(); i++)  {
			if (upsertResults[i].isSuccess() && upsertResults[i].getId()!=null) {
				returnSet.add(upsertResults[i].getId());

			}
		}

		ConfiguratorWSUtils.logContents('Set of ExtConfig Ids saved', String.valueOf(returnSet));
		return returnSet;
	}

	private ConfiguratorWS.QuoteConnectorResponse createWSResponseFromDaoResults(ConfiguratorWSDao.DaoResults daoResults) {
		ConfiguratorWS.QuoteConnectorResponse qcr = new ConfiguratorWS.QuoteConnectorResponse();
		String status='';
		String errorMessage='';
		List<ConfiguratorWS.QuoteExternalConfigSaveResult> saveResults = precheckResults;

		if (daoResults.upsertResults!=null) {
			status = WS_STATUS_FAILED;
			Integer failureCount = 0;
			
			for (Database.UpsertResult ur : daoResults.upsertResults) {
				ConfiguratorWS.QuoteExternalConfigSaveResult sr = new ConfiguratorWS.QuoteExternalConfigSaveResult();
				sr.saveSuccess = ur.isSuccess();
				sr.sfExternalConfigId = ur.getId();
				if (ur.isSuccess()) {
					status = WS_STATUS_PROCESSED;
				} else {
					failureCount++;
					sr.sfErrorMessage = ConfiguratorWSUtils.combineErrorMessages(ur.getErrors());
				}
				saveResults.add(sr);

			}

			if (status==WS_STATUS_PROCESSED && failureCount > 0) {
				status=WS_STATUS_MIXED;
			}

		} else {
			status = WS_STATUS_FAILED;
			errorMessage = daoResults.dbException.getMessage();

		}

		saveResults = addRecordIdsToSaveResults(saveResults);

		qcr = createWSResponse(status, errorMessage, saveResults);

		return qcr;
	}

	private List<ConfiguratorWS.QuoteExternalConfigSaveResult> addRecordIdsToSaveResults(List<ConfiguratorWS.QuoteExternalConfigSaveResult> saveResults) {
		if (quoteConfigsValid!=null && saveResults!=null && quoteConfigsValid.size() == saveResults.size()) {
			for (Integer i=0; i<saveResults.size(); i++)  {
				saveResults[i].externalConfigId = quoteConfigsValid[i].externalConfigId;
				saveResults[i].sfQuoteNumber = quoteConfigsValid[i].sfQuoteNumber;
				saveResults[i].wsRequestId = quoteConfigsValid[i].wsRequestId;
			}

		}

		return saveResults;
	}

	private List<External_Configuration__c> createSfExtConfigObjects(Map<String, Id> mapQuoteNumberToId) {
		List<External_Configuration__c> returnList = new List<External_Configuration__c>{};
		precheckResults = new List<ConfiguratorWS.QuoteExternalConfigSaveResult>{};
		Integer i = 0;
		for (ConfiguratorWS.QuoteConfig qc : quoteConfigsValid) {
//			if (isValidConfiguratorName(qc.configuratorName)) {
				External_Configuration__c ec = new External_Configuration__c();
				ec.WS_Request__c = qc.wsRequestId;
				ec.Configurator_Name__c = qc.configuratorName;
				ec.External_Id__c = buildExternalConfigExternalId(qc.configuratorName, qc.externalConfigId, i, qc.sfQuoteNumber);
				if (mapQuoteNumberToId.containsKey(qc.sfQuoteNumber)) {
					ec.Quote__c = mapQuoteNumberToId.get(qc.sfQuoteNumber);
				}
				ec.JSON_QuoteConfig__c = JSON.serializePretty(qc);
				returnList.add(ec);
			//} else {
			//	precheckResults.add(createSaveResultFromErrorMessage(qc, CONFIG_ERROR_INVALID_CONFIGURATOR_NAME));
			//}
			i++;
		}

		ConfiguratorWSUtils.logContents('Converted QuoteConnectorPayload to List<External_Configuration__c>', String.valueOf(returnList));
		return returnList;
	}

    private Boolean isValidConfiguratorName(String configuratorName) {
        Boolean returnFlag = false;
        if (!String.isBlank(configuratorName)) {
            if (ConfiguratorWS.VALID_EXTERNAL_CONFIGURATOR_NAMES.contains(configuratorName.toLowerCase())) {
                returnFlag = true;
            }
        }
        return returnFlag;
    }

    private ConfiguratorWS.QuoteExternalConfigSaveResult createSaveResultFromErrorMessage(ConfiguratorWS.QuoteConfig qc, String errorMessage) {
    	ConfiguratorWS.QuoteExternalConfigSaveResult returnResult = new ConfiguratorWS.QuoteExternalConfigSaveResult();
    	returnResult.wsRequestId = qc.wsRequestId;
    	returnResult.sfQuoteNumber = qc.sfQuoteNumber;
    	returnResult.externalConfigId = null;
    	returnResult.saveSuccess = false;
    	returnResult.sfErrorMessage = errorMessage;
    	return returnResult;
    }

	private String buildExternalConfigExternalId(String configuratorName, String externalIdFromOutsideSystem, Integer quoteConfigNumber, String quoteNumber) {
		String returnString = null;
		if (!String.isBlank(externalIdFromOutsideSystem)) {
			returnString = externalIdFromOutsideSystem;
		} else if(configuratorName == 'sap'){
			returnString = configuratorName + '-' + quoteNumber;
		} else {
			returnString = configuratorName + '-' + Datetime.Now() + '-' + quoteConfigNumber;
		}

		return returnString;
	}

	public ConfiguratorWSDao.DaoResults updateWsRequests(List<WS_Request__c> wsRequestsToUpdate) {
		return dao.upsertWSRequestsById(wsRequestsToUpdate);

	}

}