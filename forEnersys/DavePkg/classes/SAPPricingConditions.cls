public with sharing class SAPPricingConditions {
    
    public static final String SAP_LINE_ITEM = 'VA00';
    public static final String SAP_LINE_ITEM2 = 'PR00';
    
	public static final String SAP_INTERNAL_REBATE = 'ZRI0';
	public static final String SAP_EXTERNAL_REBATE = 'ZRE0';
	public static final String SAP_INTERNAL_REBATE2 = 'ZRE1';
	public static final String SAP_VOLUME_DISCOUNT = 'ZREQ';
	public static final String SAP_NET_PRICE = 'PN00';
	public static final String SAP_PRICE_NETTO = 'ZNP0';
	public static final String SAP_TOTAL_PRICE = 'HM00';
	public static final String SAP_LEAD_ADJUSTER = 'ZMTZ';
	public static final String SAP_VAT = 'MWST';
	
	public static final String SAP_SCRAP_COLLECTION = 'ZGAB';
	public static final String SAP_PROFIT_MARGIN_VALUE = 'ZDB0';
	public static final String SAP_PROFIT_MARGIN_PERCENT = 'ZDB2';
	
	public static final String SAP_GUARANTEE_COSTS = 'ZSEG';
	public static final String SAP_PACKING_COSTS = 'ZSEV';
	public static final String SAP_SHIPMENT_COSTS = 'ZSEF';
	public static final String SAP_COMISSION_COSTS = 'ZSEP';
	public static final String SAP_CALCULAT_SCONTO = 'ZSKT';
	public static final String SAP_VOLUME_REBATE = 'ZBON';
	public static final String SAP_OTHER_SDCS = 'ZSSE';
	
	// Italian conditions
	public static final String SAP_RAW_ADJUSTER = 'ZMZU';
	public static final String SAP_ECO_CONTR = 'ZCNV';
	public static final String SAP_TRANSPORT = 'ZFAI';
	public static final String SAP_FREIGHT = 'ZFZI';
	public static final String SAP_PACKING = 'ZPAI';
	public static final String SAP_DISCOUNT_GROSS_PRICELIST = 'ZSTA';
	
    public Decimal grossAmount { get; set; }		// initial price without internal rebate
    public Decimal grossAmountTotal { get; set; }
    
    public Decimal listAmount { get; set; }		// list price with internal rebate included
    public Decimal listAmountTotal { get; set; }
    
    public Decimal netAmount { get; set; }		// net price with all discounts included
    public Decimal netAmountTotal { get; set; }
    
    public Decimal internalDiscount { get; set; }
    public Decimal internalDiscountAmount { get; set; }
    public Decimal internalDiscountSubtotal { get; set; }
    public Decimal internalDiscountSubtotalAmount { get; set; }
    
    public Decimal externalDiscount { get; set; }
    public Decimal externalDiscountAmount { get; set; }
    public Decimal externalDiscountSubtotal { get; set; }
    public Decimal externalDiscountSubtotalAmount { get; set; }
    
    public Decimal volumeDiscount { get; set; }
    public Decimal volumeDiscountAmount { get; set; }
    
    public Decimal leadAdjuster { get; set; }
    public Decimal leadAdjusterAmount { get; set; }
    public Decimal leadAdjusterSubtotal { get; set; }
    public Decimal leadAdjusterSubtotalAmount { get; set; }
    
    public Decimal vatRate { get; set; }
    public Decimal vatAmount { get; set; }
    
    public Decimal rawMaterialAdjuster { get; set; }
    public Decimal rawMaterialAdjusterAmount { get; set; }
    
    public Decimal ecoContribution { get; set; }
    public Decimal ecoContributionTotal { get; set; }
    
    public Decimal transport { get; set; }
    public Decimal transportTotal { get; set; }
    
    public Decimal freight { get; set; }
    public Decimal freightTotal { get; set; }
    
    public Decimal packingExpenses { get; set; }
    public Decimal packingExpensesTotal { get; set; }
    
    public Decimal discountFromGrossPricelist { get; set; }
    public Decimal discountFromGrossPricelistAmount { get; set; }
    
    public Decimal guaranteeCosts { get; set; }
    public Decimal guaranteeCostsAmount { get; set; }
    
    public Decimal packingCosts { get; set; }
    public Decimal packingCostsAmount { get; set; }
    
    public Decimal shipmentCosts { get; set; }
    public Decimal shipmentCostsAmount { get; set; }
    
    public Decimal comissionCosts { get; set; }
    public Decimal comissionCostsAmount { get; set; }
    
    public Decimal calculatedSconto { get; set; }
    public Decimal calculatedScontoAmount { get; set; }
    
    public Decimal volumeRebate { get; set; }
    public Decimal volumeRebateAmount { get; set; }
    
    public Decimal otherSDCS { get; set; }
    public Decimal otherSDCSAmount { get; set; }
    
    public Decimal profitMargin { get; set; }
    public Decimal profitMarginAmount { get; set; }
    
    public Decimal overallDiscount { get; set; }
    public String currencyCode { get; set; }
    
    public Boolean orderTotal { get; set; }		// set if line item prices are suppressed at quote header level
    
    public List<ConfiguratorWS.PricingCondition> lineItems { get; set; }
    
    private Set<String> conditionCodes = new Set<String>();
    
    public SAPPricingConditions(String pricingConditionsJSON) {
    	lineItems = new List<ConfiguratorWS.PricingCondition>();
    	parseConditions(pricingConditionsJSON);
    }
    
    public SAPPricingConditions(List<ConfiguratorWS.PricingCondition> pricingConditions) {
    	lineItems = new List<ConfiguratorWS.PricingCondition>();
    	parseConditions(pricingConditions);
    }

	private void parseConditions(String pricingConditionsJSON) {
		List<ConfiguratorWS.PricingCondition> pricingConditions = (List<ConfiguratorWS.PricingCondition>) JSON.deserialize(pricingConditionsJSON, List<ConfiguratorWS.PricingCondition>.class);
		parseConditions(pricingConditions);
	}   
	 
    private void parseConditions(List<ConfiguratorWS.PricingCondition> pricingConditions) {
    	// loop through pricing conditions
		if(pricingConditions != null) {
			for(Integer i = 0; i < pricingConditions.size(); i++) {
				ConfiguratorWS.PricingCondition pricingCondition = pricingConditions[i];
				
				conditionCodes.add(pricingCondition.conditionTypeCode);
				
				if(pricingCondition.conditionTypeCode == SAP_LINE_ITEM || pricingCondition.conditionTypeCode == SAP_LINE_ITEM2) {
					lineItems.add(pricingCondition);
				}
				
				if(pricingCondition.conditionTypeCode == SAP_INTERNAL_REBATE) {	// internal rebate ZRI0					
					internalDiscount = -pricingCondition.amount;
					internalDiscountAmount = -pricingCondition.value;
					internalDiscountSubtotal = pricingConditions[i+1].amount;
					internalDiscountSubtotalAmount = pricingConditions[i+1].value;
				}
				
				if(pricingCondition.conditionTypeCode == SAP_EXTERNAL_REBATE) {	// external rebate ZRE0					
					externalDiscount = -pricingCondition.amount;
					externalDiscountAmount = -pricingCondition.value;
					externalDiscountSubtotal = pricingConditions[i+1].amount;
					externalDiscountSubtotalAmount = pricingConditions[i+1].value;
				}
					
				if(pricingCondition.conditionTypeCode == SAP_VOLUME_DISCOUNT) {	// volume discount ZREQ					
					volumeDiscount = -pricingCondition.amount;
					volumeDiscountAmount = -pricingCondition.value; 
				}
				
				if(pricingCondition.conditionTypeCode == SAP_NET_PRICE) {	// price netto ZNP0
					listAmount = pricingCondition.amount;
					listAmountTotal = pricingCondition.value;
				}
					
				if(pricingCondition.conditionTypeCode == SAP_PRICE_NETTO) {	// net price PN00
					listAmount = pricingCondition.amount;
					listAmountTotal = pricingCondition.value;
				}
				
				if(pricingCondition.conditionTypeCode == SAP_SCRAP_COLLECTION) { // scrap collection ZGAB
					listAmount = pricingConditions[i+1].amount;
					listAmountTotal = pricingConditions[i+1].value;
				}
								
				if(pricingCondition.conditionTypeCode == SAP_LEAD_ADJUSTER) {	// lead adjuster ZMTZ
					
					leadAdjuster = pricingCondition.amount;
					leadAdjusterAmount = pricingCondition.value;
					leadAdjusterSubtotal = pricingConditions[i+1].amount;
					leadAdjusterSubtotalAmount = pricingConditions[i+1].value;
					
				}
					
				if(pricingCondition.conditionTypeCode == SAP_VAT) {	// VAT MWST
					vatRate = pricingCondition.amount;
					vatAmount = pricingCondition.value;
				}
				
				if(pricingCondition.conditionTypeCode == SAP_RAW_ADJUSTER) {	// raw material adjuster ZMZU
					rawMaterialAdjuster = pricingCondition.amount;
					rawMaterialAdjusterAmount = pricingCondition.value;
				}
				
				if(pricingCondition.conditionTypeCode == SAP_ECO_CONTR) {	// eco contibution ZNCV
					ecoContribution = pricingCondition.amount;
					ecoContributionTotal = pricingCondition.value;
				}
				
				if(pricingCondition.conditionTypeCode == SAP_TRANSPORT) {	// transport ZFAI
					transport = pricingCondition.amount;
					transportTotal = pricingCondition.value;
				}
				
				if(pricingCondition.conditionTypeCode == SAP_FREIGHT) {	// freight ZFZI
					freight = pricingCondition.amount;
					freightTotal = pricingCondition.value;
				}
				
				if(pricingCondition.conditionTypeCode == SAP_PACKING) {	// packing ZPAI
					packingExpenses = pricingCondition.amount;
					packingExpensesTotal = pricingCondition.value;
				}
				
				if(pricingCondition.conditionTypeCode == SAP_DISCOUNT_GROSS_PRICELIST) {	// discount from gross pricelist ZPAI
					discountFromGrossPricelist = pricingCondition.amount;
					discountFromGrossPricelistAmount = pricingCondition.value;
				}
				
				if(pricingCondition.conditionTypeCode == SAP_GUARANTEE_COSTS) {	// guarantee costs ZSEG
					guaranteeCosts = pricingCondition.amount;
					guaranteeCostsAmount = pricingCondition.value;
				}
				
				
				if(pricingCondition.conditionTypeCode == SAP_PACKING_COSTS) {	// packing costs ZSEV
					packingCosts = pricingCondition.amount;
					packingCostsAmount = pricingCondition.value;
				}
				
				
				if(pricingCondition.conditionTypeCode == SAP_SHIPMENT_COSTS) {	// shipment costs ZSEF
					shipmentCosts = pricingCondition.amount;
					shipmentCostsAmount = pricingCondition.value;
				}
				
				
				if(pricingCondition.conditionTypeCode == SAP_COMISSION_COSTS) {	// comission costs ZSEP
					comissionCosts = pricingCondition.amount;
					comissionCostsAmount = pricingCondition.value;
				}
				
				
				if(pricingCondition.conditionTypeCode == SAP_CALCULAT_SCONTO) {	// Calculat. sconto ZSKT
					calculatedSconto = pricingCondition.amount;
					calculatedScontoAmount = pricingCondition.value;
				}
				
				
				if(pricingCondition.conditionTypeCode == SAP_VOLUME_REBATE) {	// volume rebate ZBON
					volumeRebate = pricingCondition.amount;
					volumeRebateAmount = pricingCondition.value;
				}
				
				
				if(pricingCondition.conditionTypeCode == SAP_OTHER_SDCS) {	// other SDCS
					otherSDCS = pricingCondition.amount;
					otherSDCSAmount = pricingCondition.value;
				}
				
				if(pricingCondition.conditionTypeCode == SAP_PROFIT_MARGIN_PERCENT) {	// profit margin percent ZDB0
					profitMargin = pricingCondition.amount;
				}
				
				if(pricingCondition.conditionTypeCode == SAP_PROFIT_MARGIN_VALUE) {	// profit margin amount ZDB2
					profitMarginAmount = pricingCondition.amount;
				}
				
				if(pricingCondition.conditionTypeCode == SAP_TOTAL_PRICE) {	// price is set at header level
					orderTotal = true;
				}
			}
				
			// grab summaries
			grossAmount = pricingConditions[lineItems.size()].amount;		// first line after materials contains gross amount
			grossAmountTotal = pricingConditions[lineItems.size()].value;
			currencyCode = pricingConditions[lineItems.size()].currencyCode;
			
			// list amount	
			if(!conditionCodes.contains(SAP_NET_PRICE) && !conditionCodes.contains(SAP_SCRAP_COLLECTION)) {
				if(conditionCodes.contains(SAP_INTERNAL_REBATE) && !conditionCodes.contains(SAP_PRICE_NETTO)) {
					listAmount = internalDiscountSubtotal;
					listAmountTotal = internalDiscountSubtotalAmount;
				} else if(conditionCodes.contains(SAP_INTERNAL_REBATE2) && conditionCodes.contains(SAP_PRICE_NETTO)){
					// Rebate for ZNP0
					listAmount = leadAdjusterSubtotal;
					listAmountTotal = leadAdjusterSubtotalAmount;
				} else if (!conditionCodes.contains(SAP_PRICE_NETTO)){
					// no internal rebate
					listAmount = grossAmount;
					listAmountTotal = grossAmountTotal;
				}
			}
			
			// net amount
			if(conditionCodes.contains(SAP_LEAD_ADJUSTER)) {
				netAmount = leadAdjusterSubtotal;
				netAmountTotal = leadAdjusterSubtotalAmount;
			} else if(conditionCodes.contains(SAP_SCRAP_COLLECTION)) {
				netAmount = listAmount;
				netAmountTotal = listAmountTotal;
			} else {
				// no lead adjuster
				netAmount = 0;
				netAmountTotal = 0;
			}
			
			// calculate overall discount
			if(listAmountTotal != 0) {
				overallDiscount = (1 - (netAmountTotal / listAmountTotal)) * 100;
			} else {
				overallDiscount = 0; 
			}
		}
    }
}