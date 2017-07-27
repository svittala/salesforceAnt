public with sharing class CPQLineItemsMotiveController {
    public List<SBQQ__QuoteLineGroup__c> groups {get; private set;}
    public List<SBQQ__QuoteLine__c> ungroupedLines {get; private set;}
    public List<DisplayGroup> displayGroups {get; private set;}
    public UngroupedLines ungrouped {get; private set;}

    private Map<String, List<SBQQ__QuoteLineGroup__c>> mapKeyToMatchingTrucks;
    private Map<String, List<SBQQ__QuoteLineGroup__c>> mapKeyToDisplayGroups;

    public CPQLineItemsMotiveController() {
        Id qId = (Id)ApexPages.currentPage().getParameters().get('qid');
        createCustomLineItemsContent(qId);
    }

    @TestVisible  
    private CPQLineItemsMotiveController(Id qId) {
        createCustomLineItemsContent(qId);
    }

    private void createCustomLineItemsContent(Id quoteId) {
        groups = [SELECT Name, SBQQ__Description__c, External_Configuration__c,
            Truck_Connector__c, Truck_L_x_W_x_H__c, Truck_Manufacturer__c, Truck_Min_Weight__c, Truck_Model_Class__c, Truck_Notes__c, Truck_Type_Cover__c, Truck_Volt_Term__c, 
            (SELECT SBQQ__ProductName__c, SBQQ__Description__c, SBQQ__Quantity__c, SBQQ__NetPrice__c, SBQQ__NetTotal__c, Product_Category__c, Line_Notes__c, SBQQ__Product__r.Description, 
            Battery_AH_KWH__c, Battery_Dimensions__c, Battery_Family__c, Battery_Notes__c, Battery_Part__c, Battery_Type__c, Battery_Weight__c, 
            Charger_Family_Charger_Part__c, Charger_Max_A_In_AC_Out_DC__c, Charger_Max_AH__c, Charger_Mod_Cab__c, Charger_Notes__c, Charger_Product__c, Charger_VAC_Selected__c, Charger_Volt_Phase__c, Charger_Voltage_Selected__c,
            Charger_VAC_Options__c, Charger_Voltage_Options__c, Charger_VAC__c, 
            Charger_Max_AH_Selected__c, Charger_Input_AC_Amps_Selected__c, Charger_Output_DC_Amps_Selected__c
            FROM SBQQ__LineItems__r  Where SBQQ__Hidden__c = false ORDER BY SBQQ__Number__c) 
            FROM SBQQ__QuoteLineGroup__c Where SBQQ__Quote__c = :quoteId ORDER BY SBQQ__Number__c];
        ungroupedLines = [SELECT SBQQ__ProductName__c, SBQQ__Description__c, SBQQ__Quantity__c, SBQQ__NetPrice__c, SBQQ__NetTotal__c, Product_Category__c, Line_Notes__c, SBQQ__Product__r.Description, 
            Battery_AH_KWH__c, Battery_Dimensions__c, Battery_Family__c, Battery_Notes__c, Battery_Part__c, Battery_Type__c, Battery_Weight__c, 
            Charger_Family_Charger_Part__c, Charger_Max_A_In_AC_Out_DC__c, Charger_Max_AH__c, Charger_Mod_Cab__c, Charger_Notes__c, Charger_Product__c, Charger_VAC_Selected__c, Charger_Volt_Phase__c, Charger_Voltage_Selected__c, 
            Charger_VAC_Options__c, Charger_Voltage_Options__c, Charger_VAC__c,
            Charger_Max_AH_Selected__c, Charger_Input_AC_Amps_Selected__c, Charger_Output_DC_Amps_Selected__c
            FROM SBQQ__QuoteLine__c Where SBQQ__Group__c=null And SBQQ__Quote__c = :quoteId And SBQQ__Hidden__c = false ORDER BY SBQQ__Number__c];
        createMapForMatchingTrucks(groups);
        displayGroups = fillDisplayGroups();
        ungrouped = new UngroupedLines(ungroupedLines);
        
    }

    private void createMapForMatchingTrucks(List<SBQQ__QuoteLineGroup__c> groups) {
        mapKeyToMatchingTrucks = new Map<String, List<SBQQ__QuoteLineGroup__c>>{};

        Integer i = 1;
    	for (SBQQ__QuoteLineGroup__c g : groups) {
            if (g.SBQQ__LineItems__r!=null && g.SBQQ__LineItems__r.size() > 0) {
                if (isGroupForATruck(g)) {
                    String truckKey = getTruckKeyForGroup(g);

                    List<SBQQ__QuoteLineGroup__c> truckListForKey = mapKeyToMatchingTrucks.containsKey(truckKey)? mapKeyToMatchingTrucks.get(truckKey) : new List<SBQQ__QuoteLineGroup__c>{};

                    truckListForKey.add(g);
                    mapKeyToMatchingTrucks.put(truckKey, truckListForKey);

                }

            }

            i++;

    	}

        Utils.logContents('mapKeyToMatchingTrucks', String.valueOf(mapKeyToMatchingTrucks));
    }

    private Boolean isGroupForATruck(SBQQ__QuoteLineGroup__c g) {
        Boolean returnFlag = false;

        if (!String.isBlank(g.Truck_Manufacturer__c)) {
            returnFlag=true;            
        }

        return returnFlag;
    }

    private String getTruckKeyForGroup(SBQQ__QuoteLineGroup__c g) {
        String returnKey = '';

        returnKey+=g.Truck_Connector__c;
        returnKey+=g.Truck_L_x_W_x_H__c;
        returnKey+=g.Truck_Manufacturer__c;
        returnKey+=g.Truck_Min_Weight__c;
        returnKey+=g.Truck_Model_Class__c;
        returnKey+=g.Truck_Notes__c;
        returnKey+=g.Truck_Type_Cover__c;
        returnKey+=g.Truck_Volt_Term__c;

        return returnKey;
    }

    private List<DisplayGroup> fillDisplayGroups() {
        List<DisplayGroup> returnList = new List<DisplayGroup>{};
        Set<String> truckKeysAlreadyDisplayed = new Set<String>();

        for (SBQQ__QuoteLineGroup__c g : groups) {
            if (g.SBQQ__LineItems__r!=null && g.SBQQ__LineItems__r.size() > 0) {
                if (isGroupForATruck(g)) {
                    String truckKey = getTruckKeyForGroup(g);

                    if (!truckKeysAlreadyDisplayed.contains(truckKey)) {
                        List<SBQQ__QuoteLineGroup__c> truckListForKey = mapKeyToMatchingTrucks.containsKey(truckKey)? mapKeyToMatchingTrucks.get(truckKey) : new List<SBQQ__QuoteLineGroup__c>{};
                        Utils.logContents('truckListForKey', String.valueOf(truckListForKey));

                        if (truckListForKey.size() > 0) {
                            DisplayGroup newDisplayGroup = new DisplayGroup();
                            newDisplayGroup.isForATruck = true;
                            newDisplayGroup.heading = 'Truck, Battery, Charger';
                            newDisplayGroup.truckInfo = truckListForKey[0];
                            newDisplayGroup.groups = fillSortedGroupCombinedTrucks(truckListForKey);
                            returnList.add(newDisplayGroup);

                            truckKeysAlreadyDisplayed.add(truckKey);
                        }

                    }

                } else {
                    List<SBQQ__QuoteLineGroup__c> groupList = new List<SBQQ__QuoteLineGroup__c>{g};
                    DisplayGroup newDisplayGroup = new DisplayGroup();
                    newDisplayGroup.isForATruck = false;
                    newDisplayGroup.heading = groupList[0].SBQQ__Description__c;
                    newDisplayGroup.truckInfo = groupList[0];
                    newDisplayGroup.groups = fillSortedGroup(groupList);
                    returnList.add(newDisplayGroup);

                }

            }

        }

        return returnList;

    }

    private List<SortedGroup> fillSortedGroupCombinedTrucks(List<SBQQ__QuoteLineGroup__c> groups) {
        List<SortedGroup> groupList = new List<SortedGroup>{};

        List<SortedGroup> organizedTrucks = fillSortedGroup(groups);

        SortedGroup newGroup = new SortedGroup();
        newGroup.isForATruck = true;

        for (SortedGroup g : organizedTrucks) {
            newGroup.batteries.addAll(g.batteries);
            newGroup.batteriesNoSpecs.addAll(g.batteriesNoSpecs);
            newGroup.chargers.addAll(g.chargers);
            newGroup.chargersNoSpecs.addAll(g.chargersNoSpecs);
            newGroup.others.addAll(g.others);

        }

        groupList.add(newGroup);
        Utils.logContents('groupList', String.valueOf(groupList));
        return groupList;
    }

    private List<SortedGroup> fillSortedGroup(List<SBQQ__QuoteLineGroup__c> groups) {
    	List<SortedGroup> groupList = new List<SortedGroup>{};

    	for (SBQQ__QuoteLineGroup__c g : groups) {
    		SortedGroup newGroup = new SortedGroup();
            newGroup.isForATruck = isGroupForATruck(g);

    		for (SBQQ__QuoteLine__c line : g.SBQQ__LineItems__r) {
	    		if (line.Product_Category__c!=null && line.Product_Category__c.toLowerCase()=='battery') {
                    if (showBatteryTechSpecHeading(line)) {
                        newGroup.batteries.add(new LineItem(line));
                    } else {
                        newGroup.batteriesNoSpecs.add(new LineItem(line));
                    }

				} else if (line.Product_Category__c!=null && line.Product_Category__c.toLowerCase()=='charger') {
                    if (showChargerTechSpecHeading(line)) {
                        newGroup.chargers.add(new LineItem(line));
                    } else {
                        newGroup.chargersNoSpecs.add(new LineItem(line));
                    }
	    			

				} else {
	    			newGroup.others.add(new LineItem(line));

				}

			}

			groupList.add(newGroup);

    	}

        Utils.logContents('groupList', String.valueOf(groupList));
    	return groupList;
    }

    private Boolean showBatteryTechSpecHeading(SBQQ__QuoteLine__c ql) {
        Boolean returnFlag = false;
        System.debug(LoggingLevel.INFO, '*** Battery');
        if (ql!=null && !String.isBlank(ql.Battery_Type__c)) {  
            returnFlag = true;

        }
        return returnFlag;
    }

    private Boolean showChargerTechSpecHeading(SBQQ__QuoteLine__c ql) {
        Boolean returnFlag = false;
        System.debug(LoggingLevel.INFO, '*** Charger');
        System.debug(LoggingLevel.INFO, '*** Charger_VAC_Options__c: ' + ql.Charger_Voltage_Options__c);
        System.debug(LoggingLevel.INFO, '*** Charger_Voltage_Options__c: ' + ql.Charger_Voltage_Options__c);
        if (ql!=null && !String.isBlank(ql.Charger_VAC_Options__c) && !String.isBlank(ql.Charger_Voltage_Options__c)) {
            System.debug(LoggingLevel.INFO, '*** Charger_VAC_Selected__c: ' + ql.Charger_VAC_Selected__c);
            System.debug(LoggingLevel.INFO, '*** Charger_Voltage_Selected__c: ' + ql.Charger_Voltage_Selected__c);
            if (
                (!ql.Charger_VAC_Options__c.contains('/') && !ql.Charger_Voltage_Options__c.contains('/'))
                || (ql.Charger_VAC_Options__c.contains('/') && !ql.Charger_Voltage_Options__c.contains('/') && !String.isBlank(ql.Charger_VAC_Selected__c) && !String.isBlank(ql.Charger_Voltage_Selected__c))
                || (!ql.Charger_VAC_Options__c.contains('/') && ql.Charger_Voltage_Options__c.contains('/') && !String.isBlank(ql.Charger_VAC_Selected__c) && !String.isBlank(ql.Charger_Voltage_Selected__c))
                || (ql.Charger_VAC_Options__c.contains('/') && ql.Charger_Voltage_Options__c.contains('/') && !String.isBlank(ql.Charger_VAC_Selected__c) && !String.isBlank(ql.Charger_Voltage_Selected__c))
                ) {
                returnFlag = true;

            }

        }
        return returnFlag;
    }

    public class DisplayGroup {
    	public SBQQ__QuoteLineGroup__c truckInfo {get;set;}
    	public List<SortedGroup> groups {get;set;}
        public Boolean isForATruck {get;set;}
        public String heading {get;set;}
        public DisplayGroup() {
            isForATruck = false;
        }

        public String[] getShowTruckInfo() {
            if (isForATruck) {
                return new String[]{'1'};
            } else {
                return new String[]{};
            }
        }

        public String getCleanTruckDimensions() {
            String returnInfo = '';
            if (truckInfo!=null && !String.isBlank(truckInfo.Truck_L_x_W_x_H__c)) {
                returnInfo = truckInfo.Truck_L_x_W_x_H__c.replace('&quot;', '"');
            }
            return returnInfo;
        }

        public String getCleanVoltTerm() {
            String returnInfo = '';
            if (truckInfo!=null && !String.isBlank(truckInfo.Truck_Volt_Term__c)) {
                returnInfo = truckInfo.Truck_Volt_Term__c.replace('&quot;', '"');
            }
            return returnInfo;
        }

    }

    public class SortedGroup {
    	public List<LineItem> batteries {get;set;}
        public List<LineItem> batteriesNoSpecs {get;set;}
    	public List<LineItem> chargers {get;set;}
        public List<LineItem> chargersNoSpecs {get;set;}
    	public List<LineItem> others {get;set;}
        public Boolean isForATruck {get;set;}
    	public SortedGroup() {
    		batteries = new List<LineItem>();
            batteriesNoSpecs = new List<LineItem>();
    		chargers = new List<LineItem>();
            chargersNoSpecs = new List<LineItem>();
    		others = new List<LineItem>();
            isForATruck = false;
    	}

    	public String[] getShowBatteryHeading() {
    		if (batteries!=null && batteries.size() > 0) {
    			return new String[]{'1'};
    		} else {
    			return new String[]{};
    		}
    	}

        public String[] getShowBatteryNoSpecsHeading() {
            if (batteriesNoSpecs!=null && batteriesNoSpecs.size() > 0) {
                return new String[]{'1'};
            } else {
                return new String[]{};
            }
        }

    	public String[] getShowChargerHeading() {
    		if (chargers!=null && chargers.size() > 0) {
    			return new String[]{'1'};
    		} else {
    			return new String[]{};
    		}
    	}

        public String[] getShowChargerNoSpecsHeading() {
            if (chargersNoSpecs!=null && chargersNoSpecs.size() > 0) {
                return new String[]{'1'};
            } else {
                return new String[]{};
            }
        }

    	public String[] getShowOtherHeading() {
    		if (others!=null && others.size() > 0) {
    			return new String[]{'1'};
    		} else {
    			return new String[]{};
    		}
    	}

    }

    public class UngroupedLines{
        public List<LineItem> lineItems {get;set;}

        public UngroupedLines(List<SBQQ__QuoteLine__c> lines) {
            this.lineItems = new List<LineItem>{};
            if (lines!=null) {
                for (SBQQ__QuoteLine__c ql : lines) {
                    lineItems.add(new LineItem(ql));

                }
            }

        }

        public String[] getShowUngroupedLines() {
            if (lineItems!=null && lineItems.size() > 0) {
                return new String[]{'1'};
            } else {
                return new String[]{};
            }
        }
    }

    public class LineItem {
        public SBQQ__QuoteLine__c lineData {get;set;}

        public LineItem(SBQQ__QuoteLine__c line) {
            this.lineData = line;

        }

        public String getLineNotesRowHeight() {
            if (lineData!=null && !String.isBlank(lineData.Line_Notes__c)) {
                return 'auto';
            } else {
                return '0';
            }
        }

    }
}