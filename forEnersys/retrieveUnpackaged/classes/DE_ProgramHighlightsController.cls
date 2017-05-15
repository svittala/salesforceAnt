public with sharing class DE_ProgramHighlightsController {
    
    public Program__c p {get;set;}
    public Decimal total {get;set;}
    public Boolean newPlan {get;set;}
    public DE_ProgramHighlightsController(ApexPages.StandardController controller) {
        try{
            p = [SELECT Active__c,Actual_Cost__c,Approval_Status__c,Approval__c,Budgeted_Cost__c,DataApr__c,DataAug__c,DataFeb__c,DataJan__c,
                DataJul__c,DataJun__c,DataMar__c,DataMay__c,DataOct__c,DataSep__c,Description__c,End_Date__c,Expected_Revenue__c,Id,Image_Map__c,
                LastActivityDate,Marketing_Priority_Image__c,Marketing_Priority__c,Minimum_Annual_Revenue__c,Name,of_Key_Accounts_Targeted__c,of_Presentations__c,
                Other_Description__c,Program_Intensity__c,Promotion_Budget__c,Promotion_Budget__r.Name,Promotion_Budget__r.Type__c,Promotion_Budget__r.Promo__c,
                Promotion_Budget__r.Region_Image__c,Promotion_Budget__r.Region__c,Promotion_Budget__r.Approval_Image__c,Promotion_Budget__r.Start_Date__c,Promotion_Budget__r.End_Date__c,Promotion_Name__c,Region__c,Score_Accounts__c,Score_Presentation__c,Start_Date__c,
                Status__c,Store_Type__c,Sub_Store_Type__c,Type__c FROM Program__c Where id =:controller.getID()];  
            newPlan = false;
        }   
        catch(Exception e){
            p = new Program__c();
            newPlan = true;
        } 
        
    }
    
}