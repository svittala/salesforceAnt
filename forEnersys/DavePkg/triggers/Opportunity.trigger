trigger Opportunity on Opportunity (
	before insert, 
	before update, 
	before delete, 
	after insert, 
	after update, 
	after delete, 
	after undelete) {

	if (Trigger.isAfter) {
    		OpportunityTriggerHandler.processAfter(Trigger.isInsert, Trigger.isUpdate, Trigger.isDelete, Trigger.isUndelete, Trigger.oldMap, Trigger.newMap);
    
	}

}