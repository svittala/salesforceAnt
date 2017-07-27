@isTest
private class FioriCanvasLifecycleHandlerTest {
	
	@isTest
	private static void testNoRecordIdSpecified(){
		FioriCanvasLifecycleHandler handler = new FioriCanvasLifecycleHandler();
		try {
			Canvas.Test.testCanvasLifecycle(handler, null);
			System.assert(false, 'An exception should be thrown.');
		} catch (CanvasException ex) {
			System.assert(ex.getMessage().contains(Label.Fiori_Canvas_No_Record_Id_Specified));
		}
	}	
	
	@isTest
	private static void testRecordIdspecified(){
		String testURL = [ SELECT Record_URL__c FROM Fiori_Canvas_Settings__mdt WHERE DeveloperName = 'Default' LIMIT 1 ].Record_URL__c; 
		
		Map<String,String> appValues = new Map<String,String>();
		appValues.put(Canvas.Test.KEY_CANVAS_URL, 'https://fiori.enersys.com/');
		Canvas.RenderContext mock = Canvas.Test.mockRenderContext(appValues, null);
		mock.getEnvironmentContext().setParametersAsJSON('{\"recordId\":"fakeId"}');
	            
		FioriCanvasLifecycleHandler handler = new FioriCanvasLifecycleHandler();
		
		Test.startTest();
		
		Canvas.Test.testCanvasLifecycle(handler, mock);
		Set<Canvas.ContextTypeEnum> excluded = handler.excludeContextTypes();
		
		Test.stopTest();
		
		// asserts
		System.assertEquals(testURL.replace('%ID%', 'fakeId'), mock.getApplicationContext().getCanvasURL());
		System.assert(excluded.contains(Canvas.ContextTypeEnum.ORGANIZATION));
		System.assert(excluded.contains(Canvas.ContextTypeEnum.USER));
		System.assert(excluded.contains(Canvas.ContextTypeEnum.RECORD_DETAIL));
	}
}