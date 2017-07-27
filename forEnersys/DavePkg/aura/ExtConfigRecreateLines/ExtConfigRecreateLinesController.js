({
    doInit : function(component, event, helper) {
		console.log('ExtConfigRecreateLines: init component - version 17');

		component.set("v.quoteLineCreationStatus", "working...");

		var recordId = component.get("v.recordId");

		if (recordId) {
			console.log('ExtConfigRecreateLines: recordId: ' + recordId);
			helper.recreateQuoteLineItems(component, event);

		} else {
			component.set("v.quoteLineCreationStatus", "failure - no recordId found");
			console.log('ExtConfigRecreateLines: failure - no recordId found');

		}
    }
})