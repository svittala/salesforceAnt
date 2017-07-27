({
    doInit : function(component, event, helper) {
		console.log("QuoteConfigReceipts: init component - version 13");

		helper.resolveQuoteId(component, event, helper);

		helper.fetchExternalConfigs(component, event);

    },

    refreshDataComp : function(component, event, helper) {
		helper.fetchExternalConfigs(component, event);

    }

})