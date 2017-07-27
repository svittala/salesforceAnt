public with sharing class SAPHeaderPricingConditions {
    public Decimal itemsTotal { get; set; }
    public Decimal finalAmount { get; set; }
    public List<TaxSummary> vatSummary { get; set; }
    
    public static final String SAP_VAT = 'MWST';
    public static final String SAP_FINAL_AMOUNT = 'finalAmount';
    public static final String SAP_ITEMS_TOTAL = 'itemsTotal';
    
    public SAPHeaderPricingConditions(String pricingConditionsJSON) {
        vatSummary = new List<TaxSummary>();
        parseConditions(pricingConditionsJSON);
    }
    
    public SAPHeaderPricingConditions(List<ConfiguratorWS.PricingCondition> pricingConditions) {
        vatSummary = new List<TaxSummary>();
        parseConditions(pricingConditions);
    }
    
    private void parseConditions(String pricingConditionsJSON) {
        if(!String.isEmpty(pricingConditionsJSON)) {
            List<ConfiguratorWS.PricingCondition> pricingConditions = (List<ConfiguratorWS.PricingCondition>) JSON.deserialize(pricingConditionsJSON, List<ConfiguratorWS.PricingCondition>.class);
            parseConditions(pricingConditions);
        }
    }   
     
    private void parseConditions(List<ConfiguratorWS.PricingCondition> pricingConditions) {     
        // loop through pricing conditions
        if(pricingConditions != null) {
            for(Integer i = 0; i < pricingConditions.size(); i++) {
                ConfiguratorWS.PricingCondition pricingCondition = pricingConditions[i];
                
                if(pricingCondition.conditionTypeCode == SAP_VAT) {
                    vatSummary.add(new TaxSummary(pricingCondition.amount, pricingCondition.baseAmount, pricingCondition.value));
                } else if(pricingCondition.conditionTypeCode == SAP_ITEMS_TOTAL) {
                    itemsTotal = pricingCondition.value;
                } else if(pricingCondition.conditionTypeCode == SAP_FINAL_AMOUNT) {
                    finalAmount = pricingCondition.value;
                }
            }
        }
    }
    
    private class TaxSummary {
        public Decimal rate { get; set; }
        public Decimal amountForRate { get; set; }
        public Decimal taxAmount { get; set; }
        
        public TaxSummary(Decimal rate, Decimal amountForRate, Decimal taxAmount) {
            this.rate = rate;
            this.amountForRate = amountForRate;
            this.taxAmount = taxAmount;
        }
    }
}