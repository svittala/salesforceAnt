public with sharing class Utils {
	
	public static void logContents(String userMessage, String jsonResult) {
		Integer maxLength = 2000;
		if (jsonResult!=null && jsonResult.length() > maxLength) {
			jsonResult = jsonResult.left(maxLength) + '[truncated...]';
		}
		System.debug(LoggingLevel.INFO, '*** ' + userMessage + ': ' + jsonResult);
	}

	public static String noNull(String rawString) {
		String returnString = '';
		if (rawString!=null) {
			returnString = rawString;
		}
		return returnString;
	}

	public static String combineExceptionMessages(Exception e) {
		String fullErrorMsg = '';
		fullErrorMsg+='CAUSE: ' + e.getCause() + '; LINE NUMBER: ' + e.getLineNumber() + '; MESSAGE: ' + e.getMessage() + '; TYPE: ' + e.getTypeName() + '; STACK TRACE: ' + e.getStackTraceString();
		return fullErrorMsg;
	}

}