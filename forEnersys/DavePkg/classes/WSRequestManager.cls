public with sharing class WSRequestManager {

	private Map<Id, ConfiguratorWS.QuoteConnectorResponse> mapWSRequestIdToTriggerLevelErrors;
	private Map<Id, ConfiguratorWS.QuoteConnectorResponse> mapWsRequestIdToResponse;
	private ConfiguratorWSBso bso;
	private ConfiguratorWS.QuoteConnectorPayload qcp;
	private ConfiguratorWS.QuoteConnectorResponse qcr;

	public WSRequestManager() {	
	}

	public void processAsCombinedRequest(Map<Id, WS_Request__c> newMap) {

		ConfiguratorWSUtils.logContents('newMap', String.valueOf(newMap));

		resetInstance();

		qcp = createCombinedPayload(newMap);

		Try{

			if (qcp!=null){
				qcr = bso.saveConfigurationsReturnObject(qcp);

			} else {
				qcr = bso.createWSResponse(ConfiguratorWSBso.WS_STATUS_FAILED, ConfiguratorWSBso.WS_ERROR_CANNOT_DESERIALIZE_JSON_PAYLOAD, null);

			}

		} Catch (Exception e){
			qcr = bso.createWSResponse(ConfiguratorWSBso.WS_STATUS_FAILED, ConfiguratorWSBso.WS_ERROR_SAVE_FAILED + ', ' + ConfiguratorWSUtils.combineExceptionMessages(e), null);

		}

		ConfiguratorWSUtils.logContents('Combined JSON Save Result (trigger)', String.valueOf(qcr));

		addSaveResultsToRequestResponseMap(qcr);
		addTriggerLevelErrorsToRequestResponseMap();

		if (isCallFailed(qcr)) {
			throw new ConfiguratorWSException(qcr.errorMessage + '; ' + createOrderedErrorResponse(newMap));
		}

		ConfiguratorWSDao.DaoResults daoResults = bso.updateWsRequests(createWsRequestsToUpdate());

	}

	private void resetInstance() {
		mapWSRequestIdToTriggerLevelErrors = new Map<Id, ConfiguratorWS.QuoteConnectorResponse>{};
		mapWsRequestIdToResponse = new Map<Id, ConfiguratorWS.QuoteConnectorResponse>{};
		bso = new ConfiguratorWSBso();
		qcr = null;

	}

	private Boolean isCallFailed(ConfiguratorWS.QuoteConnectorResponse qcr) {
		if (qcr.status==ConfiguratorWSBso.WS_STATUS_FAILED) {
			return true;
		} else {
			return false;
		}
	}

	private ConfiguratorWS.QuoteConnectorPayload createCombinedPayload(Map<Id, WS_Request__c> newMap) {
		ConfiguratorWS.QuoteConnectorPayload qcpCombined = new ConfiguratorWS.QuoteConnectorPayload();
		qcpCombined.quoteConfigs = new List<ConfiguratorWS.QuoteConfig>{};
		ConfiguratorWS.QuoteConnectorPayload qcp = null;

		for (WS_Request__c wsRequest : newMap.values()) {
			Try {

				//ConfiguratorWSUtils.logContents('wsRequest.JSON_Payload__c', wsRequest.JSON_Payload__c.replace('""','\\"'));

				qcp = (ConfiguratorWS.QuoteConnectorPayload)JSON.deserialize(wsRequest.JSON_Payload__c, ConfiguratorWS.QuoteConnectorPayload.class);

			} Catch(Exception e) {
				ConfiguratorWSBso bso = new ConfiguratorWSBso();
				ConfiguratorWS.QuoteConnectorResponse qcr = bso.createWSResponse(ConfiguratorWSBso.WS_STATUS_FAILED, ConfiguratorWSBso.WS_ERROR_CANNOT_DESERIALIZE_JSON_PAYLOAD + '; ' + ConfiguratorWSUtils.combineExceptionMessages(e), null);
				mapWSRequestIdToTriggerLevelErrors.put(wsRequest.Id, qcr);

			}

			if (qcp!=null && qcp.quoteConfigs!=null) {

				for (ConfiguratorWS.QuoteConfig qc : qcp.quoteConfigs) {
					qc.wsRequestId = wsRequest.Id;
					qcpCombined.quoteConfigs.add(qc);

				}
			}
		}

		ConfiguratorWSUtils.logContents('Combined JSON Trigger Level Errors', String.valueOf(mapWSRequestIdToTriggerLevelErrors));
		ConfiguratorWSUtils.logContents('Combined JSON Payload (trigger)', String.valueOf(qcpCombined));
		return qcpCombined;
	}

	private void addSaveResultsToRequestResponseMap(ConfiguratorWS.QuoteConnectorResponse qcr) {
		if (qcr!=null && qcr.saveResults!=null) {
			String status = qcr.status;
			String errorMessage = qcr.errorMessage;

			for (ConfiguratorWS.QuoteExternalConfigSaveResult sr : qcr.saveResults) {
				ConfiguratorWS.QuoteConnectorResponse tempQcr = null;

				if (sr.wsRequestId!=null) {
					if (mapWsRequestIdToResponse.containsKey(sr.wsRequestId)) {
						tempQcr = mapWsRequestIdToResponse.get(sr.wsRequestId);

					} else {
						tempQcr = new ConfiguratorWS.QuoteConnectorResponse();
						tempQcr.status = status;
						tempQcr.errorMessage = errorMessage;
						tempQcr.saveResults = new List<ConfiguratorWS.QuoteExternalConfigSaveResult>{};
					
					}

					tempQcr.saveResults.add(sr);

					mapWsRequestIdToResponse.put(sr.wsRequestId, tempQcr);
				}
			}
		}
	}

	private void addTriggerLevelErrorsToRequestResponseMap() {
		for (Id wsrId : mapWSRequestIdToTriggerLevelErrors.keySet()) {
			mapWsRequestIdToResponse.put(wsrId, mapWSRequestIdToTriggerLevelErrors.get(wsrId));
		}
	}

	private List<WS_Request__c> createWsRequestsToUpdate() {
		List<WS_Request__c> wsRequestsToUpdate = new List<WS_Request__c>{};

		for (Id wsRequestId : mapWsRequestIdToResponse.keySet()) {
			wsRequestsToUpdate.add(new WS_Request__c(Id=wsRequestId, Processing_Results__c=String.valueOf(mapWsRequestIdToResponse.get(wsRequestId))));

		}

		return wsRequestsToUpdate;
	}

	private String createOrderedErrorResponse(Map<Id, WS_Request__c> newMap) {
		String errorResponse = '';

		for (WS_Request__c wsr : newMap.values()) {
			if (mapWsRequestIdToResponse.containsKey(wsr.Id)) {
				errorResponse += wsr.Name + ': ' + mapWsRequestIdToResponse.get(wsr.Id).errorMessage + '; ';
			}

		}

		return errorResponse;
	}

}