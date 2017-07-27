@RestResource(urlMapping='/BaaNAccountIDSync')
global without sharing class BaaNAccountIDSync {
    @HttpPost
    global static SyncResponse syncId(String SfdcId, String BaanCompanyNumber, String BaanCustomerNumber ) {
        SyncResponse r = new SyncResponse();
        if ( String.isBlank(BaanCompanyNumber) ) {
            BaanCompanyNumber = '701';
        }
        List<Account> aList = new List<Account>(); // sfdc lookup
        List<Account> bList = new List<Account>(); // baan lookup

        if ( String.isNotBlank(SfdcId) ) {    
            // Lookup using SFDC number
            aList = [  select Id
                     		, Name
							, Company_Number__c
                            , Customer_Number__c
                            , Prospect__c
                         from Account
                        where Prospect__c = :SfdcId ];
        }

        if ( String.isNotBlank(BaanCustomerNumber) ) {    
            // Lookup using Baan number
            bList = [  select Id
                     		, Name
							, Company_Number__c
                            , Customer_Number__c
                            , Prospect__c
                         from Account
                        where Company_Number__c = :BaanCompanyNumber
                          and Customer_Number__c = :BaanCustomerNumber ];

        }
        
        if ( String.isBlank(SfdcId) ) {
            if ( String.isBlank(BaanCustomerNumber) ) {
                r.StatusCode = 0;
                r.Message = 'No parameter is provided';
            }
            else {
                if ( bList.isEmpty() ) {
                    r.StatusCode = -2;
                	r.Message = 'Baan Id lookup failed for Company ['+BaanCompanyNumber+'] Customer ['+BaanCustomerNumber+']';
                }
                else {
                    Account a = bList[0];
                    r.StatusCode = 2;
                    r.Message = 'Baan Id lookup is successful for ['+BaanCustomerNumber+']';
                    r.SfdcId = a.Prospect__c;
                    r.BaanCompanyNumber = a.Company_Number__c;
                    r.BaanCustomerNumber = a.Customer_Number__c;
                    r.AccountName = a.Name;                                                    
                }
            }
        }
        else {
            if ( aList.isEmpty() ) {
                r.StatusCode = -1;
                r.Message = 'Salesforce Id lookup failed for Prospect Id ['+SfdcId+']';
            }
            else {
                Account a = aList[0];
                
                r.SfdcId = a.Prospect__c;
                r.BaanCompanyNumber = a.Company_Number__c;
                r.BaanCustomerNumber = a.Customer_Number__c;
                r.AccountName = a.Name;                                                    
                if ( String.isBlank(BaanCustomerNumber) ) {                       
                    r.StatusCode = 1;
                    r.Message = 'Salesforce Id lookup is successful for ['+a.Prospect__c+']';
                }
                else {
                    if ( String.isNotBlank(a.Customer_Number__c) ) {
                        if ( a.Customer_Number__c == BaanCustomerNumber && a.Company_Number__c == BaanCompanyNumber ) {
                            r.StatusCode = 3;
                            r.Message = 'Account ['+a.Prospect__c+'] is already synced with Baan customer number';
                        }
                        else {
                            r.StatusCode = -3;
                            r.Message = 'Account ['+a.Prospect__c+'] is already synced with a different Baan customer number';                       
                        }
                    }
                    else if ( ! bList.isEmpty() ) {
                            r.StatusCode = -3;
                            r.Message = 'Baan customer number ['+BaanCustomerNumber+'] is already synced with a different salesforce Id ['+bList[0].Prospect__c+']';                                              
                    }
                    else {
                        Map<String,Id> rtMap = new Map<String,Id>();
                        for ( RecordType rt : [Select Id, DeveloperName from RecordType where SobjectType='Account'] ) {
                            rtMap.put( rt.DeveloperName, rt.Id );
                        }                        
                        a.Company_Number__c = BaanCompanyNumber;
                        a.Customer_Number__c = BaanCustomerNumber;
                        a.ExtId__c = 'B-'+BaanCompanyNumber+'-'+BaanCustomerNumber;
                        a.RecordTypeId = rtMap.get('Americas_Prospect');
                        r.BaanCompanyNumber = a.Company_Number__c;
                        r.BaanCustomerNumber = a.Customer_Number__c;
                        try {
                            update a;
                            r.StatusCode = 3;
                            r.Message = 'Account ['+a.Prospect__c+'] updated successfully with Baan Customer Number ['+BaanCustomerNumber+']';
                        }
                        catch (Exception e) {
                            r.StatusCode = -3;
                            r.Message =  'Account ['+a.Prospect__c+'] failed to update. '+e.getMessage();
                        }
                    }
                }
            }
        }
        return r;
    }

    global class SyncResponse {
        global Integer StatusCode; // 1: sfdcId lookup success, 2: baanId lookup success, 3: update success, -1: invalid sfdc Id, -2: invalid baan id, -3: sync integrity error, 0: no parameter is given 
        global String Message;
        global String SfdcId;
        global String BaanCompanyNumber;
        global String BaanCustomerNumber;
        global String AccountName;
    }

}