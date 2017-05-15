public class refundController {
    
    public Id thisId {get;set;}
    
    public order oldOrder {get;set;}
    public List<OrderItem> oldItems {get;set;}
    
    public order newOrder {get;set;}
    public List<OrderItem> newItems {get;set;}
    
    public priceBook2 priceBook {get;set;}
    public Product2 giftCard {get;set;}
    public pricebookentry pbe_giftcard {get;set;}
    
    
    
    public refundController(ApexPages.StandardController controller) {
        thisId = controller.getId();
        oldOrder = [SELECT AccountId,ActivatedById,ActivatedDate,BillingAddress,BillingCity,BillingCountry,BillingGeocodeAccuracy,BillingLatitude,BillingLongitude,BillingPostalCode,BillingState,BillingStreet,Cases__c,CompanyAuthorizedById,Contact__c,ContractId,CreatedById,CreatedDate,Credit_Card_Expiration_Date__c,Credit_Card_Name__c,Credit_Card_Number__c,CustomerAuthorizedById,DB_Days__c,Description,EffectiveDate,EndDate,Id,Indicator__c,IsDeleted,IsReductionOrder,LastModifiedById,LastModifiedDate,LastReferencedDate,LastViewedDate,OrderNumber,OriginalOrderId,OwnerId,Pricebook2Id,RecordTypeId,ShippingAddress,ShippingCity,ShippingCountry,ShippingGeocodeAccuracy,ShippingLatitude,ShippingLongitude,ShippingPostalCode,ShippingState,ShippingStreet,Shipping_Method__c,Status,StatusCode,SystemModstamp,TotalAmount,Tracking_ID__c,Type,URLsrc__c 
                    FROM Order WHERE Id =: thisId];
        
        oldItems = [SELECT Id, UnitPrice, PricebookEntryId, Quantity FROM OrderItem WHERE OrderId =: thisId];
        
        newItems = new List<OrderItem>();
        
        giftCard = [SELECT Id FROM Product2 WHERE ProductCode = 'Sorry Gift Card'];
        
        priceBook = [SELECT Id, Name FROM Pricebook2 WHERE Name = 'North America*'];
        
        pbe_giftcard = [SELECT Id FROM PricebookEntry WHERE Product2Id =: giftCard.Id AND Pricebook2Id =: priceBook.Id];
    }
    
    public pageReference doRefund(){
                            
        newOrder = oldOrder.clone(false);
        newOrder.Status = 'Closed';
        
        insert newOrder;
        
        oldOrder.Status = 'Refunded';
        
        update oldOrder;       
        
        for(OrderItem o: oldItems){
            newItems.add(new OrderItem(
                PricebookEntryId = o.PricebookEntryId,
                OrderId = newOrder.Id,
                Quantity = o.Quantity,
                UnitPrice = (o.UnitPrice * 0.8)
            ));
        }
        
        for(OrderItem o: oldItems){
            o.UnitPrice = 0;
        }
        update oldItems;
        
        newItems.add(new OrderItem(PricebookEntryId = pbe_giftcard.Id, OrderId = newOrder.Id, Quantity = 1, UnitPrice = 0));
        
        insert newItems;
        
        PageReference orderPage = new ApexPages.StandardController(newOrder).view();
        orderPage.setRedirect(true);
        return orderPage;
    }

}