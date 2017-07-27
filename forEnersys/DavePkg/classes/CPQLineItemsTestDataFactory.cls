public with sharing class CPQLineItemsTestDataFactory {
	public Map<Id, Account> accounts = null;
	public Map<Id, Opportunity> opptys = null;
	public Map<Id, SBQQ__Quote__c> quotes = null;
	public Map<Id, SBQQ__QuoteLineGroup__c> groups = null;
	public Map<Id, Product2> products = null;
	public Map<Id, SBQQ__QuoteLine__c> lines = null;

	public CPQLineItemsTestDataFactory() {
		// Common elements for all test data setups
		CustomSettingManager.fillCustomSettingsWithDefaults();
		
	}

	public void setupScenario1() {
		accounts = createGenericTestAccounts(1);
		opptys = createGenericTestOpptysForAccounts(1, accounts);
		quotes = createGenericTestQuotesForOpptys(1, opptys);
		groups = createTestGroupsTruckAndAccessory(quotes);
		products = createTestProductsBatteriesAndChargers();
		lines = createTestQuoteLinesForProducts(products, groups);
	}
	
	public void setupScenario2() {
		accounts = createGenericTestAccounts(1);
		opptys = createGenericTestOpptysForAccounts(1, accounts);
		quotes = createGenericTestQuotesForOpptys(1, opptys);
		products = createTestProductsBatteriesAndChargers();
		lines = createTestQuoteLinesForProducts(products, quotes);
	}

	private Map<Id, Account> createGenericTestAccounts(Integer numAccounts) {
		List<Account> newAccounts = new List<Account>{};
		for (Integer i=0; i<numAccounts; i++) {
			newAccounts.add(new Account(Name='Test Account' + i));
		}
		insert newAccounts;
		return new Map<Id, Account>([Select Id, Name From Account Where Id IN :newAccounts]);
	}

	private Map<Id, Opportunity> createGenericTestOpptysForAccounts(Integer numOpptysEach, Map<Id, Account> accts) {
		List<Opportunity> newOpptys = new List<Opportunity>{};
		for (Integer i=0; i<accts.values().size(); i++) {
			Account acct = accts.values()[i];
			for (Integer j=0; j<numOpptysEach; j++) {
				newOpptys.add(new Opportunity(Name='Test Oppty1', AccountId=acct.Id, End_User__c=acct.Id, Pricebook2Id=Test.getStandardPricebookId(), 
									StageName='Qualification', CloseDate=Date.today(), Amount=100));
			}
		}
		insert newOpptys;
		return new Map<Id, Opportunity>([Select Id, Name, AccountId, End_User__c, Pricebook2Id, StageName, CloseDate, Amount, IsClosed, Possible_Dup__c From Opportunity Where Id IN :newOpptys]);
	}

	private Map<Id, SBQQ__Quote__c> createGenericTestQuotesForOpptys(Integer numQuotesEach, Map<Id, Opportunity> opptys) {
		List<SBQQ__Quote__c> newQuotes = new List<SBQQ__Quote__c>{};
		for (Opportunity oppty : opptys.values()) {
			for (Integer i=0; i<numQuotesEach; i++) {
				newQuotes.add(new SBQQ__Quote__c(SBQQ__Pricebook__c=Test.getStandardPricebookId(), SBQQ__Account__c=oppty.AccountId, SBQQ__Opportunity2__c=oppty.Id,
									SBQQ__LineItemsGrouped__c=true));
			}
		}
		insert newQuotes;
		return new Map<Id, SBQQ__Quote__c>([Select Id, Name, SBQQ__Pricebook__c, SBQQ__Account__c, SBQQ__Opportunity2__c, SBQQ__LineItemsGrouped__c From SBQQ__Quote__c Where Id IN :newQuotes]);
	}

	//private Map<Id, SBQQ__QuoteLineGroup__c> createGenericTestGroupsForQuotes(Integer numGroupsEach, Map<Id, SBQQ__Quote__c> quotes) {
	//	List<SBQQ__QuoteLineGroup__c> newGroups = new List<SBQQ__QuoteLineGroup__c>{};
	//	for (SBQQ__Quote__c quote : quotes.values()) {
	//		for (Integer i=0; i<numGroupsEach; i++) {
	//			newGroups.add(new SBQQ__QuoteLineGroup__c(Name='TestGroup' + i, SBQQ__Quote__c=quote.Id));
	//		}
	//	}
	//	insert newGroups;
	//	return new Map<Id, SBQQ__QuoteLineGroup__c>([Select Id, Name, SBQQ__Quote__c From SBQQ__QuoteLineGroup__c Where Id IN :newGroups]);
	//}

	private Map<Id, SBQQ__QuoteLineGroup__c> createTestGroupsTruckAndAccessory(Map<Id, SBQQ__Quote__c> quotes) {
		List<SBQQ__QuoteLineGroup__c> newGroups = new List<SBQQ__QuoteLineGroup__c>{};
		for (SBQQ__Quote__c quote : quotes.values()) {
			newGroups.add(new SBQQ__QuoteLineGroup__c(Name='TestGroup0', SBQQ__Quote__c=quote.Id, Truck_Manufacturer__c=null));
			newGroups.add(new SBQQ__QuoteLineGroup__c(Name='TestGroup1', SBQQ__Quote__c=quote.Id, Truck_Manufacturer__c='TestManufacturer', Truck_L_x_W_x_H__c='TestDimensions', Truck_Volt_Term__c='TestVoltTerm'));
			newGroups.add(new SBQQ__QuoteLineGroup__c(Name='TestGroup2', SBQQ__Quote__c=quote.Id, Truck_Manufacturer__c=null));
			newGroups.add(new SBQQ__QuoteLineGroup__c(Name='TestGroup3', SBQQ__Quote__c=quote.Id, Truck_Manufacturer__c='TestManufacturer', Truck_L_x_W_x_H__c='TestDimensions', Truck_Volt_Term__c='TestVoltTerm'));
		}
		insert newGroups;
		return new Map<Id, SBQQ__QuoteLineGroup__c>([Select Id, Name, SBQQ__Quote__c, Truck_Manufacturer__c From SBQQ__QuoteLineGroup__c Where Id IN :newGroups]);
	}

	//private Map<Id, Product2> createGenericTestProducts(Integer numProducts) {
	//	List<Product2> newProducts = new List<Product2>{};
	//	for (Integer i=0; i<numProducts; i++) {
	//		newProducts.add(new Product2(Name='TestProduct' + i, ExtId__c='TestProductExtId' + i));
	//	}
	//	insert newProducts;
	//	return new Map<Id, Product2>([Select Id, Name, ExtId__c From Product2 Where Id IN :newProducts]);
	//}

	private Map<Id, Product2> createTestProductsBatteriesAndChargers() {
		List<Product2> newProducts = new List<Product2>{};
		newProducts.add(new Product2(Name='TestProduct1', ExtId__c='TestProductExtId1', Product_Category_Override__c='Battery'));
		newProducts.add(new Product2(Name='TestProduct2', ExtId__c='TestProductExtId3', Product_Category_Override__c='Charger'));
		newProducts.add(new Product2(Name='TestProduct2', ExtId__c='TestProductExtId4', Product_Category_Override__c='Charger', Charger_VAC_Options__c='120/240', Charger_Voltage_Options__c='24V'));
		newProducts.add(new Product2(Name='TestProduct3', ExtId__c='TestProductExtId5', Product_Category_Override__c='Battery', Battery_Type__c='TestType1'));
		newProducts.add(new Product2(Name='TestProduct4', ExtId__c='TestProductExtId7', Product_Category_Override__c='Charger', Charger_VAC_Options__c='120', Charger_Voltage_Options__c='24V'));
		newProducts.add(new Product2(Name='TestProduct4', ExtId__c='TestProductExtId8', Product_Category_Override__c='Charger', Charger_VAC_Options__c='120/240', Charger_Voltage_Options__c='24V')); // Set QL chargerVacSelected to '120'
		newProducts.add(new Product2(Name='TestProduct5', ExtId__c='TestProductExtId9', Product_Category_Override__c='Other'));
		insert newProducts;
		return new Map<Id, Product2>([Select Id, Name, ExtId__c, Product_Category__c From Product2 Where Id IN :newProducts]);
	}

	private Map<Id, SBQQ__QuoteLine__c> createTestQuoteLinesForProducts(Map<Id, Product2> productsForEach, Map<Id, SBQQ__QuoteLineGroup__c> groups) {
		List<SBQQ__QuoteLine__c> newQuoteLines = new List<SBQQ__QuoteLine__c>{};
		for (SBQQ__QuoteLineGroup__c grp : groups.values()) {
			for (Product2 prod : productsForEach.values()) {
				if (prod.ExtId__c=='TestProductExtId4') {
					newQuoteLines.add(new SBQQ__QuoteLine__c(SBQQ__Quote__c=grp.SBQQ__Quote__c,SBQQ__Product__c=prod.Id, SBQQ__Group__c=grp.Id, SBQQ__Quantity__c=1, Charger_VAC_Options__c='120/240', Charger_Voltage_Options__c='24V'));

				} else if (prod.ExtId__c=='TestProductExtId7') {
					newQuoteLines.add(new SBQQ__QuoteLine__c(SBQQ__Quote__c=grp.SBQQ__Quote__c,SBQQ__Product__c=prod.Id, SBQQ__Group__c=grp.Id, SBQQ__Quantity__c=1, Charger_VAC_Options__c='120', Charger_Voltage_Options__c='24V'));

				} else if (prod.ExtId__c=='TestProductExtId8') {
					newQuoteLines.add(new SBQQ__QuoteLine__c(SBQQ__Quote__c=grp.SBQQ__Quote__c,SBQQ__Product__c=prod.Id, SBQQ__Group__c=grp.Id, SBQQ__Quantity__c=1, Charger_VAC_Selected__c='120', Charger_Voltage_Selected__c='24V', Charger_VAC_Options__c='120/240', Charger_Voltage_Options__c='24V'));

				} else {
					newQuoteLines.add(new SBQQ__QuoteLine__c(SBQQ__Quote__c=grp.SBQQ__Quote__c,SBQQ__Product__c=prod.Id, SBQQ__Group__c=grp.Id, SBQQ__Quantity__c=1));

				}
			}
		}	
		insert newQuoteLines;
		return new Map<Id, SBQQ__QuoteLine__c>([Select Id, Name, SBQQ__Quote__c, SBQQ__Group__c, SBQQ__Product__c, SBQQ__Quantity__c From SBQQ__QuoteLine__c Where Id IN :newQuoteLines]);
	}
	
	private Map<Id, SBQQ__QuoteLine__c> createTestQuoteLinesForProducts(Map<Id, Product2> productsForEach, Map<Id, SBQQ__Quote__c> quotes) {
		List<SBQQ__QuoteLine__c> newQuoteLines = new List<SBQQ__QuoteLine__c>{};
		for(SBQQ__Quote__c quote : quotes.values()) {
			for (Product2 prod : productsForEach.values()) {
				if (prod.ExtId__c=='TestProductExtId4') {
					newQuoteLines.add(new SBQQ__QuoteLine__c(SBQQ__Quote__c=quote.Id,SBQQ__Product__c=prod.Id, SBQQ__Quantity__c=1, Charger_VAC_Options__c='120/240', Charger_Voltage_Options__c='24V'));

				} else if (prod.ExtId__c=='TestProductExtId7') {
					newQuoteLines.add(new SBQQ__QuoteLine__c(SBQQ__Quote__c=quote.Id,SBQQ__Product__c=prod.Id, SBQQ__Quantity__c=1, Charger_VAC_Options__c='120', Charger_Voltage_Options__c='24V'));

				} else if (prod.ExtId__c=='TestProductExtId8') {
					newQuoteLines.add(new SBQQ__QuoteLine__c(SBQQ__Quote__c=quote.Id,SBQQ__Product__c=prod.Id, SBQQ__Quantity__c=1, Charger_VAC_Selected__c='120', Charger_Voltage_Selected__c='24V', Charger_VAC_Options__c='120/240', Charger_Voltage_Options__c='24V'));

				} else {
					newQuoteLines.add(new SBQQ__QuoteLine__c(SBQQ__Quote__c=quote.Id,SBQQ__Product__c=prod.Id, SBQQ__Quantity__c=1));

				}
			}	
		}
		insert newQuoteLines;
		return new Map<Id, SBQQ__QuoteLine__c>([Select Id, Name, SBQQ__Quote__c, SBQQ__Group__c, SBQQ__Product__c, SBQQ__Quantity__c From SBQQ__QuoteLine__c Where Id IN :newQuoteLines]);
	}

}