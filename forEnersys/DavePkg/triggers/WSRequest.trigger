trigger WSRequest on WS_Request__c (
	before insert, 
	before update, 
	before delete, 
	after insert, 
	after update, 
	after delete, 
	after undelete) {

	if (Trigger.isAfter && Trigger.isInsert) {
    	WSRequestTriggerHandler.processAfterInsert(Trigger.newMap);
    
	}

}