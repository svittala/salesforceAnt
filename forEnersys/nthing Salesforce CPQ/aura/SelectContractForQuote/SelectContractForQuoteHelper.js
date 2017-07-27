({
	navigateToQuote: function (quoteId, component) {
		var pageUrl = this.safeUrl(component.get("v.nextUrl"));
		var returnUrl = this.safeUrl(component.get("v.returnUrl"));
		var navUrl = "/sfdcpage/" + encodeURIComponent(pageUrl + "?id=" + quoteId);
		if (returnUrl != null) {
			navUrl += encodeURIComponent("&retURL=" + returnUrl);
		}
		this.navigateToUrl(navUrl, true);
		urlEvent.fire();
	},

	showSpinner : function (component) {
		var spinner = component.find('spinner');
		$A.util.removeClass(spinner, 'slds-hidden');
	},

	hideSpinner : function (component) {
		var spinner = component.find('spinner');
		$A.util.addClass(spinner, 'slds-hidden');
	},

	safeUrl : function (url) {
		if (url == null)
			return null;
		url = url.trim();
		return (url.startsWith('/') && !url.startsWith('//')) ||
		(url.indexOf('/') == -1 && url.indexOf(':') == -1) ? url : null;
	},

	navigateToUrl : function (url, redirect) {
		if (url == null)
			return;

		var urlEvent = $A.get("e.force:navigateToURL");
		urlEvent.setParams({
			"url": url,
			"isredirect": redirect
		});
		urlEvent.fire();
	},

	showError : function (resp, component) {
		console.log(resp.error + ' : ' + resp.stacktrace);
		$A.createComponents([
				["ui:message",{ "title" : resp.error, "severity" : "error"}]],
			function (components) {
				component.find("messages").set("v.body", components[0]);
			}
		);
	}
})