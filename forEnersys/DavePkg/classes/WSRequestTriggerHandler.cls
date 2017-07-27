public with sharing class WSRequestTriggerHandler {

	public static void processAfterInsert(Map<Id, WS_Request__c> newMap) {
		WSRequestManager wrm = new WSRequestManager();
		wrm.processAsCombinedRequest(newMap);

	}

}