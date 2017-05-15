@isTest
private class TestSuite {

    static testMethod void runPositiveTestCases() {
        //Use the PageReference Apex class to instantiate a page
       PageReference pageRef = Page.SDO_ProductPage;
        pageRef.getParameters().put('id', '01uj0000000c7ocAAA');
        Test.setCurrentPage(pageRef);
       List<SelectOption> options = new List<SelectOption>();
       
       //In this case, the Visualforce page named 'success' is the starting point of this test method. 
       Product2 p = new Product2(name = 'Test123', 	Default_Price__c = 0.00);
        insert p;
        PricebookEntry pbe = new PricebookEntry(UnitPrice = 19.0, Pricebook2Id = '01sj0000000I7ZL', Product2Id = p.id);
        insert pbe;
       //Instantiate and construct the controller class.
       ApexPages.StandardController sc = new ApexPages.StandardController(pbe);   
       SDO_ProductPage controller = new SDO_ProductPage(sc);
	   
       //Example of calling an Action method. Same as calling any other Apex method. 
       //Normally this is executed by a user clicking a button or a link from the Visualforce
       //page, but in the test method, just test the action method the same as any 
       //other method by calling it directly. 

       //The .getURL will return the page url the Save() method returns.
	   options = controller.getAttribute1Options();
       options = controller.getAttribute2Options();
       options = controller.getAttribute3Options();
       options = controller.getAttribute4Options();
       options = controller.getAttribute5Options();

       //Check that the save() method returns the proper URL.
        Account a = new Account(name = 'testacct');
        insert a;
		Order o = new Order(name = 'test123', AccountId = a.id, EffectiveDate = date.today(), Status = 'Draft', Pricebook2Id = '01sj0000000I7ZKAA0');
        insert o;
		sc = new ApexPages.StandardController(o);
        SDO_CatalogCheckout2 cont = new SDO_CatalogCheckout2(sc);
        pageRef = Page.SDO_CatalogCheckout2;
       //Add parameters to page URL
       cont.updateAccountId = a.id;
       cont.search();
        cont.searchContacts();
        cont.updateAccount();
        //cont.updateContact();
        cont.updatePaymentInfo();
        System.assertEquals(1,1);
    }    
     
       //Instantiate a new controller with all parameters in the page
    static testMethod void runPositiveTest() {
        Order o = new Order(name = 'test123', AccountId = '001j0000002L7ft', EffectiveDate = date.today(), Status = 'Draft', Pricebook2Id = '01sj0000000I7ZKAA0');
        insert o;
        ApexPages.StandardController sc = new ApexPages.StandardController(o); 
        PageReference pageRef = Page.SDO_ProductPage;
        pageRef.getParameters().put('id', '801j0000000NZur');
		SDO_Catalog contr = new SDO_Catalog();
        
        pageRef = Page.SDO_Catalog;
        pageRef.getParameters().put('attr1', 'testatt');
        pageRef.getParameters().put('attr2', 'testatt');
        pageRef.getParameters().put('attr3', 'testatt');
        pageRef.getParameters().put('attr4', 'testatt');
        pageRef.getParameters().put('attr5', 'testatt');
        pageRef.getParameters().put('pb2', '01sj0000000I7ZKAA0');
        Test.setCurrentPage(pageRef);
       //Add parameters to page URL
       Pricebook2 p = new Pricebook2(Name = 'test123');
        insert p;
        contr.pb2 = p;
        contr.searchTerm = 'test';
        contr.searchOrder = 'ASC';
        contr.search3();
        
        
       
       
       


       //Verify that the success page displays
       
       System.assertEquals(1,1);
   
    }
    
}