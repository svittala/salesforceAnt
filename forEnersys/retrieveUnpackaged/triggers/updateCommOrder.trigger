trigger updateCommOrder on OrderItem (after insert,after update) {
    
        List<Id> oId = new List<Id>();
        
        for(OrderItem o: trigger.new){
            oId.add(o.OrderId);
        }
        
        List<Order> orderAmounts = [SELECT Id, TotalAmount FROM Order WHERE Id IN: oId];
        Map<Id,Decimal> oIdsAmount = new Map<Id,Decimal>();
        
        for(order o: orderAmounts){
           oIdsAmount.put(o.Id,o.TotalAmount);
        }
        
        List<Sales_Order__c> theOrders = [SELECT Order_Amount__c, Order_Standard__c FROM Sales_Order__c WHERE Order_Standard__c IN: oIdsAmount.keySet()];
        
        for(Sales_Order__c o: theOrders){
           o.Order_Amount__c = oIdsAmount.get(o.Order_Standard__c);
        }
        
        update theOrders;      
    
}