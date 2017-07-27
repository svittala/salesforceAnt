@isTest
private class RentalQuoteVFControllerTest {
	@isTest
	static void testController()
	{
        RentalQuoteVFController c = new RentalQuoteVFController(new ApexPages.StandardController(new Opportunity()));
        String myId = c.getmyID();
        PageReference finishLocation = c.getFinishLocation();
        System.assert(finishLocation.getUrl()!='', 'Finish Location is blank');
    }
}