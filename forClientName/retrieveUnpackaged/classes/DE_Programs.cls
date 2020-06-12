public with sharing class DE_Programs {

public List<Key_Account__c> potentialprogs {get;set;}
public List<Key_Account__c> targetedprogs {get;set;}


public DE_Programs(ApexPages.StandardController controller) {
	
	 potentialprogs = [SELECT Customer__c,Id,Name,Promotion__c, Promotion__r.Name, Promotion__r.Start_Date__c, Indicator__c, Promotion__r.Marketing_Priority_Image__c, Priority__c,Program_Status__c,Status__c,Targeted_Program__c,Type__c FROM Key_Account__c Where Program_Status__c='Presented & Accepted' AND Customer__c=:controller.getID()];

	 targetedprogs= [SELECT Customer__c,Id,Name, Promotion__c, Promotion__r.Name, Promotion__r.Start_Date__c, Indicator__c, Promotion__r.Marketing_Priority_Image__c,Priority__c,Program_Status__c,Status__c,Targeted_Program__c,Type__c FROM Key_Account__c Where Program_Status__c='Targeted' AND Customer__c=:controller.getID()];
}
}