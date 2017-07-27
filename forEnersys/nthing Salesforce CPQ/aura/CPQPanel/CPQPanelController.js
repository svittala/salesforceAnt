({
	navigateToPage: function (component, event, helper) {
		var label = event.getSource().get('v.label');
		var page = helper.getPageFromLabel(component, label);
		var pageUrl = "/sfdcpage/"
			+ encodeURIComponent("/apex/" + page
				+ "?id=" + component.get("v.recordId"));
		var urlEvent = $A.get("e.force:navigateToURL");
		urlEvent.setParams({
			"url": pageUrl,
			"isredirect": true
		});
		urlEvent.fire();
	},

	doInit : function(component, event, helper) {
		helper.getPageActions(component);
	}
})