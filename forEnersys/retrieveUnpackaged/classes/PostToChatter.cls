global class PostToChatter {
    global PostToChatter() {}
    
    @future (callout=true)
    global static void PostToChatter(String recordId,String userId, String chatterPostText) {
        try{
            /*
            String salesforceHost = System.Url.getSalesforceBaseURL().toExternalForm();
                
            String url =  salesforceHost + '/services/data/v29.0/chatter/feed-elements'; // record/' + recordId + '/feed-items
                    
            HttpRequest req = new HttpRequest();
                    
            req.setMethod('POST');
            req.setEndpoint(url);
            req.setHeader('Content-type', 'application/json');
            req.setHeader('Authorization', 'OAuth ' + UserInfo.getSessionId());
                    
            req.setBody('{ "body" : { "messageSegments" : [ { "type": "mention", "id" : "' + userId + '" }, { "type": "text",  "text" : "' + ' ' + chatterPostText +  '" } ] },"feedElementType" : "FeedItem","subjectId" :  "' + ' ' + recordId +  '" }');
            Http http = new Http();
            
            HTTPResponse res = http.send(req);
            */

            ConnectApi.FeedType feedType = ConnectApi.FeedType.Record;
           
            ConnectApi.FeedItemInput input = new ConnectApi.FeedItemInput();
            ConnectApi.MessageBodyInput messageInput = new ConnectApi.MessageBodyInput();
            ConnectApi.TextSegmentInput textSegment;
            ConnectApi.MentionSegmentInput mentionSegment = new ConnectApi.MentionSegmentInput();
           
            messageInput.messageSegments = new List<ConnectApi.MessageSegmentInput>();
           
            textSegment = new ConnectApi.TextSegmentInput();
            textSegment.text = 'Hey there ';
            messageInput.messageSegments.add(textSegment);
           
            mentionSegment.id = userId;
            messageInput.messageSegments.add(mentionSegment);
           
            textSegment = new ConnectApi.TextSegmentInput();
            textSegment.text = chatterPostText;
            messageInput.messageSegments.add(textSegment);
           
            input.body = messageInput;
           
            ConnectApi.FeedItem feedItemRep = ConnectApi.ChatterFeeds.postFeedItem(null, feedType, recordId, input, null);
        }catch (exception e) {
            Messaging.SingleEmailMessage mail = new Messaging.SingleEmailMessage();

            // Strings to hold the email addresses to which you are sending the email.
            String[] toAddresses = new String[] {'tscott@salesforce.com'}; 
              
            
            // Assign the addresses for the To and CC lists to the mail object.
            mail.setToAddresses(toAddresses);
            
            // Specify the address used when the recipients reply to the email. 
            mail.setReplyTo('support@acme.com');
            
            // Specify the name used as the display name.
            mail.setSenderDisplayName('Salesforce Support');
            
            // Specify the subject line for your email address.
            mail.setSubject('Error : ' + recordId);
            
            // Set to True if you want to BCC yourself on the email.
            mail.setBccSender(false);
            
            // Optionally append the salesforce.com email signature to the email.
            // The email address of the user executing the Apex Code will be used.
            mail.setUseSignature(false);
            
            // Specify the text content of the email.
            mail.setPlainTextBody('Your Chattter post failed for record: ' + recordId +'. Error Message :  ' + e.getMessage() + ' ' + e.getLineNumber());
            
            // Send the email you have created.
            Messaging.sendEmail(new Messaging.SingleEmailMessage[] { mail });
        }
    }
}