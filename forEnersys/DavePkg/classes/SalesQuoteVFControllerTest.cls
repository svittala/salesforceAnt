@isTest
private class SalesQuoteVFControllerTest {
	@isTest
	static void testController()
	{
        SalesQuoteVFController c = new SalesQuoteVFController(new ApexPages.StandardController(new Opportunity()));
        String myId = c.getmyID();
        PageReference finishLocation = c.getFinishLocation();
        System.assert(finishLocation.getUrl()!='', 'Finish Location is blank');
    }
}