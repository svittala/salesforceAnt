global with sharing class StoreVisitWizard {
	public Store_Visit__c sv {get;set;}
	public List<ProductWrapper> pwList {get;set;}
	public blob b {Get;set;}


	global StoreVisitWizard(APexPages.StandardController std) {
		sv = new Store_Visit__c();
		List<PricebookEntry> peList = [select product2Id,product2.Tools_VF_Image__c, pricebook2id, name, unitprice,UseStandardPrice from PricebookEntry where UseStandardPrice = true order by name asc];
		pwList = new List<ProductWrapper>();
		Set<Id> productIds = new Set<Id>();
		for (PricebookEntry pe : peList) {
			if(!productIds.contains(pe.product2Id)) {
				productIds.add(pe.product2Id);
				pwList.add(new ProductWrapper(pe));
			}
			
		}
	}
/*
			      	accountId,numberOfProducts,numberOfCompetitiveProducts,bottlesDusted,percentFridgeSpace,schematic,percentShelfSpace,primaryDisplayLocations,storeCallHighlights,dbDays,prodcutIds,attachmentBody, attachmentName, fileId,orientation,
*/
	
	@RemoteAction
	global static String createStoreVisit(String accountId,   
	 						    String percentFridgeSpace, String percentShelfSpace,
	  							String primaryDisplayLocations,String storeCallHighlights, String productIds) {
		if(accountId != null) {
		 	//get the account
		 	Account a; 
		 	system.debug(accountId.substring(0,3));
		 	if(accountId.substring(0,3) == '001') {
		 		a = [select id from account where id =:accountId limit 1];
		 	}else {
		 		a = [select id,name from account where name =:accountId limit 1];
		 	}
		    
		    //Create the store visit object
		    Store_Visit__c sv = new Store_Visit__c();
		    sv.account__c = a.id;

		    if(percentFridgeSpace != null && percentFridgeSpace != '') sv.Fridge_Space__c = integer.valueOf(percentFridgeSpace);
		    if(percentShelfSpace != null && percentShelfSpace != '') sv.Shelf_Space__c = Integer.valueOf(percentShelfSpace);
		    if(primaryDisplayLocations != null && primaryDisplayLocations != '') sv.Primary_Display_Locations__c = primaryDisplayLocations;
		    if(storeCallHighlights != null && storeCallHighlights != '') sv.Store_Call_Highlights__c = storeCallHighlights;
		    insert sv;
		    
		    //Insert the related products viewed
		    List<String> product2Ids = productIds.split(',');
		    List<Wine_Products__c> wpList = new List<Wine_Products__c>();
		    for(String pId : product2Ids) {
		    	string id = pId.split(':')[0];
		    	string qty = pId.split(':')[1];
		    	string price = pId.split(':')[2];
		    	Wine_Products__c wp = new Wine_Products__c();
		    	wp.product__c = id;
		    	wp.product_quantity__c = integer.valueof(qty);
		    	wp.Retail_Price__c = decimal.valueOf(price);
		    	wp.Store_Visit__c = sv.id;
		    	wpList.add(wp);
		    }
		    insert wpList;

		    return sv.id;
		}
		return null;
	}


	@RemoteAction
	global static String uploadAttachment (String newStoreVisitId, String attachmentBody, String attachmentName, String attachmentId,String orientation) { 
	    if(attachmentBody != null) {
	        Attachment att = getAttachment(attachmentId);
	        String newBody = '';
	        if(att.Body != null) {
	            newBody = EncodingUtil.base64Encode(att.Body);
	        }
	        newBody += attachmentBody;
	        att.Body = EncodingUtil.base64Decode(newBody);
	        if(attachmentId == 'null') {
	            att.Name = attachmentName;
	            att.parentId = newStoreVisitId;
	        }
	        upsert att;
	        
			/*
			FeedItem post = new FeedItem();
			post.ParentId = sv.id;
			post.Body = 'Product Image';
			post.ContentData = EncodingUtil.base64Decode(attachmentBody);
			post.ContentFileName = attachmentName;
			insert post;
			*/

	        //c.ImageID__c = att.id;
	        //c.Orientation__c = string.valueof(orientation);
	        //update c;
	        //return the store visit id ?
	        return att.Id;
	    } else {
	        return 'Attachment Body was null';
	    }
	}
	@RemoteAction
	global static String createFeedPost(String attatchmentId) {
		Attachment a = [SELECT Id,name, Body,parentId FROM Attachment WHERE Id =: attatchmentId limit 1];
		FeedItem post = new FeedItem();
		post.ParentId = a.parentid;
		post.Body = 'Product Image';
		post.ContentData = a.Body;
		post.ContentFileName = a.name;
		insert post;

		return post.id;
	}

    private static Attachment getAttachment(String attId) {
        if(attId == 'null') {
            Attachment a = new Attachment();
            return a;
        }
        list<Attachment> attachments = [SELECT Id, Body
                                        FROM Attachment 
                                        WHERE Id =: attId];
        if(attachments.isEmpty()) {
            Attachment a = new Attachment();
            return a;
        } else {
            return attachments[0];
        }
    }


	public class ProductWrapper {
	    public PricebookEntry p {get;set;}
	    public boolean selected {get;set;}
	    public ProductWrapper(PricebookEntry pe) {
	        p = pe;
	    }
	}
}