@isTest(SeeAllData=true)

public class PriceBookUtilTest {
    public static testMethod void testTrigger() {
        List<Product2> pList = [select Id
                                     , Baan_Sales_Price__c
                             		 , Item_Group__c
            			   			 , Item_Group_Desc__c
                        			 , Name
                        			 , CompanyNumber__c
                     			 from Product2
                                order by LastModifiedDate Desc
                                limit 1] ;

        Product2 p;
        if ( pList.isEmpty() ) {
            p = new  Product2( Name = 'Test Prod'
                		     , Baan_Sales_Price__c = 10
                             , Item_Group__c = '12345'
                             , Item_Group_Desc__c = 'aaaa'
                             , CompanyNumber__c = '701' );
        }
        else {
            p = pList[0].clone();
            p.ExtId__c = '';
        }
        insert p;
    }

}