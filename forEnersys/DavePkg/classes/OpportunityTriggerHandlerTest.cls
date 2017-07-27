@isTest
private class OpportunityTriggerHandlerTest
{
	static OpportunityTriggerTestDataFactory testData;

	static void setup() {
		testData = new OpportunityTriggerTestDataFactory();

	}

	@isTest
	static void testOnlyOpptyOnAccount()
	{
		setup();
		testData.setupScenario1();
		Account testAcct = testData.accounts.values()[0];
		Account testEndUser = testData.endUsers.values()[0];

		Test.startTest();

		List<Opportunity> newOpptys = new List<Opportunity>{};
		newOpptys.add(new Opportunity(Name='Test Oppty', AccountId=testAcct.Id, End_User__c=testEndUser.Id, Pricebook2Id=Test.getStandardPricebookId(), 
							StageName='Qualification', CloseDate=Date.today(), Amount=100));
		insert newOpptys;

		Test.stopTest();

		Integer expectedOpptyCount = 1;
		Boolean expectedFlag = false;

		Map<Id, Opportunity> updatedOpptys = new Map<Id, Opportunity>([Select Possible_Dup__c From Opportunity Where End_User__c = :testEndUser.Id]);

		System.assert(updatedOpptys.keySet().size()==expectedOpptyCount, 'The expected one Opportunity was not found');
		System.assert(updatedOpptys.values()[0].Possible_Dup__c==expectedFlag, 'Trigger incorrectly flagged Possible_Dup__c=true on the Opportunity');

	}

	@isTest
	static void testOpptyAmountWithin10PercentWindow()
	{
		setup();
		testData.setupScenario2();
		Account testAcct = testData.accounts.values()[0];
		Account testEndUser = testData.endUsers.values()[0];
		Opportunity testOppty = testData.opptys.values()[0];

		Test.startTest();

		List<Opportunity> newOpptys = new List<Opportunity>{};
		newOpptys.add(new Opportunity(Name='Test Oppty Dup', AccountId=testOppty.AccountId, End_User__c=testOppty.End_User__c, Pricebook2Id=testOppty.Pricebook2Id, 
							StageName=testOppty.StageName, CloseDate=testOppty.CloseDate, Amount=testOppty.Amount*1.05));
		insert newOpptys;

		Test.stopTest();

		Integer expectedOpptyCount = 2;
		Boolean expectedFlag = true;

		Map<Id, Opportunity> updatedOpptys = new Map<Id, Opportunity>([Select Possible_Dup__c From Opportunity Where End_User__c = :testEndUser.Id]);

		System.assert(updatedOpptys.keySet().size()==expectedOpptyCount, 'The expected two Opportunities were not found');
		System.assert(updatedOpptys.values()[0].Possible_Dup__c==expectedFlag, 'Trigger did not flag Possible_Dup__c on the first dup Opportunity');
		System.assert(updatedOpptys.values()[1].Possible_Dup__c==expectedFlag, 'Trigger did not flag Possible_Dup__c on the second dup Opportunity');

	}

	@isTest
	static void testOpptyAmountOutside10PercentWindow()
	{
		setup();
		testData.setupScenario2();
		Account testAcct = testData.accounts.values()[0];
		Account testEndUser = testData.endUsers.values()[0];
		Opportunity testOppty = testData.opptys.values()[0];

		Test.startTest();

		List<Opportunity> newOpptys = new List<Opportunity>{};
		newOpptys.add(new Opportunity(Name='Test Oppty Dup', AccountId=testOppty.AccountId, End_User__c=testOppty.End_User__c, Pricebook2Id=testOppty.Pricebook2Id, 
							StageName=testOppty.StageName, CloseDate=testOppty.CloseDate, Amount=testOppty.Amount*1.15));
		insert newOpptys;

		Test.stopTest();

		Integer expectedOpptyCount = 2;
		Boolean expectedFlag = false;

		Map<Id, Opportunity> updatedOpptys = new Map<Id, Opportunity>([Select Possible_Dup__c From Opportunity Where End_User__c = :testOppty.End_User__c]);

		System.assert(updatedOpptys.keySet().size()==expectedOpptyCount, 'The expected two Opportunities were not found');
		System.assert(updatedOpptys.values()[0].Possible_Dup__c==expectedFlag, 'Trigger incorrectly flagged Possible_Dup__c=true on the first Opportunity');
		System.assert(updatedOpptys.values()[1].Possible_Dup__c==expectedFlag, 'Trigger incorrectly flagged Possible_Dup__c=true on the second Opportunity');

	}

	//@isTest
	//static void test400Opptys()
	//{
	//	setup();

	//	Test.startTest();

	//	testData.setupScenario3();

	//	Test.stopTest();

	//	Integer expectedOpptyCount = 400;
	//	Boolean expectedFlag = true;

	//	Map<Id, Opportunity> updatedOpptys = new Map<Id, Opportunity>([Select Possible_Dup__c From Opportunity Where End_User__c IN :testData.endUsers.keySet()]);

	//	System.assert(updatedOpptys.keySet().size()==expectedOpptyCount, 'The expected number of Opportunities were not found');
	//	System.assert(updatedOpptys.values()[0].Possible_Dup__c==expectedFlag, 'Trigger set incorrect value on Possible_Dup__c on the 1st Opportunity');
	//	System.assert(updatedOpptys.values()[399].Possible_Dup__c==expectedFlag, 'Trigger set incorrect value on Possible_Dup__c on the last Opportunity');

	//}

	@isTest
	static void testDeleteAndUndeleteDupOppty()
	{
		setup();
		testData.setupScenario4();
		Account testAcct = testData.accounts.values()[0];
		Account testEndUser = testData.endUsers.values()[0];
		Opportunity testOppty1 = testData.opptys.values()[0];
		Opportunity testOppty2 = testData.opptys.values()[0];

		System.assert(testOppty1.Possible_Dup__c==true, 'testOppty1 Possible_Dup__c field does not have correct initial value for test');
		System.assert(testOppty2.Possible_Dup__c==true, 'testOppty2 Possible_Dup__c field does not have correct initial value for test');

		Test.startTest();

		delete testOppty2;

		Map<Id, Opportunity> updatedOpptys1 = new Map<Id, Opportunity>([Select Possible_Dup__c From Opportunity Where End_User__c = :testEndUser.Id]);

		undelete testOppty2;

		Test.stopTest();

		Integer expectedOpptyCount1 = 1;
		Boolean expectedFlag1 = false;

		System.assert(updatedOpptys1.keySet().size()==expectedOpptyCount1, 'The expected number of Opportunities were not found after the delete');
		System.assert(updatedOpptys1.values()[0].Possible_Dup__c==expectedFlag1, 'Trigger set incorrect value on Possible_Dup__c field after the delete');

		Integer expectedOpptyCount2 = 2;
		Boolean expectedFlag2 = true;

		Map<Id, Opportunity> updatedOpptys2 = new Map<Id, Opportunity>([Select Possible_Dup__c From Opportunity Where End_User__c = :testEndUser.Id]);

		System.assert(updatedOpptys2.keySet().size()==expectedOpptyCount2, 'The expected number of Opportunities were not found after the undelete');
		System.assert(updatedOpptys2.values()[0].Possible_Dup__c==expectedFlag2, 'Trigger set incorrect value on testOppty1 Possible_Dup__c field after the undelete');
		System.assert(updatedOpptys2.values()[0].Possible_Dup__c==expectedFlag2, 'Trigger set incorrect value on testOppty2 Possible_Dup__c field after the undelete');

	}

}