@isTest
private class QuickQuoteVFControllerTest {
	@isTest
	static void testController()
	{
        QuickQuoteVFController c = new QuickQuoteVFController(new ApexPages.StandardController(new Account()));
        String myId = c.getmyID();
        PageReference finishLocation = c.getFinishLocation();
        System.assert(finishLocation.getUrl()!='', 'Finish Location is blank');
    }
}