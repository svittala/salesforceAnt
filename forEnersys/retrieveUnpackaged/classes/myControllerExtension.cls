public class myControllerExtension {

    private final Contact cont;
    public Account myAcc;
    public String myId;
    public Contact myContact;
    public Integer numberOfOrders;
    public List<Order> myOrders;
    public Order latestOrder;
    public List<Order> thisYearOrders;
    public Double allOrders;

    public myControllerExtension(ApexPages.StandardController stdController) {

        this.cont = (Contact)stdController.getRecord();
        myContact = [SELECT Id, AccountID FROM Contact WHERE Id =: cont.Id LIMIT 1];
        myAcc = [SELECT Id FROM Account WHERE Id =: myContact.AccountId LIMIT 1];
        myOrders = [SELECT ID, EffectiveDate, TotalAmount FROM Order WHERE AccountId =: myAcc.Id];
        latestOrder = [SELECT ID, EffectiveDate, TotalAmount FROM Order WHERE AccountId =: myAcc.Id ORDER BY EffectiveDate DESC LIMIT 1]; 
        thisYearOrders = [SELECT ID, TotalAmount, EffectiveDate FROM Order WHERE AccountId =: myAcc.Id AND EffectiveDate = THIS_YEAR];
    }
    
    public Double getThisYearOrders() {
        double sum = 0;
        for(Order myOrder : thisYearOrders){
            sum+=myOrder.TotalAmount;
        }       
        return sum;
    }

    public Double getAllOrders() {
        double sum = 0;
        for(Order myOrder : myOrders){
            sum+=myOrder.TotalAmount;
        }       
        return sum;
    }
    public Order getLatestOrder() {
        
        return latestOrder;
    }
    
    public Integer getNumberOfOrders() {
        Integer quantity = 0;
        for(Order myOrder : myOrders){
            quantity+=1;
        }
    
        return quantity;
    }
 }