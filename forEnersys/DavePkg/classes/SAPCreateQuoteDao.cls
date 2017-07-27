public with sharing class SAPCreateQuoteDao {
	public SAPCreateQuoteDao() {

	}

	public User fetchUserData(Id userId) {
		User returnUser = new User();
		List<User> users = [Select Id, Email From User Where Id = :userId];
		if (users!=null && users.size() > 0) {
			returnUser = users[0];
		}
		return returnUser;
	}

	public SBQQ__Quote__c fetchQuoteData(Id quoteId) {
		SBQQ__Quote__c returnQuote = new SBQQ__Quote__c();
		List<SBQQ__Quote__c> quotes = [Select Id, Name, Currency_Code__c, Customer_Requested_Date__c, Incoterms__c,
											SBQQ__ExpirationDate__c, Valid_From__c, SAP_Quote_Number__c, Shipping_Conditions__c,
											Delivery_Terms__r.Code__c, Delivery_Terms__c, Reference_Information_Number__c, Sales_Office__c,
											Incoterms__r.Code__c, Incoterms2_Text__c, Shipping_Conditions__r.Code__c,
											Distribution_Channel__c, Division__c, Sales_Organization__c,
											Payment_Terms_SAP__c, Payment_Terms_SAP__r.Code__c,
											SBQQ__Account__r.SAP_Customer_Id__c,
											SBQQ__Opportunity2__c,
											Sales_Area_Data__c,
											Sales_Area_Data__r.Sales_Area_Sales_Organisation_Code__r.Name,
											Sales_Area_Data__r.Sales_Area_Sales_Organisation_Code__r.Distribution_Channel_Code__c,
											Ship_To_Data__c,
											Ship_To_Data__r.Ship_To_Account__r.SAP_Customer_Id__c
										 From SBQQ__Quote__c Where Id = :quoteId];
		if (quotes!=null && quotes.size() > 0) {
			returnQuote = quotes[0];
		}
		return returnQuote;
	}

	public DaoResults upsertQuotes(List<SBQQ__Quote__c> quotes) {
		DaoResults daoResults = new DaoResults();

		Try {
			if (quotes.size() > 0) {
				daoResults.upsertResults = Database.upsert(quotes, SBQQ__Quote__c.Id, false);
				Utils.logContents('DB Saved upsertQuotes - SBQQ__Quote__c', String.valueOf(quotes));
				Utils.logContents('DB Saved upsertQuotes - upsertResults', String.valueOf(daoResults.upsertResults));
			}
		} Catch(Exception e){
			daoResults.dbException = new DaoException(e.getMessage());
			daoResults.upsertResults = null;
			System.debug('*** DB Save upsertQuotes - Error: ' + e.getMessage());
		}

		return daoResults;
	}

	public class DaoResults {
		public DaoException dbException { get; set; }
		public Database.UpsertResult[] upsertResults { get; set; }

		public DaoResults() {
		}
	}

	public class DaoException extends Exception {}

}