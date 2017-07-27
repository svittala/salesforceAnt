@isTest
global class SAPCreateQuoteTestHttpCalloutMock implements HttpCalloutMock {

    private Integer statusCode;
    public static final String MOCK_SAP_RESPONSE_OK = '{"returns":[{"SAP_TYPE":"S","SAP_SYSTEM":null,"SAP_NUMBER":"311","ROW":null,"PARAMETER":null,"MESSAGE_V4":null,"MESSAGE_V3":null,"MESSAGE_V2":"12345","MESSAGE_V1":null,"MESSAGE":"Created SAP Quote 12345","LOG_NO":null,"LOG_MSG_NO":null,"ID":"V1","FIELD":null}]}';
    public static final String MOCK_SAP_RESPONSE_ERROR = '{"returns":[{"SAP_TYPE":"E","SAP_SYSTEM":null,"SAP_NUMBER":"311","ROW":null,"PARAMETER":null,"MESSAGE_V4":null,"MESSAGE_V3":null,"MESSAGE_V2":"12345","MESSAGE_V1":null,"MESSAGE":"Erroor returned by SAP","LOG_NO":null,"LOG_MSG_NO":null,"ID":"V1","FIELD":null}]}';
    // Note: the above mock responses also need to appear in the static resources: SAPCreateQuoteTestHttpCalloutMock_Ok and SAPCreateQuoteTestHttpCalloutMock_Error

    global static StaticResourceCalloutMock getStaticResourceMock_Ok() {
        StaticResourceCalloutMock mock = new StaticResourceCalloutMock();
        mock.setStaticResource('SAPCreateQuoteTestHttpCalloutMock_Ok');
        mock.setStatusCode(200);
        mock.setHeader('Content-Type', 'text/plain');
        return mock;
    }

    global static StaticResourceCalloutMock getStaticResourceMock_Error() {
        StaticResourceCalloutMock mock = new StaticResourceCalloutMock();
        mock.setStaticResource('SAPCreateQuoteTestHttpCalloutMock_Error');
        mock.setStatusCode(500);
        mock.setHeader('Content-Type', 'text/plain');
        return mock;
    }

    public SAPCreateQuoteTestHttpCalloutMock() {
        this.statusCode=200;
    }

    global SAPCreateQuoteTestHttpCalloutMock(integer statusCode) {
        this.statusCode = statusCode;
    }

    global HTTPResponse respond(HTTPRequest req) {
        HttpResponse response;

        if (statusCode != 200) {
            response = getResponse_Error(req);
        } else {
            response = getResponse_Ok(req);
        }

        return response;
    }
    
    private HttpResponse getResponse_Ok(HttpRequest request) {
        HttpResponse response = new HttpResponse();
        response.setStatusCode(statusCode);
        response.setHeader('Content-Type', 'text/plain');
        response.setBody(MOCK_SAP_RESPONSE_OK);

        return response;
    }

    private HttpResponse getResponse_Error(HttpRequest request) {
        HttpResponse response = new HttpResponse();
        response.setStatusCode(statusCode);
        response.setHeader('Content-Type', 'text/plain');
        response.setBody(MOCK_SAP_RESPONSE_ERROR);

        return response;
    }

}