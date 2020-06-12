global class StockOrder {
    public String query {get;set;}
    public List<Product2> myProducts {get;set;}
    public List<ProductWrapper> myWrappers {get;set;}
    public List<ProductWrapper> orderItems {get;set;}
    public List<ProductWrapper> relatedItems {get;set;}
    
    public String addProductId {get;set;}
    public String addProductQuantity {Get;set;}
    public String removeProductId {get;set;}
    public ProductWrapper myProduct {get;set;}
    
    public Pricebook2 stdPricebook {get;set;}
    
    public boolean isEmpty {get;set;}
    
    public String listSize {get;set;}
    public String removeSize2 {get;set;}
    
    public Account myAct {get;set;}
    
    public Stock_Order2__c order {get;set;}
    public String thePricebook {get;set;}
    public Integer orderCount {Get;set;}
    
    public boolean hasOrders {get;set;}
    public boolean hasRelated {Get;set;}
    
    public String inputBrand {get;set;}
    public String inputCategory {get;set;}
    
    public String q {get;set;}
    
    public String myOrderId {Get;set;}
    
    public StockOrder(ApexPages.StandardController myCtrl) {
        orderCount = 0;
        hasOrders = false;
        hasRelated = false;
        order = new Stock_Order2__c();
        relatedItems = new List<ProductWrapper>();
        Stock_Order2__c so;
        String accountId;
        if (myCtrl.getId() != null) {
            if(myCtrl.getId().substring(0,3) == '001') {
                so = new Stock_Order2__c();
                accountId = myCtrl.getId();
            }else {
                so = (Stock_Order2__c) myCtrl.getRecord();
                accountId = ApexPages.CurrentPage().getParameters().get('retURL');
            }
        }else {
            so = new Stock_Order2__c();
            accountId = ApexPages.CurrentPage().getParameters().get('retURL');
        }
        if (accountId != null) {
            accountId = accountid.replace('/','');
            myAct = [select id,name, ShippingStreet,shippingstate,shippingcity,shippingpostalcode,billingstreet,billingcity,billingstate,billingpostalcode from Account where id=:accountId];
            order.Account__c = myAct.id;
        }
        order.Status__c = 'In Progress';
        isEmpty = false;
        myProducts = [SELECT id,Help_Sell__c,  Image_del__c, On_Back_Order__c ,name,SKU__c,SR_Image__c ,Product_Image_Url__c, baseImageUrl__c,  Brand__c,Category__c,family,description FROM Product2];

        integer count = 0;
        try {
            List<Pricebook2> bookList = [select id from pricebook2];
            count = bookList.size();
            stdPricebook = [Select id,name,isStandard FROM Pricebook2 where isStandard = true limit 1];
        }catch (exception e) {
            try {
                stdPricebook = [Select id,name from Pricebook2 limit 1];
            }catch(exception e2) {
                System.assert(false,'You need to create a pricebook. Number = ' + count);
            }
        }
        thePricebook = stdPricebook.id;
        
        getWrappers(myProducts);
        orderItems = new List<ProductWrapper>();
        
        
    }
     public StockOrder(){
        orderCount = 0;
        hasOrders = false;
        hasRelated = false;
        order = new Stock_Order2__c();
        relatedItems = new List<ProductWrapper>();
        Stock_Order2__c so = new Stock_Order2__c();
        if (so.Account__c != null) {
            myAct = [select id,name, ShippingStreet,shippingstate,shippingcity,shippingpostalcode,billingstreet,billingcity,billingstate,billingpostalcode from Account where id=:so.Account__c];
            order.Account__c = myAct.id;
        }
            
        order.Status__c = 'In Progress';
        isEmpty = false;
        myProducts = [SELECT id,Help_Sell__c,  Image_del__c, On_Back_Order__c ,name,SKU__c,SR_Image__c ,Product_Image_Url__c, baseImageUrl__c,  Brand__c,Category__c,family,description FROM Product2];
        //myProducts.remove(myProducts.size() - 1);
        //myProducts.remove(myProducts.size() - 1);
        integer count = 0;
        try {
            List<Pricebook2> bookList = [select id from pricebook2];
            count = bookList.size();
            stdPricebook = [Select id,name,isStandard FROM Pricebook2 where isStandard = true limit 1];
        }catch (exception e) {
            try {
                stdPricebook = [Select id,name from Pricebook2 limit 1];
            }catch(exception e2) {
                System.assert(false,'You need to create a pricebook. Number = ' + count);
            }
        }
        thePricebook = stdPricebook.id;
        
        getWrappers(myProducts);
        orderItems = new List<ProductWrapper>();
     }
    
    public String createProduct() {
        Product2 p = [Select id,SKU__c,SR_Image__c  from product2 limit 1];
        addProductId = p.id;
        return p.id;
    }
    
    public List<SelectOption> getOptions() {
        List<SelectOption> options = new List<selectOption>();
            options.add(new SelectOption('--','--'));    
            options.add(new SelectOption('ground','Ground - $2.99'));
            options.add(new SelectOption('2air','2nd Day Air - $5.99'));
            options.add(new SelectOption('1air','Next Day Air = $9.99'));
        return options;
    }
    
    public List<SelectOption> getCategories() {
        List<SelectOption> options = new List<SelectOption>();
        options.add(new SelectOption('--','--Category--'));
        
        Schema.DescribeFieldResult fieldResult = Product2.Category__c.getDescribe();
        List<Schema.PicklistEntry> familyValues = fieldResult.getPickListValues();
        for (Schema.PicklistEntry f: familyValues) {
            options.add(new SelectOption(f.getLabel(),f.getValue()));
        }
        return options;
    }
    public List<SelectOption> getBrands() {
        List<SelectOption> options = new List<SelectOption>();
        options.add(new SelectOption('--','--Brands--'));
        
        Schema.DescribeFieldResult fieldResult = Product2.Brand__c.getDescribe();
        List<Schema.PicklistEntry> familyValues = fieldResult.getPickListValues();
        for (Schema.PicklistEntry f: familyValues) {
            options.add(new SelectOption(f.getLabel(),f.getValue()));
        }
        return options;
    }
    
    public String creditNumber {get;set;}
    public string creditCode {get;set;}
    public String creditType {get;set;}
    public List<SelectOption> getCreditTypes() {
        List<SelectOption> options = new List<selectOption>();
            options.add(new SelectOption('--','--'));    
            options.add(new SelectOption('Visa','Visa'));
            options.add(new SelectOption('MasterCard','MasterCard'));
            options.add(new SelectOption('American Express','American Express'));
        return options;
    }
    
    public List<SelectOption> getPriceBooks() {
        List<SelectOption> options = new List<SelectOption>();
        options.add(new SelectOption('--','--'));
        List<Pricebook2> pList = [Select id,name from Pricebook2];
        
        for (Pricebook2 p:pList) {
            options.add(new SelectOption(p.id,p.name));
        }
        return options;
    }
    
    public void getWrappers(List<Product2> pList) {
        myWrappers = new List<ProductWrapper>();
        for (Product2 p:pList) {
            myWrappers.add(new ProductWrapper(p,stdPricebook));
        }
        if (myWrappers.size() > 0 ) myProduct = myWrappers[0];
    }

    
    public String getQueryString(String id) {
        PageReference pr = ApexPages.CurrentPage();
        Map<String,String> params = pr.getParameters();
        return params.get(id);
    }
    
    public void showProduct() {
        for(ProductWrapper p:myWrappers) {
            if (p.product.id == addProductId) {
                 myProduct = p;
             }
        }
    }

    public void addProduct() {
            Product2 p2;
            if (addProductId != null && addProductId != '') {
                for(ProductWrapper p:myWrappers) {
                    if (p.product.id == addProductId) {
                         p2 = p.product;
                         //p.quantity = addProductQuantity;
                         orderItems.add(p);
                         system.debug('DEBUG, adding product: ' + p);
                         system.debug('DEBUG, product quantity: ' + addProductQuantity);
                         break;
                     }
                }
                orderCount = orderItems.size();
                if (orderCount > 0) hasOrders = true;
                updateSummary();
                system.debug('DEBUG: There are ' + orderCount + ' orders in the cart');
            }
            getRelatedProducts(p2);
            if(relatedItems != null) {
                if (relatedItems.size() > 0) hasRelated = true;
                else hasRelated = false;
            }
        
    }
    
    public void addRelated() {
        for(ProductWrapper p:relatedItems) {
            if (p.product.id == addProductId) {
                 orderItems.add(p);
                 getRelatedProducts(p.product);
                 break;
             }
        }
        updateSummary();
    }
    
    public product2 getTestProduct(String myId) {
        return [select id,SKU__c,SR_Image__c  from Product2 where id = :myId];
    }
    

    

    
    public void removeProduct() {
        if (orderItems.size() == 1) orderItems.clear();
        else {
            try {
                integer i = 0;
                integer index;
                for (ProductWrapper pw:orderItems) {
                    if (pw.product.id == removeProductId) { 
                        index = i; 
                        break;
                    }
                    i++;
                }
                if (index != null) {
                    orderItems.remove(index);
                }
                updateSummary();
            } catch(exception e) {
                error = 'error: ' + e;
            }
        }
        orderCount = orderItems.size();
        if (orderCount > 0) hasOrders = true;
        else hasOrders = false;
        hasRelated = false;
        updateSummary();
    }
    
    public void mysearch() {
        if(query == null) query = ApexPages.CurrentPage().getParameters().get('query');
        system.debug('DEBUG: query = ' + query);
        hasRelated=false;
        if (inputBrand != null) {
            inputBrand = inputBrand.replace('\'', '\\\'');
        }
        String myLike = '%' + query + '%';
        
        if (query != null && query.length() > 1) {
            q = 'SELECT id,Help_Sell__c, On_Back_Order__c, Image_del__c, Brand__c, Category__c,name,SKU__c,SR_Image__c, Product_Image_Url__c , baseImageUrl__c ,family,description FROM Product2 WHERE name LIKE :myLike OR SKU__c LIKE :myLike';
            getWhere();
        } else {
           q = 'SELECT id,Help_Sell__c, On_Back_Order__c, Image_del__c, Brand__c, Category__c,name,SKU__c,SR_Image__c, Product_Image_Url__c, baseImageUrl__c, family,description FROM Product2';
           getWhere2(); 
        }
        system.debug('DEBUG: ' + q);
        myProducts = (List<Product2>) database.query(q);        
        getWrappers(myProducts);
    }
    
    public void getWhere2() {
        boolean hasWhere = false;
        if (inputCategory != '--') {
            hasWhere = addWhere(hasWhere, inputCategory, 'Category__c');      
        }
        if (inputBrand != '--') {
            hasWhere = addWhere(hasWhere, inputBrand, 'Brand__c'); 
        }
    }
    
    public void getWhere() {       
        if (inputCategory != '--') {
            String myLike = ' \'%' + inputCategory + '%\'';
            q += ' OR Category__c LIKE ' + myLike + ' ';         
        }
        if (inputBrand != '--') {
            String myLike = ' \'%' + inputBrand + '%\'';
            q += ' OR Brand__c LIKE ' + myLike + ' ';  
        }
    }
     
    public boolean addWhere(boolean hasWhere, String value,String valueName) {
        String myLike = ' \'%' + value + '%\'';
        if (hasWhere) {
            q += ' AND ' + valueName + ' LIKE ' + myLike + ' ';
        } else {
            q += ' WHERE ' + valueName + ' LIKE ' + myLike + ' ';
        }
        return true;
    }
    
    public String escapeReservedCharacters(String s) {
       String reservedCharacters = '—&|!{}[]()^~:\\\"\'+-';
     
       for (Integer i = 0; i < reservedCharacters.length(); i++)
         s = s.replace(reservedCharacters.substring(i,i+1), '\\' + reservedCharacters.substring(i,i+1));
     
        return s;
    }
    
    public void getRelatedProducts(Product2 p) {
        if (p != null) {
            List<Related_Products__c> rpList = new List<Related_Products__c>();
            rpList = [Select id,name, Related_Product_SKU__c, Sold_Product_SKU__c from Related_Products__c where Sold_Product_SKU__c = :p.SKU__c];
            Set<String> skuList = new Set<String>();
            for (Related_Products__c rp:rpList) {
                skuList.add(rp.Related_Product_SKU__c);
            }
            List<Product2> prods = [Select id,Help_Sell__c, Image_del__c, On_Back_Order__c ,Category__c ,Brand__c,name, SKU__c,SR_Image__c ,Product_Image_Url__c, baseImageUrl__c ,Description from product2 where SKU__c in :skuList];
            relatedItems = new List<ProductWrapper>();
            ProductWrapper pw;
            for (Product2 p2:prods) {
                pw = new ProductWrapper(p2,stdPricebook);
                relatedItems.add(pw);
                myWrappers.add(pw);
            }
        }
    }
    
    
    public double subTotal {get;set;}
    public double tax {get;set;}
    public double shipping {get;set;}
    public String shippingValue{get;set;}
    public double discount {Get;set;}
    
    public decimal total {get;set;}
    public double totalNumber {get;set;}
    public String error {get;set;}
    
    
     public String currentProductId {get;set;}
    public void clearList() {
        orderItems.clear();
        orderItems = new List<ProductWrapper>();
        orderCount = 0;
        hasOrders = false;
        updateSummary();
    }
    
    public void updateSummary() {
        subTotal = getSubTotal();
        if (subTotal > 0) {
            shipping = getShipping();
            tax = double.valueof(.0725) * (subTotal + shipping);
            totalNumber = tax + shipping + subTotal;
        } else {
            shipping = 0;
            tax = 0;
            totalNumber = 0;
        }
    }
    
    public double getSubTotal() {
        total = 0;
        discount = 0;
        for (ProductWrapper p:orderItems) {
            try {
                if (p.discountCode != '' && p.discountCode != null) {
                    decimal myPrice = decimal.valueOf(p.price);
                    total += myPrice * decimal.valueOf(p.quantity);
                    double discount2 = .1*total;
                    discount += discount2;
                    total = total - discount2;
                    if (currentProductId != '' && currentProductId != null) {
                        if (currentProductId == p.product.id) {
                            if (!p.isDiscounted) {
                                p.price = String.valueOf(myPrice - .1*myPrice);
                                currentProductId = '';
                                p.isDiscounted=true;
                            }
                        }
                    }
                } else {
                    total += decimal.valueOf(p.price) * decimal.valueOf(p.quantity);
                }error = '';
            } catch (exception e) {
                error = 'There was an error calculating the price: ' + e + ' currentProductId: '+currentProductId;
            }
        }
        return double.valueOf(total);
    }
    public double getShipping() {
        if(shippingValue == '--') {
            return double.valueOf('0');
        }else if (shippingValue =='ground') {
            return double.valueOf('2.99');
        }else if (shippingValue =='2air') {
            return double.valueOf('5.99');
        }else if (shippingValue =='1air') {
            return double.valueOf('9.99');
        }      
        return 0;
    }
    
    @RemoteAction
    global static String saveOrder(String orderInfo, String accountId) {
        Stock_Order2__c order = new Stock_Order2__c();
        order.status__c = 'Approved';
        order.Account__c = accountId;
        insert order;
        
        
        List<Order_Line_Detail2__c> oList = new List<Order_Line_Detail2__c>();
        JSONParser parser = JSON.createParser(orderinfo);
        Double grandTotal = 0.0;
        while (parser.nextToken() != null) {
            System.debug('DEBUG' + parser.getText());
            String productId;
            String quantity;
            String price;
            if ((parser.getCurrentToken() == JSONToken.FIELD_NAME) &&  (parser.getText() == 'productId')) {
                System.debug('found product Id!');
                parser.nextToken();
                productId = parser.getText();
                
                parser.nextToken();
                parser.nextToken();
                
                quantity = parser.getText();
                
                parser.nextToken();
                parser.nextToken();
                
                price = parser.getText();
                Order_Line_Detail2__c old = new Order_Line_Detail2__c();
                old.Price__c = decimal.valueOf(price) * decimal.valueOf(quantity);
                old.Product__c = productId;
                old.quantity__c = decimal.valueOf(quantity);
                old.Stock_Order__c = order.id;
                oList.add(old);
            }
        }
        insert olist;
        return order.Id;
    }
    
    
    public PageReference save() {
        order = new Stock_Order2__c();
        order.Status__c = 'Approved';
        if(myAct != null) order.Account__c = myAct.id;
        insert order;
        
        List<Order_Line_Detail2__c> oList = new List<Order_Line_Detail2__c>();
        for(ProductWrapper p:orderItems) {
            Order_Line_Detail2__c old = new Order_Line_Detail2__c();
            old.Price__c = decimal.valueOf(p.price) * decimal.valueOf(p.quantity);
            old.Product__c = p.product.id;
            old.quantity__c = decimal.valueOf(p.quantity);
            old.sku_name__c = p.product.sku__c;
            old.Stock_Order__c = order.id;
            oList.add(old);
        }    
        insert olist;
        PageReference orderPage = new ApexPages.StandardController(order).view();
        orderPage.setRedirect(true);
        return orderPage;
        
        return null;
    }
    
    public class ProductWrapper {
        public boolean selected {get;set;}
        public String quantity {get;set;}
        public String price {get;set;}
        public Product2 product {get;set;}
        public String discountCode {get;set;}
        public boolean isDiscounted {get;set;}
        public String shortName {get;set;}
        public String imgUrl {get;set;}
        public boolean hasImage {Get;set;}
        
        private PricebookEntry pe {get;set;}
        
        public ProductWrapper(Product2 prod, Pricebook2 pb) {
            selected = false;
            isDiscounted = false;
            hasImage = false;
            quantity='1';
            product = prod;
            if (prod.name.length() > 15) { 
                shortname = prod.name.substring(0,14) + '...';
            } else shortname = prod.name;
            List<PricebookEntry> peList = [Select p.UseStandardPrice, p.UnitPrice, p.SystemModstamp, p.ProductCode, p.Product2Id, p.Pricebook2Id, p.Name, p.LastModifiedDate, p.LastModifiedById, p.IsDeleted, p.IsActive, p.Id, p.CreatedDate, p.CreatedById From PricebookEntry p where p.Product2Id = :prod.Id AND p.Pricebook2Id = :pb.Id limit 1];
            if (peList.size() >0) {
                pe = peList[0];
                price = String.valueOf(pe.UnitPrice);
            } else {
                //product not in standard pricebook
                price = '0';
            }
            if (prod.Image_del__c != null) hasImage = true;
        }
    }

}