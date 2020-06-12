trigger createCommunityOrder on Order (after insert, after update) {
    
    List< Sales_Order__c > theOrders = new List< Sales_Order__c >();
    
    Product2 theProd =[SELECT Id, ProductCode FROM Product2 WHERE ProductCode = '26-week Subscription'];
    
    if(trigger.isInsert){
        for(Order o: trigger.new){
            theOrders.add(
                new Sales_Order__c(
                    Account__c = o.AccountId,
                    Order_Amount__c = o.TotalAmount,
                    Order_Date__c = o.EffectiveDate,
                    Status__c = o.Status,
                    Product__c = theProd.id,
                    Order_Standard__c = o.id
                )
            );
        }
        
        insert theOrders;
    }
    
    if(trigger.isUpdate){
        
        Map<Id,String> oIdsStatus = new Map<Id,String>();
        
        for(order o: trigger.new){
           oIdsStatus.put(o.Id,o.Status);
        }
        
        theOrders = [SELECT Order_Amount__c, Order_Standard__c, Status__c FROM Sales_Order__c WHERE Order_Standard__c IN: oIdsStatus.keySet()];
        
        if(theOrders.size() >0){
            for(Sales_Order__c o: theOrders){
               o.Status__c = oIdsStatus.get(o.Order_Standard__c);
            }
            
            update theOrders;      
        }  
    }
}