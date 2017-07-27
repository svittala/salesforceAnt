public with sharing class ConfiguratorWSLaunchDao {
	public ConfiguratorWSLaunchDao() {
		
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
		List<SBQQ__Quote__c> quotes = [Select Id, Name, SBQQ__PriceBook__c From SBQQ__Quote__c Where Id = :quoteId];
		if (quotes!=null && quotes.size() > 0) {
			returnQuote = quotes[0];
		}
		return returnQuote;
	}

}