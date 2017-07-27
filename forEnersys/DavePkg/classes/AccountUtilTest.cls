@isTest(SeeAllData=true)

public class AccountUtilTest {
    public static testMethod void testTrigger() {
        List<Account> aList = [select Id
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
        }
        else {
            a = aList[0];
            a.Terms_of_Delivery_Code__c = 'xyz';
            a.Terms_of_Payment_Code__c = 'xyz';
            update a;
        }

    }
}