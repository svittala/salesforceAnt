@isTest
private class CreateOrderVFControllerTest {
	@isTest
	static void testController()
	{
        CreateOrderVFController c = new CreateOrderVFController(new ApexPages.StandardController(new SBQQ__Quote__c()));
        String orderId = c.getOrderID();
        String quoteId = c.getQuoteID();
        PageReference finishLocation = c.getFinishLocation();
        System.assert(finishLocation.getUrl()!='', 'Finish Location is blank');
    }
}