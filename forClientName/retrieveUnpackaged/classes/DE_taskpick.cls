public with sharing class DE_taskpick {

  public List <Activity_Template__c> MyTempz {get;set;}
 
  public DE_taskpick() {
    MyTempz=[SELECT CreatedDate,Id,Name FROM Activity_Template__c];
  }
}