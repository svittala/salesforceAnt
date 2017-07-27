@isTest
public class QuoteControllerTest {
    
    public static testMethod void createSalesQuote(){
        OpportunityTriggerTestDataFactory testData = new OpportunityTriggerTestDataFactory();
        testData.setupScenario1();
        Account testAcct = testData.accounts.values()[0];
        Account testEndUser = testData.endUsers.values()[0];
        List<Opportunity> newOpptys = new List<Opportunity>();
        newOpptys.add(new Opportunity(Name='Test Oppty', AccountId=testAcct.Id, End_User__c=testEndUser.Id, 
                                      Pricebook2Id=Test.getStandardPricebookId(), 
                                      StageName='Qualification', CloseDate=Date.today(), Amount=100));
        insert newOpptys;
        Test.startTest();
        QuoteController.createSalesQuote(newOpptys[0].Id,'Rental Quote - Draft');
        Test.stopTest();
    }
    
}