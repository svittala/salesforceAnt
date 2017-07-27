public class CreateOrderVFController {

    public CreateOrderVFController(ApexPages.StandardController c) {
    }

    public Flow.Interview.CreateOrder myFlow { get; set; }
    
    public String getQuoteID() {
        if (myFlow==null) {
            return '';
    
        } else {
            return (String)myFlow.getVariableValue('varQuoteID');
    
        }
    }
    
    public String getOrderID() {
        if (myFlow==null) {
            return '';
    
        } else {
            return (String)myFlow.getVariableValue('varOrderID');
    
        }
    }
    
    public PageReference getFinishLocation(){
        PageReference p = null;
        if (!String.isBlank(getOrderID())) {
            p = new PageReference('/' + getOrderID());
            
        } else {
            p = new PageReference('/' + getQuoteID());
            
        }
        
        p.setRedirect(true);
        return p;
    }
}