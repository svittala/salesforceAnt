/* This trigger was created by the Youreka package and is integral to it. 
Please do not delete */
trigger Youreka_Store_Visit_trigger on Store_Visit__c (after update){
    discostage.util.updateObjectsFieldLinkAnswers(trigger.new,'Store_Visit__c');
}