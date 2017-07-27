global without sharing class AccountUtil {
	static Map<String,User> userMap;
	static Map<String,SAP_Reference__c> refMap;

    static {
        userMap = new Map<String,User>();
        for ( User u : [ SELECT Id
                        	  , Email
                        	  , IsActive
                           FROM User
                          where IsActive=true] )
        {
            userMap.put( u.Email.toLowerCase(), u );
        }
        
        refMap = new Map<String,SAP_Reference__c>();
        for ( SAP_Reference__c r :  [  SELECT Id
                                            , Code__c
                                            , Code_Type__c
                                            , Key__c
                                         FROM SAP_Reference__c
                                        WHERE Key__c like 'BDT-%'
                                           OR Key__c like 'BPT-%'] )
        {
            refMap.put( r.Key__c, r );
        }
    }

    public static void fixAccount( List<Account> aList ) {
        List<SAP_Reference__c> newRefList = new List<SAP_Reference__c>();
        for ( Account a : aList ) {
            if ( String.isNotBlank(a.Terms_of_Delivery_Code__c) ) {
                String k = 'BDT-'+a.Terms_of_Delivery_Code__c;
                SAP_Reference__c r = refMap.get( k );
                if ( r == null ) {
                    r = new SAP_Reference__c( Code__c = a.Terms_of_Delivery_Code__c
                                            , Name = a.Terms_of_Delivery_Desc__c
                                            , Code_Type__c = 'Delivery Terms - DT'
                                            , Company__c = a.Company_Number_Pick__c
                                            , Key__c = k
                                            , Missing_Value__c = true
                                            , System__c = 'Baan' );
                    newRefList.add( r );
                    refMap.put( k, r );
                }
            }
            if ( String.isNotBlank(a.Terms_of_Payment_Code__c ) ) {
                String k = 'BPT-'+a.Terms_of_Payment_Code__c;
                SAP_Reference__c r = refMap.get( k );
                if ( r == null ) {
                    r = new SAP_Reference__c( Code__c = a.Terms_of_Payment_Code__c
                                            , Name = a.Terms_of_Payment_Desc__c
                                            , Code_Type__c = 'Payment Terms - PT'
                                            , Company__c = a.Company_Number_Pick__c
                                            , Key__c = k
                                            , Missing_Value__c = true
                                            , System__c = 'Baan' );
                    newRefList.add( r );
                    refMap.put( k, r );
                }
            }
        }
        if ( ! newRefList.isEmpty() ) {
            upsert newRefList Key__c;
        }
        for ( Account a : aList ) {
            if ( String.isNotBlank(a.Terms_of_Delivery_Code__c) ) {
                String k = 'BDT-'+a.Terms_of_Delivery_Code__c;
                SAP_Reference__c r = refMap.get( k );
                if ( r != null ) {
                    a.Delivery_Terms__c = r.Id;
                }
            }
            if ( String.isNotBlank(a.Terms_of_Payment_Code__c ) ) {
                String k = 'BPT-'+a.Terms_of_Payment_Code__c;
                SAP_Reference__c r = refMap.get( k );
                if ( r != null ) {
                    a.Payment_Terms__c = r.Id;
                }
            }
            if ( String.isNotBlank(a.Sales_Agent_Email__c ) ) {
                User u = userMap.get( a.Sales_Agent_Email__c.toLowerCase() );
                if ( u != null ) {
                    a.OwnerId = u.Id;
                }
            }
        }
    }

    public static Object passXml( String s ) {
        System.debug(s);
        XmlStreamReader reader = new XmlStreamReader(s);
        if ( reader.hasNext() )
        	reader.next();
        if ( reader.getAttributeValue(null, 'object') == 'true' ) {
            return passXMLObj(reader);
        }
        else if ( reader.getAttributeValue(null, 'array') == 'true' ) {
            return passXMLArray(reader);
        }
        
        String n = reader.getLocalName();
        System.debug(n);
        Map<String,Object> obj = new Map<String,Object>();
        reader.next();
        obj.put( n, reader.getText() );
        return obj;
    }
    
    public static Map<String,Object> passXMLObj( XmlStreamReader reader ) {
        Map<String,Object> obj = new Map<String,Object>();
        if ( reader.hasNext() )
        	reader.next();        
        while ( reader.isStartElement() ) {
            String n = reader.getLocalName();
            System.debug(n);
            if ( reader.getAttributeValue(null, 'object') == 'true' ) {
                obj.put( n, passXMLObj(reader) );
            }
            else if ( reader.getAttributeValue(null, 'array') == 'true' ) {
                obj.put( n, passXMLArray(reader) );
            }
            else {
                reader.next();
                obj.put( n, reader.getText() );
                reader.nextTag();
                reader.nextTag();
            }
        }
        if ( reader.hasNext() )
        	reader.next();
        return obj;
    }
    
    public static List<Object> passXMLArray( XmlStreamReader reader ) {
        List<Object> obj = new List<Object>();
        if ( reader.hasNext() )
        	reader.next();
        while ( reader.isStartElement() ) {
            String n = reader.getLocalName();
            System.debug(n);
            if ( reader.getAttributeValue(null, 'object') == 'true' ) {
                obj.add( passXMLObj(reader) );
            }
            else if ( reader.getAttributeValue(null, 'array') == 'true' ) {
                obj.add( passXMLArray(reader) );
            }
            else {
                reader.next();
                obj.add( reader.getText() );
                reader.nextTag();
            	reader.nextTag();
            }        	
        }
        if ( reader.hasNext() )
        	reader.next();
        return obj;
    }
    
    public static void testtest() {
        Object o = passXml( [select EMEA_CLASS__c from Account where SAP_Customer_Id__c='0000021828'].EMEA_CLASS__c );
        System.debug(o);
    }
    
    
    public static void EmeaClassification(List<Account> aList ) {
        for ( Account a : aList ) {
            if ( String.isBlank(a.EMEA_CLASS__c) ) continue;
            List<Object> o = (List<Object>) passXml( a.EMEA_CLASS__c );
            for ( Object om : o ) {
                Map<String,Object> m = (Map<String,Object>) om;
                String c = (String) m.get('CLASS');
                List<Object> chList = (List<Object>) m.get('CHARACTERISTICS');
                for ( Object ocv : chList ) {
                    Map<String,Object> cv = (Map<String,Object>) ocv;
                    String k = (String) cv.get('ATNAM');
                    String v = (String) cv.get('ATWRT');
                    if ( c == 'CUSTOMERS_AD' ) {
                        if ( k == 'Business area' ) {
                            a.AD_Business_Area__c = v;
                        }
                        else if ( k == 'Industry' ) {
                            a.AD_Industry__c = v;
                        }
                        else if ( k == 'Distribution channel' ) {
                            a.AD_Distribution_Channel__c = v;
                        }
                    }

	                if ( c == 'CUSTOMERS_RP') {
						if ( k == 'Industry' ) {
                            a.AD_Industry__c = v;
                        }
                        else if ( k == 'Distribution channel' ) {
                            a.AD_Distribution_Channel__c = v;
                        }
                    }
                
                	if ( c == 'CUSTOMERS_MP') {
                        if ( k == 'Business area' ) {
                            a.MP_Business_Area__c = v;
                        }
                        else if ( k == 'Industry' ) {
                            a.MP_Industry__c = v;
                        }
                        else if ( k == 'Distribution channel' ) {
                            a.MP_Distribution_Channel__c = v;
                        }
                    }
                }
            }
        }
    }
    
    
    /*
    public static void fixAccountAll() {
        List<Account> aList = [select Id
                              		, Terms_of_Delivery_Code__c
                              		, Terms_of_Delivery_Desc__c
                               		, Delivery_Terms__c
                              		, Terms_of_Payment_Code__c
                              		, Terms_of_Payment_Desc__c
                               		, Payment_Terms__c
                              		, Company_Number_Pick__c
                                    , Sales_Agent_Email__c
                               		, Owner.Email
                                 from Account
                                where Delivery_Terms__c = null
                                  and Payment_Terms__c = null
                                  and ( Terms_of_Delivery_Code__c != null
                                     or Terms_of_Payment_Code__c != null
                                     or Sales_Agent_Email__c != null)
                                limit 2000];
        fixAccount( aList );
        update aList;
    }
	*/
}