/* This trigger was created by the Youreka package and is integral to it. 
Please do not delete */
@istest(SeeAllData=true)
private class test_Youreka_Store_Visit_trigger{
    static testMethod void test_Youreka_Store_Visit_triggertest(){
        discostage.util.testLinkedObjTrigger('Store_Visit__c');
    }
}