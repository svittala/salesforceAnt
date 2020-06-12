public with sharing class Ctl_StoreVisitPhotos {

  private final Store_Visit__c thisVisit;
  public List<Attachment> formPhotos {get;set;}

  public Ctl_StoreVisitPhotos(ApexPages.StandardController stdController) {
    thisVisit = (Store_Visit__c)stdController.getRecord();

    List<discostage__Form__c> relatedForms = [SELECT Id,Store_Visit__c FROM discostage__Form__c WHERE Store_Visit__c=:thisVisit.id];
    formPhotos = [SELECT Id,Body FROM Attachment WHERE ParentID IN:relatedForms];
  }


}