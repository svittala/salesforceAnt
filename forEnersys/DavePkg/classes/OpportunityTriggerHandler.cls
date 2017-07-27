public without sharing class OpportunityTriggerHandler {

	public static void processAfter(Boolean isInsert, Boolean isUpdate, Boolean isDelete, Boolean isUndelete, Map<Id, Opportunity> oldMap, Map<Id, Opportunity> newMap) {
		OpportunityDupFlagger odc = new OpportunityDupFlagger(isInsert, isUpdate, isDelete, isUndelete, oldMap, newMap);
		odc.flagDups();

	}

}