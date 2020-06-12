@isTest
public class HotelControllerTest {
    
    static testMethod void testFindAll() {
        Boolean success = true;
        try {
	        List<Account> hotels = HotelController.findAll();
        } catch (Exception e) {
            success = false;
        } finally {
	        System.assert(success);
        }
    }

}