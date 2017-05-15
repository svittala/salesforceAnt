trigger autoPopulateStoreVisit on Product_Present__c (before insert, before update){

    //get the Form Id's and store it in a set.
    set<Id> formIdSet = new set<Id>();
    for(product_present__c pp: trigger.new){
        if(pp.form__c != null){
            formIdSet.add(pp.form__c);
        }
    }

    //query the form records and get the associated store visit.
    map<id, discostage__form__c> formMap = new map<id, discostage__form__c>([SELECT id, store_visit__r.id from discostage__form__c where Id IN: formIdSet]);

    //update the store visit value based on the product present record.
    for(product_present__c pp: trigger.new){
        if(formMap.containsKey(pp.form__c)){
            pp.store_visit__c = formMap.get(pp.form__c).store_visit__r.Id;
        }       
    }

}