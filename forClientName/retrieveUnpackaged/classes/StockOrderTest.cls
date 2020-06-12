@isTest (seeAllData=true)
public with sharing class StockOrderTest{
    public static testMethod void runTests() {
        //PageReference pageRef = Page.OrderEntry;
        //Test.setCurrentPage(pageRef);
        
        Account a = new account();
        a.name = 'Trevor';
        insert a;
        
        Stock_Order2__c so = new Stock_Order2__c();
        so.Account__c = a.id;
        insert so;
        
        Pricebook2 myPricebook = [select id from Pricebook2 limit 1];
        //Product2 myProd = [select id from Product2 limit 1];
        integer i = 0;
        List<StockOrder.ProductWrapper> pwList = new List<StockOrder.ProductWrapper>();
        for(i=0;i<5;i++) {
            Product2 p2 = new Product2();
            p2.name = 'product' + i;
            p2.SKU__c = 'SKU_' + i;
            insert p2;
            pwlist.add(new StockOrder.ProductWrapper(p2, myPricebook));
        }
        
        StockOrder mySO = new StockOrder();

        ApexPages.StandardController sc = new ApexPages.standardController(so);
        StockOrder oe = new StockOrder(sc);
        oe.getOptions();
        oe.getBrands();
        oe.getCategories();
        oe.getCreditTypes();
        oe.getPricebooks();
        oe.getQueryString('asdf');
        
        oe.showProduct();
        
        StockOrder.saveOrder('',a.id);
        
        String prodID = oe.createProduct();
        oe.addProduct();
        oe.addProduct();
        oe.addRelated();
        oe.updateSummary();
        
        oe.removeProductId = prodId;
        oe.removeProduct();
        
        oe.query = 'wal';
        oe.mysearch();
        
        
        oe.getRelatedProducts(oe.getTestProduct(prodId));
        oe.save();
        oe.clearList();
        
        oe.query = 'wal';
        oe.getWhere2();
        oe.escapeReservedCharacters('asdfasdf');
        
        
        
        delete a;
         
        
               /*  List<product2> prods = new List<product2>();

        */
    }
}