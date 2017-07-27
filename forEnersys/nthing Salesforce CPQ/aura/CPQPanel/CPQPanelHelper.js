/**
 * Created by mhoefer on 9/19/16.
 */
({
	getPageActions : function(component) {
		var action = component.get("c.getPageActions");
		action.setParams({ recordId: component.get("v.recordId") });
		action.setCallback(this, function (response) {
			var state = response.getState();
			if (component.isValid() && state === "SUCCESS") {
				component.set("v.pageActions", JSON.parse(response.getReturnValue()));
			}
		});

		$A.enqueueAction(action);
	},

	getPageFromLabel : function(component, label) {
		var actions = component.get("v.pageActions");
		for (var i = 0; i < actions.length; i++) {
			var a = actions[i];
			if (a.label == label) {
				return a.page;
			}
		}
	}
});