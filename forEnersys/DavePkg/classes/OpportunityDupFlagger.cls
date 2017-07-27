public without sharing class OpportunityDupFlagger {

	Opportunity_Trigger_Settings__c settings; 

	private Boolean triggerIsInsert;
	private Boolean triggerIsUpdate;
	private Boolean triggerIsDelete;
	private Boolean triggerIsUndelete;
	private Map<Id, Opportunity> triggerOldMap;
	private Map<Id, Opportunity> triggerNewMap;
	private Map<Id, Opportunity> allRelatedOpptys;
	private Map<Id, List<Opportunity>> allRelatedOpptysByEndUser;

	public OpportunityDupFlagger(Boolean isInsert, Boolean isUpdate, Boolean isDelete, Boolean isUndelete, Map<Id, Opportunity> oldMap, Map<Id, Opportunity> newMap) {
		settings = CustomSettingManager.verifyOpportunityTriggerSettings();
		triggerIsInsert = isInsert;
		triggerIsUpdate = isUpdate;
		triggerIsDelete = isDelete;
		triggerIsUndelete = isUndelete;
		triggerOldMap = oldMap;
		triggerNewMap = newMap;

		Utils.logContents('triggerNewMap', String.valueOf(triggerNewMap));
	}

	public void flagDups() {

		Map<Id, Opportunity> newOrChangedTriggerOpptys = new Map<Id, Opportunity>{};
		if (triggerIsInsert || triggerIsUndelete) {
			newOrChangedTriggerOpptys = triggerNewMap;

		} else if (triggerIsUpdate) {
			newOrChangedTriggerOpptys = getChangedOpptysFromOldAndNewMaps();

		} else if (triggerIsDelete) {
			newOrChangedTriggerOpptys = triggerOldMap;

		}

		allRelatedOpptys = fetchAllRelatedOpptys(removeClosedOrphanAndZeroAmountOpptys(newOrChangedTriggerOpptys));

		Utils.logContents('allRelatedOpptys', String.valueOf(allRelatedOpptys));

		flagDupOpptys();
	}

	private Map<Id, Opportunity> getChangedOpptysFromOldAndNewMaps() {
		Map<Id, Opportunity> returnMap = new Map<Id, Opportunity>{};
		for (Id oppId : triggerNewMap.keySet()) {
			Opportunity oldOpp = triggerOldMap.get(oppId);
			Opportunity newOpp = triggerNewMap.get(oppId);
			if (newOpp.End_User__c != oldOpp.End_User__c
					|| newOpp.Amount != oldOpp.Amount
					) {
				returnMap.put(oppId, newOpp);

			}
		}
		return returnMap;
	}

	private Map<Id, Opportunity> removeClosedOrphanAndZeroAmountOpptys(Map<Id, Opportunity> opptyMap) {
		Map<Id, Opportunity> returnMap = new Map<Id, Opportunity>{};
		for (Id oppId : opptyMap.keySet()) {
			Opportunity opp = opptyMap.get(oppId);
			if (!opp.IsClosed 
					&& opp.End_User__c!=null
					&& opp.Amount > 0
					) {
				returnMap.put(oppId, opp);
			}
		}

		Utils.logContents('removeClosedOrphanAndZeroAmountOpptys', String.valueOf(returnMap));
		return returnMap;
	}

	private void flagDupOpptys() {
		sortAllRelatedOpptysByEndUser();

		Map<Id, Opportunity> opptysToUpdate = getOpptysToUpdate();
		if (opptysToUpdate.keySet().size() > 0) {
			update opptysToUpdate.values();
		}
	}

	private void sortAllRelatedOpptysByEndUser() {
		allRelatedOpptysByEndUser = new Map<Id, List<Opportunity>>{};

		for (Opportunity opp : allRelatedOpptys.values()) {
			Id endUser = opp.End_User__c;
			if (allRelatedOpptysByEndUser.containsKey(endUser)) {
				List<Opportunity> oppsList = allRelatedOpptysByEndUser.get(endUser);
				oppsList.add(opp);
				allRelatedOpptysByEndUser.put(endUser, oppsList);
			} else {
				allRelatedOpptysByEndUser.put(endUser, new List<Opportunity>{opp});
			}
		}

		Utils.logContents('sortAllRelatedOpptysByEndUser', String.valueOf(allRelatedOpptysByEndUser));
	}

	private Map<Id, Opportunity> getOpptysToUpdate() {
		Map<Id, Opportunity> returnMap = new Map<Id, Opportunity>{};

		for (Id endUser : allRelatedOpptysByEndUser.keySet()) {
			Map<Id, Opportunity> dupOpptys = findOpptysWithDupAmounts(allRelatedOpptysByEndUser.get(endUser));

			for (Id oppId : dupOpptys.keySet()) {
				returnMap.put(oppId, dupOpptys.get(oppId));

			}

		}

		Utils.logContents('getOpptysToUpdate', String.valueOf(returnMap));
		return returnMap;
	}

	private Map<Id, Opportunity> findOpptysWithDupAmounts(List<Opportunity> opps) {
		Map<Id, Opportunity> returnMap = new Map<Id, Opportunity>{};
		Map<Integer, List<Opportunity>> mapAmountToOpptys = getMapAmountToOpptys(opps);
		List<Integer> opptyAmountsSorted = new List<Integer>{};
		opptyAmountsSorted.addAll(mapAmountToOpptys.keySet());
		opptyAmountsSorted.sort();
		List<Opportunity> opptysToUpdate = new List<Opportunity>{};
		Integer lastAmount = -1;

		Utils.logContents('Process end user opps for dups', String.valueOf(opps));

		for (Integer amount : opptyAmountsSorted) {

			Boolean amountWithinXPercentFound = false;

			if (lastAmount!=-1) {
				amountWithinXPercentFound = isDupAmount(amount, lastAmount);
			}

			if (amountWithinXPercentFound) {
				Utils.logContents('Dup Oppty(s) Found - Two different Amounts within X percent', String.valueOf(mapAmountToOpptys.get(lastAmount).size() + mapAmountToOpptys.get(amount).size()));

				opptysToUpdate.addAll(createNewOpptyObjsForUpdate(mapAmountToOpptys.get(lastAmount), true));
				opptysToUpdate.addAll(createNewOpptyObjsForUpdate(mapAmountToOpptys.get(amount), true));

			} else if (mapAmountToOpptys.get(amount).size() > 1) {
				Utils.logContents('Dup Oppty(s) Found - Multiple Opptys with same Amount', String.valueOf(mapAmountToOpptys.get(amount).size()));

				opptysToUpdate.addAll(createNewOpptyObjsForUpdate(mapAmountToOpptys.get(amount), true));

			} else {
				Utils.logContents('No Dup Opptys Found for this Amount', String.valueOf(amount));

				opptysToUpdate.addAll(createNewOpptyObjsForUpdate(mapAmountToOpptys.get(amount), false));

			}

			lastAmount = amount;

		}

		Utils.logContents('opptysToUpdate', String.valueOf(opptysToUpdate));

		return resolveToUniqueOpptysRequiringDbUpdate(opptysToUpdate);

	}

	private Boolean isDupAmount(Decimal amount, Decimal lastAmount) {
		Boolean returnFlag=false;

		Decimal lastAmountLessXPct = lastAmount * (100-settings.Dup_Threshold_Percent__c)/100;
		Decimal lastAmountPlusXPct = lastAmount * (100+settings.Dup_Threshold_Percent__c)/100;
		if (amount > lastAmountLessXPct && amount < lastAmountPlusXPct) {
			returnFlag=true;

		}

		return returnFlag;
	}

	private Map<Id, Opportunity> resolveToUniqueOpptysRequiringDbUpdate(List<Opportunity> opptysToUpdate) {
		Map<Id, Opportunity> returnMap = new Map<Id, Opportunity>{};

		for (Opportunity opp : opptysToUpdate) {
			Boolean finalFlagValue = false;

			if (!returnMap.containsKey(opp.Id)) {
				finalFlagValue = opp.Possible_Dup__c;

			} else {
				Boolean existingMapValue = returnMap.get(opp.Id).Possible_Dup__c;
				Boolean proposedNewMapValue = opp.Possible_Dup__c;
				if (existingMapValue && !proposedNewMapValue) {
					// Do nothing -- if flag appears twice in map with different values, keep the true
				} else {
					finalFlagValue = opp.Possible_Dup__c;
				}
			}

			Boolean flagValueInDB = allRelatedOpptys.get(opp.Id).Possible_Dup__c;
			if (finalFlagValue!=flagValueInDB) {
				returnMap.put(opp.Id, opp);

			}

		}

		Utils.logContents('resolveToUniqueOpptysRequiringDbUpdate', String.valueOf(returnMap));
		return returnMap;

	}

	private List<Opportunity> createNewOpptyObjsForUpdate(List<Opportunity> opps, Boolean possibleDup) {
		List<Opportunity> opptysForUpdate = new List<Opportunity>{};

		for (Opportunity opp : opps) {
			if (allRelatedOpptys.get(opp.Id).Possible_Dup__c!=possibleDup) {
				Opportunity returnObj = new Opportunity();
				returnObj.Id = opp.Id;
				returnObj.Possible_Dup__c = possibleDup;
				opptysForUpdate.add(returnObj);
			}
		}

		Utils.logContents('createNewOpptyObjsForUpdate', String.valueOf(opptysForUpdate));
		return opptysForUpdate;
	}

	private Map<Integer, List<Opportunity>> getMapAmountToOpptys(List<Opportunity> opps) {
		Map<Integer, List<Opportunity>> returnMap = new Map<Integer, List<Opportunity>>{};

		for (Opportunity opp : opps) {
			Integer newAmount = Integer.valueOf(opp.Amount);

			if (!returnMap.containsKey(newAmount)) {
				returnMap.put(newAmount, new List<Opportunity>{opp});

			} else {
				List<Opportunity> listOfOpps = returnMap.get(newAmount);
				listOfOpps.add(opp);
				returnMap.put(newAmount, listOfOpps);

			}

		}

		Utils.logContents('getMapAmountToOpptys', String.valueOf(returnMap));
		return returnMap;
	}

	private Map<Id, Opportunity> fetchAllRelatedOpptys(Map<Id, Opportunity> filteredTriggerOpptys) {
		Map<Id, Opportunity> returnMap = new Map<Id, Opportunity>{};

		if (filteredTriggerOpptys.size() > 0) {
			Set<Id> relatedEndUsers = getSetEndUsers(filteredTriggerOpptys);
			returnMap = new Map<Id, Opportunity>([Select Id, End_User__c, Amount, Possible_Dup__c, IsClosed From Opportunity Where End_User__c IN: relatedEndUsers And Amount>0 And IsClosed=false]);

		}

		return returnMap;
	}

	private Set<Id> getSetEndUsers(Map<Id, Opportunity> filteredTriggerOpptys) {
		Set<Id> returnSet = new Set<Id>();
		for (Opportunity opp : filteredTriggerOpptys.values()) {
			if (opp.End_User__c!=null) {
				returnSet.add(opp.End_User__c);
			}
		}
		return returnSet;
	}

}