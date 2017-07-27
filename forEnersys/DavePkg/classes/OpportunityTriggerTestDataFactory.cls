public with sharing class OpportunityTriggerTestDataFactory {
	public Map<Id, Account> accounts = null;
	public Map<Id, Account> endUsers = null;
	public Map<Id, Opportunity> opptys = null;

	public OpportunityTriggerTestDataFactory() {
		// Common elements for all test data setups
		CustomSettingManager.fillCustomSettingsWithDefaults();

	}

	public void setupScenario1() {
		// Generic test Account, no pre-existing Oppty
		accounts = createGenericTestAccounts(1);
		endUsers = createGenericTestAccounts(1);

	}

	public void setupScenario2() {
		// Pre-existing Oppty
		accounts = createGenericTestAccounts(1);
		endUsers = createGenericTestAccounts(1);
		opptys = createGenericTestOpptysForAccountsAndEndUsers(1, accounts, endUsers);

	}

	public void setupScenario3() {
		// 200 Accounts, each with two dup Opptys
		accounts = createGenericTestAccounts(1);
		endUsers = createGenericTestAccounts(1);
		opptys = createGenericTestOpptysForAccountsAndEndUsers(1, accounts, endUsers);

	}

	public void setupScenario4() {
		// Pre-existing dup Opptys
		accounts = createGenericTestAccounts(1);
		endUsers = createGenericTestAccounts(1);
		opptys = createGenericTestOpptysForAccountsAndEndUsers(2, accounts, endUsers);

	}

	private Map<Id, Account> createGenericTestAccounts(Integer numAccounts) {
		List<Account> newAccounts = new List<Account>{};
		for (Integer i=0; i<numAccounts; i++) {
			newAccounts.add(new Account(Name='Test Account' + i));
		}
		insert newAccounts;
		return new Map<Id, Account>([Select Id, Name From Account Where Id IN :newAccounts]);
	}

	private Map<Id, Opportunity> createGenericTestOpptysForAccountsAndEndUsers(Integer numOpptysEach, Map<Id, Account> accts, Map<Id, Account> endUsers) {
		List<Opportunity> newOpptys = new List<Opportunity>{};
		for (Integer i=0; i<accts.values().size(); i++) {
			Account acct = accts.values()[i];
			Account endUser = endUsers.values()[i];
			for (Integer j=0; j<numOpptysEach; j++) {
				newOpptys.add(new Opportunity(Name='Test Oppty1', AccountId=acct.Id, End_User__c=endUser.Id, Pricebook2Id=Test.getStandardPricebookId(), 
									StageName='Qualification', CloseDate=Date.today(), Amount=100));
			}
		}
		insert newOpptys;
		return new Map<Id, Opportunity>([Select Id, Name, AccountId, End_User__c, Pricebook2Id, StageName, CloseDate, Amount, IsClosed, Possible_Dup__c From Opportunity Where Id IN :newOpptys]);
	}

}