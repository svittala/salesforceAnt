trigger CalculateCatalogLISubtotal on Catalog_Line_Item__c (before insert, before update) {
    
    Map<String, Decimal> productIdToPrice = new Map<String, Decimal>();
     
    for(Catalog_Line_Item__c li : Trigger.new) {
        productIdToPrice.put(li.Product__c, 0);
    }
    
    for(Product2 p: [SELECT Id, Default_Price__c FROM Product2 WHERE Id IN : productIdToPrice.keySet()]) {
        productIdToPrice.put(p.Id, p.Default_Price__c);
    }
    
    for(Catalog_Line_Item__c li : Trigger.new) {
        System.debug('List Item Quantity: ' + li.Quantity__c);
        System.debug('Product ID: ' + li.Product__c);
        System.debug('Product Price: ' + productIdToPrice.get(li.Product__c));
        System.debug('List Item Subtotal: ' + li.Subtotal__c);
        li.Subtotal__c = productIdToPrice.get(li.Product__c) * li.Quantity__c;
    }

}