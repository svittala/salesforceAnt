public class RentalQuoteVFController {

    public RentalQuoteVFController(ApexPages.StandardController c) {
    }

    public Flow.Interview.CreateRentalQuotation myFlow { get; set; }
    
    public String getmyID() {
        if (myFlow==null) {
            return '';
    
        } else {
            return (String)myFlow.getVariableValue('QuoteID');
    
        }
    }
    
    public PageReference getFinishLocation(){
        PageReference p = new PageReference('/' + getmyID());
        p.setRedirect(true);
        return p;
    }
}