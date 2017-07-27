({
    createQuote : function (component) {
        component.set("v.spinner", true);
        var action = component.get("c.createSalesQuote");        
        action.setParams({
            oppId: component.get("v.recordId"),
            recordTypeName : 'Rental Quote - Draft'
        });
        
        action.setCallback(this, function(response) {
            var state = response.getState();
            if (state === "SUCCESS") {
                console.log(response.getReturnValue());
                if(response.getReturnValue().Id){
                    component.set("v.quote", response.getReturnValue());
                    component.set("v.finish", true);
                }
                component.set("v.spinner", false);
                
                let redirect = $A.get("$Label.c.LightningDomain") +
                    'one/one.app#/sObject/'+component.get("v.quote").Id +
                    '/edit';
                window.location.href=redirect;
                
                var navEvt = $A.get("e.force:navigateToSObject");
                navEvt.setParams({
                    "recordId": component.get("v.quote").Id,
                    "slideDevName": "detail"
                });
                navEvt.fire();
                
                
            }else if (state === "ERROR") {
                var errors = response.getError();
                if (errors) {
                    if (errors[0] && errors[0].message) {
                        console.log("Error message in create quote: " +
                                    errors[0].message);
                    }
                } else {
                    console.log("Unknown error");
                }
            }
        });
        
        $A.enqueueAction(action);
    },
})