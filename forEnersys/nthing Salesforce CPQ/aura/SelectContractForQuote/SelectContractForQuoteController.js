({
	doInit : function(component, event, helper) {
		var action = component.get("c.getAccountContracts");
		action.setParams({
			accountId : component.get("v.accountId")
		});
		action.setCallback(this, function(result) {
			component.set("v.contracts", result.getReturnValue());
		});
		$A.enqueueAction(action);
	},

	onSelectContract : function(component, event, helper) {
		var selected = event.getSource().get("v.text");
		component.set("v.selectedContract", selected);
	},

	handleSelect : function(component, event, helper) {
		var contractId = component.get("v.selectedContract");
		var action = component.get("c.amendContract");
		action.setParams({
			contractId : contractId
		});

		helper.showSpinner(component);
		action.setCallback(this, function(result) {
			helper.hideSpinner(component);
			var resp = JSON.parse(result.getReturnValue());
			if (resp.error) {
				helper.showError(resp, component);
			} else {
				helper.navigateToQuote(resp.quote, component);
			}
		});

		$A.enqueueAction(action);
	},

	handleSkip : function(component, event, helper) {
		var action = component.get("c.amendAccount");
		action.setParams({
			accountId : component.get("v.accountId")
		});

		helper.showSpinner(component);
		action.setCallback(this, function(result) {
			helper.hideSpinner(component);
			var resp = JSON.parse(result.getReturnValue());
			if (resp.error) {
				helper.showError(resp, component);
			} else {
				helper.navigateToQuote(resp.quote, component);
			}
		});
		$A.enqueueAction(action);
	},

	handleCancel : function(component, event, helper) {
		var returnUrl = helper.safeUrl(component.get("v.returnUrl"));
		helper.navigateToUrl(returnUrl);
	}
})