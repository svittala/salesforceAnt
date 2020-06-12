@isTest (seeAllData=true)
public with sharing class MobileLookUpTest {
    public static testMethod void runTests() {
        MobileLookUp m = new MobileLookUp();
        MobileLookUp.Item myItem = new MobileLookUp.Item('test','test2');
        
        m.objectName = 'Account';
        m.myObject = new Contact();
        m.objectField = 'AccountId';
        m.filter = '';
        
        m.getTheValues();
    }
}