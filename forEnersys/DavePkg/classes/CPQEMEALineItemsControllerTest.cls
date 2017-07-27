@isTest
private class CPQEMEALineItemsControllerTest {

	static CPQLineItemsTestDataFactory testData;
	
	static void setup() {
		testData = new CPQLineItemsTestDataFactory();
	}

	@isTest
	private static void testController() {
		setup();
		testData.setupScenario2();

		Test.startTest();	

		CPQEMEALineItemsController c = new CPQEMEALineItemsController(testData.quotes.values()[0].Id);

		Test.stopTest();

		System.assert(c.ungroupedLines.size() == 7, 'The quote preview did not show the correct number of line items');
		System.assert(c.ungrouped != null, 'The quote preview did not show the correct number of line items');
		System.assert(c.ungrouped.lineItems != null, 'The quote preview did not show the correct number of line items');
	}
	
	@isTest
	private static void testController2() {
		setup();
		testData.setupScenario2();

		Test.startTest();	
		
		PageReference pageRef = Page.CPQEMEALineItems;
		Test.setCurrentPage(pageRef);
		ApexPages.currentPage().getParameters().put('qid', testData.quotes.values()[0].Id);
		

		CPQEMEALineItemsController c = new CPQEMEALineItemsController();

		Test.stopTest();

		System.assert(c.ungroupedLines.size() == 7, 'The quote preview did not show the correct number of line items');
		System.assert(c.ungrouped != null, 'The quote preview did not show the correct number of line items');
		System.assert(c.ungrouped.lineItems != null, 'The quote preview did not show the correct number of line items');
	}
}