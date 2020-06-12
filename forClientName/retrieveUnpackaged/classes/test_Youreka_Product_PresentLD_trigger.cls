/* This trigger was created by the Youreka package and is integral to it. 
Please do not delete */
@istest(SeeAllData=true)
private class test_Youreka_Product_PresentLD_trigger{
    static testMethod void test_Youreka_Product_PresentLD_triggertest(){
        discostage.util.testLinkedObjLDTrigger('Product_Present__c');
    }
}