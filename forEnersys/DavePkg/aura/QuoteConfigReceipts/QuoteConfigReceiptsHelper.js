({

    resolveQuoteId : function(component, event, helper) {
        var quoteNumber = helper.getUrlParameter("quoteNumber");
        component.set("v.quoteNumber", quoteNumber);
        console.log("QuoteConfigReceipts: quoteNumber from querystring: " + quoteNumber);

        if (quoteNumber) {
            var action = component.get("c.apexResolveQuoteId");
            action.setParams({
              "rawQuoteNumber": quoteNumber,
              "rawQuoteId": component.get("v.recordId")

            });
            action.setCallback(this, function(a) {
                component.set("v.recordId", a.getReturnValue());

                if (a.getReturnValue()===null) {
                    // Do Nothing

                } else {
                    console.log("QuoteConfigReceipts: -->Received Quote Id from Apex: " + a.getReturnValue());

                }

            });

            console.log("QuoteConfigReceipts: requesting Quote Id from Apex");
            $A.enqueueAction(action);
        }

    },

    getUrlParameter : function getUrlParameter(sParam) {
        var sPageURL = decodeURIComponent(window.location.search.substring(1)),
            sURLVariables = sPageURL.split("&"),
            sParameterName,
            i;

        for (i = 0; i < sURLVariables.length; i=i+1) {
            sParameterName = sURLVariables[i].split("=");

            if (sParameterName[0] === sParam) {
                return sParameterName[1] === undefined ? true : sParameterName[1];
            }
        }
        return null;
    },

	fetchExternalConfigs : function(component, event) {
		var action = component.get("c.apexGetExternalConfigsByQuoteNumberOrQuoteId");
        action.setParams({
          "rawQuoteNumber": component.get("v.quoteNumber"),
          "rawQuoteId": component.get("v.recordId")

        });
        action.setCallback(this, function(a) {
            var returnValue = a.getReturnValue();

            component.set("v.externalConfigurations", returnValue);

            if (returnValue===null || returnValue=="") {
                component.set("v.userMessage", "No External Configurations found");
                console.log("QuoteConfigReceipts: -->Received External Configurations from Apex: 0");

            } else {
                component.set("v.userMessage", "");
                console.log("QuoteConfigReceipts: -->Received External Configurations from Apex: " + a.getReturnValue().length);

            }

        });

        console.log("QuoteConfigReceipts: requesting External Configurations from Apex");
        $A.enqueueAction(action);

	}

})