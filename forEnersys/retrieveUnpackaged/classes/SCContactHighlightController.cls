public class SCContactHighlightController {
    
    public Account a {get;set;}
    public Boolean cleans {get;set;}
    public Decimal total {get;set;}
    public List <Event> elist {get;set;}  
    public List <Task> tlist {get;set;}
    public SCContactHighlightController(ApexPages.StandardController controller) {
        
        a = [Select Name, Id, Customer_Since_Year__c,Phone, Days_Since_Last_Store_Visit__c,of_Programs__c,Customer_Since__c, Re_Stock_Frequency__c, CY_Case_Equiv__c, Tier__c, Store_Type__c,Re_Stock_Day__c, Number_of_Sample_Requests__c, PY_Case_Equiv__c, CleanStatus, NumberOfEmployees, AccountSource, Website, Industry, Type, Closed_Won_Value__c, Rating_Indicator__c, Region__c, Days_Since_Activity__c From Account Where id =:controller.getID()];        
    	
    	elist = [Select Id, AccountId From Event Where AccountId = :a.Id];
    	
    	tlist = [Select Id, AccountId From Task Where AccountId =:a.Id];
    	
    	IF(a.CleanStatus == 'In Sync'){ 
    		cleans= true;
    	}	 
    	
    	total = a.CY_Case_Equiv__c;
    	
    	
    }

}