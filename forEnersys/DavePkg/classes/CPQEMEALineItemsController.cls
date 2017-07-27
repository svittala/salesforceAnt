public with sharing class CPQEMEALineItemsController {
    public List<SBQQ__QuoteLine__c> ungroupedLines { get; private set; }
    public SBQQ__Quote__c quote { get; private set; }
    public UngroupedLines ungrouped { get; private set; }
    public String lang { get; private set; }
    public SAPHeaderPricingConditions headerConditions { get; private set; }
    public Boolean orderTotal { get; private set; }
    
    public CPQEMEALineItemsController() {
        Id qId = (Id)ApexPages.currentPage().getParameters().get('qid');
        lang = (String) ApexPages.currentPage().getParameters().get('lang');
        
        selectQuote(qId);
        headerConditions = new SAPHeaderPricingConditions(quote.JSON_Pricing_Conditions__c);
        createCustomLineItemsContent(qId);
    }

    @TestVisible  
    private CPQEMEALineItemsController(Id qId) {
        selectQuote(qId);
        createCustomLineItemsContent(qId);
    }
    
    private void selectQuote(Id quoteId) {  
        quote = [ SELECT EMEA_Items_Total__c, EMEA_Final_Amount__c, JSON_Pricing_Conditions__c, CurrencyISOCode FROM SBQQ__Quote__c WHERE Id = :quoteId LIMIT 1 ];  
    }
    
    private void createCustomLineItemsContent(Id quoteId) {        
        ungroupedLines = [ SELECT SBQQ__Number__c, SAP_Line_Number__c, SAP_Material_Number__c, Line_Notes__c, SBQQ__ProductName__c, SBQQ__Description__c, SBQQ__Quantity__c, EMEA_Price_Unit__c,
            JSON_SAP_configuration__c, JSON_Pricing_Conditions__c, CurrencyISOCode
            FROM SBQQ__QuoteLine__c WHERE SBQQ__Quote__c = :quoteId AND SBQQ__Hidden__c = false ORDER BY SBQQ__Number__c ];
        
        // prepare lines config map
        Map<Id, Map<String, String>> linesConfigs = populateLineConfigs(ungroupedLines);
        
        // prepare lines config map
        Map<Id, SAPPricingConditions> lineItemConditions = populateLinePricingConditions(ungroupedLines);
        
        ungrouped = new UngroupedLines(ungroupedLines, linesConfigs, lineItemConditions);
    }
    
    private Map<Id, Map<String, String>> populateLineConfigs(List<SBQQ__QuoteLine__c> ungroupedLines) {
        Map<Id, Map<String, String>> result = new Map<Id, Map<String, String>>();
        for(SBQQ__QuoteLine__c quoteLine : ungroupedLines) {
            // parse configuration
            //String jsonConfig = '{ "Drawing no." : "_02_9935_50060_00", "Weight" : "281 KG", "Dimensions (LxWxH)" : "786 x 210 x 630", "Battery type" : "PzS", "Capacity of plate" : "115", "Cell type" : "3 PZS 345", "Battery accessories" : "Cable with plug connectors", "Battery operating instruction" : "German", "Battery Aquamatic/Vent plug" : "Aquamatic BfS 3", "Tray colour" : "RAL 7021 Black grey", "Manufacturer" : "Rema", "Type" : "DIN 160A Air Rema", "Details" : "Socket for connecting cable", "Strength of current" : "160 A", "Voltage" : "24 V", "Plug Connection Handle" : "Handle gated", "Auxiliary contact" : "without auxiliary contact", "Code pin" : "Code pin grey (wet)", "Air bushing" : "with air bushing", "Cable diameter" : "35 mm2", "Cable type" : "End terminal perfect", "Length positive cable" : "1.400 mm", "Length negative cable" : "1.400 mm" }';
            if(!result.containsKey(quoteLine.Id)) {
                if(quoteLine.JSON_SAP_configuration__c != null) {
                    result.put(quoteLine.Id, (Map<String, String>) JSON.deserialize(quoteLine.JSON_SAP_configuration__c, Map<String, String>.class));
                } else {
                    result.put(quoteLine.Id, new Map<String, String>());
                }
            }
        }
        System.debug(result);
        return result;
    }
    
    private Map<Id, SAPPricingConditions> populateLinePricingConditions(List<SBQQ__QuoteLine__c> ungroupedLines) {
        Map<Id, SAPPricingConditions> result = new Map<Id, SAPPricingConditions>();
        for(SBQQ__QuoteLine__c quoteLine : ungroupedLines) {
            if(!result.containsKey(quoteLine.Id)) {
                if(quoteLine.JSON_Pricing_Conditions__c != null) {
                    SAPPricingConditions cond = new SAPPricingConditions(quoteLine.JSON_Pricing_Conditions__c);
                    orderTotal = cond.orderTotal;
                    result.put(quoteLine.Id, cond);
                } else {
                    result.put(quoteLine.Id, null);
                }
            }
        }
        System.debug(result);
        return result;
    }
    
    public class UngroupedLines{
        public List<LineItem> lineItems {get;set;}

        public UngroupedLines(List<SBQQ__QuoteLine__c> lines, Map<Id, Map<String, String>> linesConfigs, Map<Id, SAPPricingConditions> pricingConditions) {
            this.lineItems = new List<LineItem>{};
            
            if (lines!=null) {
                for (SBQQ__QuoteLine__c ql : lines) {
                    lineItems.add(new LineItem(ql, linesConfigs.get(ql.Id), pricingConditions.get(ql.Id)));
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

    public class LineItemConfig {
        public String key {get;set;}
        public String value {get;set;}
        
        public LineItemConfig(String key, String value) {
            this.key = key;
            this.value = value;
        }
    }
    
    public class LineItem {
        public SBQQ__QuoteLine__c lineData { get; set; }
        public List<LineItemConfig> config { get; set; }
        public SAPPricingConditions pricingConditions { get; set; }
        
        public LineItem(SBQQ__QuoteLine__c line) {
            this.lineData = line;
            this.config = new List<LineItemConfig>();
        }
        
        public LineItem(SBQQ__QuoteLine__c line, Map<String, String> config, SAPPricingConditions pricingConditions) {
            this.lineData = line;
            this.pricingConditions = pricingConditions;
            
            List<LineItemConfig> c = new List<LineItemConfig>();
            
            if(config != null) {
                for(String key : config.keySet()) {
                    c.add(new LineItemConfig(key, config.get(key)));
                }
            }
            this.config = c;
        }
    }
}