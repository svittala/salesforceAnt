public with sharing class HotelController {

    @AuraEnabled
    public static List<Account> findAll() {
        return [SELECT id, name, billingstreet, billingcity, billingstate, Location__Latitude__s, Location__Longitude__s, Picture_URL__c 
                FROM Account
                WHERE Location__Latitude__s != NULL AND Location__Longitude__s != NULL
                LIMIT 50];
    }

}