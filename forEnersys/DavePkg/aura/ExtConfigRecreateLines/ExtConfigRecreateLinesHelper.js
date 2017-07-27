({
	recreateQuoteLineItems : function(component, event) {
		var action = component.get("c.apexRecreateQuoteLineItems");
        action.setParams({
          "extConfigId": component.get("v.recordId")
        });
        action.setCallback(this, function(a) {
            component.set("v.quoteLineCreationStatus", a.getReturnValue());
            console.log('ExtConfigRecreateLines: -->Quote Line creation completed by Apex');
        });

        console.log('ExtConfigRecreateLines: Sending External Configuration to Apex for Quote Line recreation');
        $A.enqueueAction(action);

	}

})