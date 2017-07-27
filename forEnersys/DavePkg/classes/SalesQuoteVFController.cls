public class SalesQuoteVFController {

    public SalesQuoteVFController(ApexPages.StandardController c) {
    }

    public Flow.Interview.CreateSalesQuotation myFlow { get; set; }
    
    public String getmyID() {
        if (myFlow==null) {
            return '';
    
        } else {
            return (String)myFlow.getVariableValue('QuoteID');
    
        }
    }
    
    public PageReference getFinishLocation(){
    String theme = UserInfo.getUiThemeDisplayed();
    PageReference p ;
    
       
    String url;
    if(theme == 'Theme3'){
    p = new PageReference('/' + getmyID()+'?edit');
    }else{
     p = new PageReference('https://enersys--int.lightning.force.com/one/one.app#/sObject/' + getmyID()+'/edit');
    }
        p.setRedirect(true); 
        return p;
    }
}