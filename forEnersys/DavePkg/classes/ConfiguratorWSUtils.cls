public with sharing class ConfiguratorWSUtils {

	public static void logContents(String userMessage, String jsonResult) {
		Integer maxLength = 1500;
		if (jsonResult!=null && jsonResult.length() > maxLength) {
			jsonResult = jsonResult.left(maxLength) + '[truncated...]';
		}
		System.debug(LoggingLevel.INFO, '*** ' + userMessage + ': ' + jsonResult);
	}

	public static String combineErrorMessages(Database.Error[] dbErrors) {
		String fullErrorMsg = '';
		for (Database.Error de : dbErrors) {
			fullErrorMsg+='STATUS CODE: ' + de.getStatusCode() + '; MESSAGE: ' + de.getMessage() + '; FIELDS: ' + de.getFields() + '; ';
		}
		return fullErrorMsg;
	}

	public static String combineExceptionMessages(Exception e) {
		String fullErrorMsg = '';
		fullErrorMsg+='CAUSE: ' + e.getCause() + '; LINE NUMBER: ' + e.getLineNumber() + '; MESSAGE: ' + e.getMessage() + '; TYPE: ' + e.getTypeName() + '; STACK TRACE: ' + e.getStackTraceString();
		return fullErrorMsg;
	}

}