/* This trigger was created by the Youreka package and is integral to it. 
Please do not delete */
trigger Youreka_Product_PresentLD_trigger on Product_Present__c (after update){
    discostage.Util.updateAnswersInLinkedSections(trigger.new,'Product_Present__c');
}