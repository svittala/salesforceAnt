@isTest(SeeAllData=true)

public class BaaNAccountIDSyncTest {
    public static testMethod void testWS() {
        List<Account> aList = [select Id
                               		, Prospect__c
                              	 from Account
                                where Terms_of_Delivery_Code__c != null
                                order by LastModifiedDate Desc
                                limit 1] ;
        Account a;
        if ( aList.isEmpty() ) {
            a = new Account( Name = 'Test Account'
                		   , Terms_of_Delivery_Code__c = 'xyz'
                           , Terms_of_Delivery_Desc__c = 'xyz'
                           , Terms_of_Payment_Code__c = 'xyz'
                           , Terms_of_Payment_Desc__c = 'xyz'
                           , Company_Number_Pick__c = '701'
                           , Sales_Agent_Email__c = 'test@sample.com' );
            insert a;
        	aList =           [select Id
                               		, Prospect__c
                              	 from Account
                                where Terms_of_Delivery_Code__c != null
                                order by LastModifiedDate Desc
                                limit 1] ;
        }
        a=aList[0];
       
        BaaNAccountIDSync.syncId(a.Prospect__c, '', '');
        BaaNAccountIDSync.syncId(a.Prospect__c, '701', '1234');
        BaaNAccountIDSync.syncId('', '701', '1234');
        BaaNAccountIDSync.syncId('sfsfss', '', '');
    }
}