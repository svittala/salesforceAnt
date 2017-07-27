public class FioriCanvasLifecycleHandler implements Canvas.CanvasLifecycleHandler {

    public Set<Canvas.ContextTypeEnum> excludeContextTypes(){
        Set<Canvas.ContextTypeEnum> excluded = new Set<Canvas.ContextTypeEnum>();

        // Code goes here to add items to excluded list
        // that should be excluded from Context data
        excluded.add(Canvas.ContextTypeEnum.ORGANIZATION);
        excluded.add(Canvas.ContextTypeEnum.USER);
        excluded.add(Canvas.ContextTypeEnum.RECORD_DETAIL);

        return excluded;
    }

    public void onRender(Canvas.RenderContext renderContext) {
	    // Get the Application and Environment context from the RenderContext
	    Canvas.ApplicationContext app = renderContext.getApplicationContext();
	    Canvas.EnvironmentContext env = renderContext.getEnvironmentContext();

		// Get current custom params
		Map<String, Object> currentParams = (Map<String, Object>) JSON.deserializeUntyped(env.getParametersAsJSON());
		System.debug('Environment Context custom paramters: ' + currentParams);
		
		String recordId;
		if(currentParams.containsKey('recordId')) {
			recordId = (String) currentParams.get('recordId');
		} else {
			throw new Canvas.CanvasRenderException(Label.Fiori_Canvas_No_Record_Id_Specified);	    
		}
	
	    // Override app URL to include record Id
	    List<Fiori_Canvas_Settings__mdt> canvasSettings = [ SELECT Record_URL__c FROM Fiori_Canvas_Settings__mdt WHERE DeveloperName = 'Default' ];
	    if(canvasSettings.isEmpty()) {
	    	throw new Canvas.CanvasRenderException(Label.Fiori_Canvas_No_Default_URL_Specified);
	    }
	    
	    String url = canvasSettings[0].Record_URL__c.subStringAfter('https://').subStringAfter('/').replace('%ID%', recordId);
	    
	    app.setCanvasUrlPath('/'+url);
	}
}