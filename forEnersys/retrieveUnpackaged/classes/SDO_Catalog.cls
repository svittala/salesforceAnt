public with sharing class SDO_Catalog {

    public List<ProductWrapper> pwList {get;set;}
    public blob b {Get;set;}

    //filter & search

    public List<String> Attribute1 {get;set;}
    public List<String> Attribute2 {get;set;}
    public List<String> Attribute3 {get;set;}
    public List<String> Attribute4 {get;set;}
    public List<String> Attribute5 {get;set;}

    public string Attribute1Name {get;set;}
    public string Attribute2Name {get;set;}
    public string Attribute3Name {get;set;}
    public string Attribute4Name {get;set;}
    public string Attribute5Name {get;set;}


    public string attributes {get;set;}
    public string searchTerm {get;set;}
    public string catalogInput {get;set;}
    public string searchOrder {get;set;}
    public Product2 testProduct {Get;set;}

    public String debugString {Get;set;}

    public String pricebookName {get;set;}
    public List<Pricebook2> pricebookList {get;set;}


    //Display Attributes or not
    public boolean displayAttr1 {Get;set;}
    public boolean displayAttr2 {Get;set;}
    public boolean displayAttr3 {Get;set;}
    public boolean displayAttr4 {Get;set;}
    public boolean displayAttr5 {Get;set;}

    public String attr1 {get;set;}
    public String attr2 {get;set;}
    public String attr3 {get;set;}
    public String attr4 {get;set;}
    public String attr5 {get;set;}

    public Pricebook2 pb2 {Get;set;}


    public SDO_Catalog(APexPages.StandardController std) {
        system.debug(std);
        Order o = [select id,pricebook2id from order where id=:std.getId()];
        system.debug('this is what it is' + o.Pricebook2Id);
        if(o.pricebook2Id != null) {
            pb2 = [select id,name,isactive from pricebook2 where id=:o.pricebook2id];
            system.debug('does it get here' + pb2);
        }else {
            pb2 = [select id,name,isactive from pricebook2 where isactive = true];
        }
            
       
        system.debug('does it get here???' + pb2);
        pricebookName = pb2.name;
        init();
    }

    public SDO_Catalog() {
        init();
    }

    public void init() {
        pricebookList = [select id, name from pricebook2 where isactive = true];
        Attribute1 = new List<String>();
        Attribute2 = new List<String>();
        Attribute3 = new List<String>();
        Attribute4 = new List<String>();
        Attribute5 = new List<String>();

        testProduct = new PRoduct2();
        List<PricebookEntry> peList = [select product2Id,product2.Image__c,product2.Product_Catalog__c,product2.id,product2.ProductCode,product2.attribute_1__c,product2.attribute_2__c,product2.attribute_3__c,product2.attribute_4__c,product2.attribute_5__c,product2.Family, pricebook2id, name, unitprice,UseStandardPrice from PricebookEntry where UseStandardPrice = true  order by name asc];
        pwList = new List<ProductWrapper>();
        Set<Id> productIds = new Set<Id>();
        for (PricebookEntry pe : peList) {
            if(!productIds.contains(pe.product2Id)) {
                productIds.add(pe.product2Id);
                pwList.add(new ProductWrapper(pe));
            }
        }

        Schema.DescribeFieldResult attributeField1 = Schema.sObjectType.product2.fields.attribute_1__c;
        Attribute1Name = attributeField1.getLabel();

        Schema.DescribeFieldResult attributeField2 = Schema.sObjectType.product2.fields.attribute_2__c;
        Attribute2Name = attributeField2.getLabel();
   
        Schema.DescribeFieldResult attributeField3 = Schema.sObjectType.product2.fields.attribute_3__c;
        Attribute3Name = attributeField3.getLabel();
     
        Schema.DescribeFieldResult attributeField4 = Schema.sObjectType.product2.fields.attribute_4__c;
        Attribute4Name = attributeField4.getLabel();
    
        Schema.DescribeFieldResult attributeField5 = Schema.sObjectType.product2.fields.attribute_5__c;
        Attribute5Name = attributeField5.getLabel();

        displayAttr1 = checkAttributesDisplay(getAttributes1());
        displayAttr2 = checkAttributesDisplay(getAttributes2());
        displayAttr3 = checkAttributesDisplay(getAttributes3());
        displayAttr4 = checkAttributesDisplay(getAttributes4());
        displayAttr5 = checkAttributesDisplay(getAttributes5());

    }

    public String getAttributesFromArray(List<String> arr){
        String s = '(';
        for(String a : arr) {
            a = a.trim();
            if(a != '|' && a != ',' && a != null && a != ''){
                s+='\''+a+'\',';
            }
        }
        s = s.trim();
        //integer i = s.lastIndexOf(';');
        String s2 = s.Substring(0,s.length()-1);
        s2+=')';
        return s2;
    }

public PageReference search3() {
        if(searchTerm == null || searchTerm == '') {
            searchTerm = ApexPages.CurrentPage().getParameters().get('searchTerm');
        }
        if(catalogInput == null || catalogInput == '') {
            catalogInput = ApexPages.CurrentPage().getParameters().get('catalogInput');
        }
        if(attr1 == null || attr1 == '') {
            attr1 = ApexPages.CurrentPage().getParameters().get('attr1');
        }
        if(attr2 == null || attr2 == '') {
            attr2 = ApexPages.CurrentPage().getParameters().get('attr2');
        }
        if(attr3 == null || attr3 == '') {
            attr3 = ApexPages.CurrentPage().getParameters().get('attr3');
        }
        if(attr4 == null || attr4 == '') {
            attr4 = ApexPages.CurrentPage().getParameters().get('attr4');
        }
        if(attr5 == null || attr5 == '') {
            attr5 = ApexPages.CurrentPage().getParameters().get('attr5');
        }
        if(searchOrder == null || searchOrder == '') {
            searchOrder = ApexPages.CurrentPage().getParameters().get('searchOrder');
        }
        System.debug('attr1: ' + attr1);
        System.debug('attr2: ' + attr2);
        System.debug('attr3: ' + attr3);
        System.debug('attr4: ' + attr4);
        System.debug('attr5: ' + attr5);

        String attr1Final  = getAttributesFromArray(attr1.split(','));
        String attr2Final  = getAttributesFromArray(attr2.split(','));
        String attr3Final  = getAttributesFromArray(attr3.split(','));
        String attr4Final  = getAttributesFromArray(attr4.split(','));
        String attr5Final  = getAttributesFromArray(attr5.split(',')); 
        

        String query = 'select product2Id,product2.Image__c,product2.Product_Catalog__c,product2.Family,product2.id,product2.ProductCode,product2.attribute_1__c,product2.attribute_2__c,product2.attribute_3__c,product2.attribute_4__c,product2.attribute_5__c, pricebook2id, name, unitprice,UseStandardPrice';
        query +=' from PricebookEntry ';
        query +=' where (UseStandardPrice = true ';
        //query +=' AND product2.Family = \'Product\' ';
        query +=' AND (name LIKE \'%' + searchTerm  + '%\'';
        query +=' OR product2.ProductCode LIKE \'%' + searchTerm  + '%\'))';
        //query +=' AND product2.Product_Catalog__c LIKE \'%' + catalogInput  + '%\')';
        

        boolean hasAttr = false;
        if(attr1Final != ')' && attr1Final != null && attr1Final != ''){
            if(!hasAttr){
                query += ' AND (product2.attribute_1__c includes ' + attr1Final + ' ';
            }else {
                query += ' OR product2.attribute_1__c includes ' + attr1Final + ' ';
            } 
            hasAttr = true;
        } 
        if(attr2Final != ')' && attr2Final != null && attr2Final != '') {
            if(!hasAttr){
                query += ' AND (product2.attribute_2__c includes ' + attr2Final + ' ';
            }else {
                query += ' OR product2.attribute_2__c includes ' + attr2Final + ' ';
            } 
            hasAttr = true;
        } 
        if(attr3Final != ')' && attr3Final != null && attr3Final != ''){
            if(!hasAttr){
                query += ' AND (product2.attribute_3__c includes ' + attr3Final + ' ';
            }else {
                query += ' OR product2.attribute_3__c includes ' + attr3Final + ' ';
            } 
            hasAttr = true;
        } 
        if(attr4Final != ')' && attr4Final != null && attr4Final != ''){
            if(!hasAttr){
                query += ' AND (product2.attribute_4__c includes ' + attr4Final + ' ';
            }else {
                query += ' OR product2.attribute_4__c includes ' + attr4Final + ' ';
            } 
            hasAttr = true;
        } 
        if(attr5Final != ')' && attr5Final != null && attr5Final != ''){
            if(!hasAttr){
                query += ' AND (product2.attribute_5__c includes ' + attr5Final + ' ';
            }else {
                query += ' OR product2.attribute_5__c includes ' + attr5Final + ' ';
            } 
            hasAttr = true;
        } 
        if(hasAttr) query+= ')';
        //query
        system.debug('checking pb2' + pb2.id);
        query +='AND pricebook2id=\''+pb2.id+'\' order by name ' + searchOrder;
        system.debug('This is the query: ' + query);
        //system.assert(false, query);
        List<PricebookEntry> peList = database.query(query);
        pwList = new List<ProductWrapper>();
        Set<Id> productIds = new Set<Id>();
        for (PricebookEntry pe : peList) {
            if(!productIds.contains(pe.product2Id)) {
                productIds.add(pe.product2Id);
                pwList.add(new ProductWrapper(pe));
            }
        }
        return null;                                
    }




    public boolean checkAttributesDisplay(List<selectOption> options) {
        for(SelectOption so : options) {
            if (so.getValue() == 'hide'){
                return false;
            }
        }
        return true;
    }



    public List<SelectOption> getAttributes1() {
        List<SelectOption> productAttributes = new List<SelectOption>();     
        Schema.DescribeFieldResult attributeField = Schema.sObjectType.product2.fields.attribute_1__c;
        Attribute1Name = attributeField.getLabel();
        Schema.PicklistEntry [] values = attributeField.getPickListValues();
            
        for(Schema.PicklistEntry val : values){
         productAttributes.add(new SelectOption(val.getValue(), val.getLabel()));
        }
        return productAttributes;
    }
    public List<SelectOption> getAttributes2() {
        List<SelectOption> productAttributes = new List<SelectOption>();     
        Schema.DescribeFieldResult attributeField = Schema.sObjectType.product2.fields.attribute_2__c;
        Attribute2Name = attributeField.getLabel();
        Schema.PicklistEntry [] values = attributeField.getPickListValues();
            
        for(Schema.PicklistEntry val : values){
         productAttributes.add(new SelectOption(val.getValue(), val.getLabel()));
        }
        return productAttributes;
    }
    public List<SelectOption> getAttributes3() {
        List<SelectOption> productAttributes = new List<SelectOption>();     
        Schema.DescribeFieldResult attributeField = Schema.sObjectType.product2.fields.attribute_3__c;
        Attribute3Name = attributeField.getLabel();
        Schema.PicklistEntry [] values = attributeField.getPickListValues();
            
        for(Schema.PicklistEntry val : values){
         productAttributes.add(new SelectOption(val.getValue(), val.getLabel()));
        }
        return productAttributes;
    }
    public List<SelectOption> getAttributes4() {
        List<SelectOption> productAttributes = new List<SelectOption>();     
        Schema.DescribeFieldResult attributeField = Schema.sObjectType.product2.fields.attribute_4__c;
        Attribute4Name = attributeField.getLabel();
        Schema.PicklistEntry [] values = attributeField.getPickListValues();
            
        for(Schema.PicklistEntry val : values){
         productAttributes.add(new SelectOption(val.getValue(), val.getLabel()));
        }
        return productAttributes;
    }
    public List<SelectOption> getAttributes5() {
        List<SelectOption> productAttributes = new List<SelectOption>();     
        Schema.DescribeFieldResult attributeField = Schema.sObjectType.product2.fields.attribute_5__c;
        Attribute5Name = attributeField.getLabel();
        Schema.PicklistEntry [] values = attributeField.getPickListValues();
            
        for(Schema.PicklistEntry val : values){
         productAttributes.add(new SelectOption(val.getValue(), val.getLabel()));
        }
        return productAttributes;
    }

    public class ProductWrapper {
        public PricebookEntry p {get;set;}
        public boolean selected {get;set;}
        public ProductWrapper(PricebookEntry pe) {
            p = pe;
        }
    }
}