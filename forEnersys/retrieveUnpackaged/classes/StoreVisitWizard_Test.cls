@isTest (SeeAllData=true)
public class StoreVisitWizard_Test {
	
	@isTest static void test_method_one() {
		Account a = new Account();
		a.name='test';
		insert a;

		/*Product2 testProduct = new Product2();
		testProduct.name='testProduct';
		insert testProduct;

		PricebookEntry pbe = new PricebookEntry();
		Pricebook2 pb = [select id from pricebook2 where name = 'Standard Price Book' limit 1];
		pbe.pricebook2id = pb.id;
		pbe.product2id =testproduct.id;
		pbe.unitprice=1;
		pbe.isactive = true;
		pbe.usestandardprice = true;
		insert pbe;*/

		Product2 testProduct = [select id,name from product2 limit 1];

		ApexPages.StandardController std = new ApexPages.StandardController(a);

		StoreVisitWizard svw = new StoreVisitWizard(std);
		String storeVisitId = StoreVisitWizard.createStoreVisit(a.id,'0', '1','shelf','test', testProduct.id + ':1:1');

		String attachmentId = StoreVisitWizard.uploadAttachment(storeVisitId, '900102030', 'test', 'null', '6');
		StoreVisitWizard.createFeedPost(attachmentId);
		//svw.getAttachment(attachmentId);

	}
	
	
}