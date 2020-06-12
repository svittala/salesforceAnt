public class createSubscriptionOrdersController {
    
    public List<Order> newOrders {get;set;}
    public List<OrderItem> newItems {get;set;}
    
    public priceBook2 priceBook {get;set;}
    public Product2 waterSubscript {get;set;}
    public pricebookentry pbe_watersub {get;set;}
    
    public Id thisId {get;set;}
    public Account thisAccount {get;set;}

    public createSubscriptionOrdersController(ApexPages.StandardController controller) {
        thisid = controller.getId();
        thisAccount = [SELECT Id FROM Account WHERE Id =:thisId];
        
        newOrders = new List<Order>();
        
        newItems = new List<OrderItem>();
        
        waterSubscript = [SELECT Id FROM Product2 WHERE ProductCode = '26-week Subscription'];
        
        priceBook = [SELECT Id, Name FROM Pricebook2 WHERE Name = 'North America*'];
        
        pbe_watersub = [SELECT Id FROM PricebookEntry WHERE Product2Id =: waterSubscript.Id AND Pricebook2Id =: priceBook.Id];
    }
    
    public pageReference addOrders(){
        
        for(integer i = 0; i < 10; i++){
            newOrders.add(new Order(
                AccountId = thisId,
                EffectiveDate = date.Today(),
                Status = 'Closed',
                PriceBook2Id = priceBook.Id,
                Type = 'Subscription'
            ));
        }
        
        insert newOrders;
        
        List<OrderItem> waterItems = new List<OrderItem>();
        
        for(Order o: newOrders){
            waterItems.add(
                new OrderItem(
                    OrderId = o.Id,
                    Quantity = 1,
                    UnitPrice = 1404,
                    PriceBookEntryId = pbe_watersub.Id
                )
            );
        }
        
        insert waterItems;
        
        PageReference acctPage = new ApexPages.StandardController(thisAccount).view();
        acctPage.setRedirect(true);
        return acctPage;
    }
}