public with sharing class ConfiguratorWSTestDataFactory {
    
    private static final String SF_PREFIX_PRODUCT='01t';
    private static final String SF_PREFIX_TECHNICAL_SPEC='a1O';

    public ConfiguratorWS.QuoteConnectorPayload payload = null;
    public ConfiguratorWS.QuoteConnectorPayload payload1 = null;
    public ConfiguratorWS.QuoteConnectorPayload payload2 = null;
    public Map<Id, Account> accounts = null;
    public Map<Id, Product2> products = null;
    public Map<Id, PricebookEntry> pricebookEntries = null;
    public Map<Id, Opportunity> opptys = null;
    public Map<Id, SBQQ__Quote__c> quotes = null;
    public Map<Id, External_Configuration__c> externalConfigs = null;
    public Map<Id, SBQQ__QuoteLineGroup__c> quoteLineGroups = null;
    public Map<Id, SBQQ__QuoteLine__c> quoteLines = null;

    private Integer fakeSfIdIndex = 0;

    public ConfiguratorWSTestDataFactory() {
        // Common elements for all test data setups
        CustomSettingManager.fillCustomSettingsWithDefaults();

    }

    public static void setupProductsAndStdPrices() {
        Set<String> testPartNumbers = new Set<String>();
        testPartNumbers.add('TestProduct1');
        testPartNumbers.add('TestProduct2');
        testPartNumbers.add('TestProduct3');
        testPartNumbers.add('TestProduct4');
        testPartNumbers.add('TestProduct5');

        CustomSettingManager.fillCustomSettingsWithDefaults();
        ExtConfigQuoteLineProcessor processor = new ExtConfigQuoteLineProcessor();
        for (String itemType : processor.dummyPartNumberMap.keySet()) {
            if (itemType!='generic') {
                // Leave out the generic for testQuoteLineNoPriceFoundForGenericDummyPartNumber
                testPartNumbers.add(processor.dummyPartNumberMap.get(itemType));
            }
        }

        List<Product2> newProducts = new List<Product2>{};
        for (String partNumber : testPartNumbers) {
            newProducts.add(new Product2(Name=partNumber, ExtId__c=partNumber+'ExtId'));
        }
        insert newProducts;

        List<PricebookEntry> newPricebookEntries = new List<PricebookEntry>{};
        Integer priceAdder=0;
        for (Product2 prod : newProducts) {
            System.debug('*** Test.getStandardPricebookId(): ' + Test.getStandardPricebookId());
            newPricebookEntries.add(new PricebookEntry(Pricebook2Id=Test.getStandardPricebookId(), Product2Id=prod.Id, UnitPrice=100+priceAdder));
            priceAdder++;
        }
        insert newPricebookEntries;

    }

    public void setupScenario1a(String configuratorName) {
        // Valid configuratorName
        createGenericTestPayload(configuratorName);
    }

    public void setupScenario1c() {
        // No QuoteConfigs in the payload
        payload = new ConfiguratorWS.QuoteConnectorPayload();
    }

    public void setupScenario2(String configuratorName) {
        // WS Payload contains a QuoteConfig that has a valid SF Quote Number
        accounts = createGenericTestAccounts(1);
        opptys = createGenericTestOpptysForAccounts(1, accounts);
        quotes = createGenericTestQuotesForOpptys(1, opptys);
        Set<String> testPartNumbers = new Set<String>();
        testPartNumbers.add('TestProduct1');
        products = fetchTestProductsByPartNumber(testPartNumbers);
        pricebookEntries = fetchTestStdPricebookEntriesFromProducts(products);
        payload = createCustomTestPayload(createTestPayloadQuoteConfigsFromSfQuotesAndProducts(configuratorName, quotes, products, null));
    }

    public void setupScenario2b() {
        // Same as Scenario2 except pricebookentries are missing
        accounts = createGenericTestAccounts(1);
        opptys = createGenericTestOpptysForAccounts(1, accounts);
        quotes = createGenericTestQuotesForOpptys(1, opptys);
        Set<String> testPartNumbers = new Set<String>();
        testPartNumbers.add('TestProduct-NoPBEs');
        products = createTestProductsByPartNumber(testPartNumbers);
        payload = createCustomTestPayload(createTestPayloadQuoteConfigsFromSfQuotesAndProducts('OEMSpec', quotes, products, null));
    }

    public void setupScenario2c() {
        // Same as Scenario2 except a second line item exists that has no price
        accounts = createGenericTestAccounts(1);
        opptys = createGenericTestOpptysForAccounts(1, accounts);
        quotes = createGenericTestQuotesForOpptys(1, opptys);
        Set<String> testPartNumbers = new Set<String>();
        testPartNumbers.add('TestProduct1');
        products = fetchTestProductsByPartNumber(testPartNumbers);
        Set<String> testPartNumbersNoPrice = new Set<String>();
        testPartNumbersNoPrice.add('TestProduct-NoPBEs');
        Map<Id, Product2> productsNoPrice = createTestProductsByPartNumber(testPartNumbersNoPrice);
        for (Id prodId : productsNoPrice.keySet()) {
            products.put(prodId, productsNoPrice.get(prodId));
        }
        pricebookEntries = fetchTestStdPricebookEntriesFromProducts(products);
        payload = createCustomTestPayload(createTestPayloadQuoteConfigsFromSfQuotesAndProducts('OEMSpec', quotes, products, null));
    }

    public void setupScenario2d() {
        // Same as Scenario2 except there were no line items in the QuoteConfig
        accounts = createGenericTestAccounts(1);
        opptys = createGenericTestOpptysForAccounts(1, accounts);
        quotes = createGenericTestQuotesForOpptys(1, opptys);
        payload = createCustomTestPayload(createTestPayloadQuoteConfigsFromSfQuotesAndProducts('OEMSpec', quotes, new Map<Id, Product2>{}, null));
    }

    public void setupScenario2e() {
        // Same as Scenario2 except the configuratorName is invalid
        accounts = createGenericTestAccounts(1);
        opptys = createGenericTestOpptysForAccounts(1, accounts);
        quotes = createGenericTestQuotesForOpptys(1, opptys);
        Set<String> testPartNumbers = new Set<String>();
        testPartNumbers.add('TestProduct1');
        products = fetchTestProductsByPartNumber(testPartNumbers);
        pricebookEntries = fetchTestStdPricebookEntriesFromProducts(products);
        payload = createCustomTestPayload(createTestPayloadQuoteConfigsFromSfQuotesAndProducts('InvalidConfiguratorName',quotes, products, null));
    }

    public void setupScenario2f() {
        // Same as Scenario2 except there are 3 QuoteConfigs in the payload
        accounts = createGenericTestAccounts(1);
        opptys = createGenericTestOpptysForAccounts(1, accounts);
        quotes = createGenericTestQuotesForOpptys(17, opptys);
        Set<String> testPartNumbers = new Set<String>();
        testPartNumbers.add('TestProduct1');
        testPartNumbers.add('TestProduct2');
        testPartNumbers.add('TestProduct3');
        testPartNumbers.add('TestProduct4');
        testPartNumbers.add('TestProduct5');
        products = fetchTestProductsByPartNumber(testPartNumbers);
        pricebookEntries = fetchTestStdPricebookEntriesFromProducts(products);
        payload = createCustomTestPayload(createTestPayloadQuoteConfigsFromSfQuotesAndProducts('OEMSpec', quotes, products, null));
    }

    public void setupScenario2g() {
        // Same as Scenario2 except the part number is not in SF and a specific dummy part number must be used instead
        accounts = createGenericTestAccounts(1);
        opptys = createGenericTestOpptysForAccounts(1, accounts);
        quotes = createGenericTestQuotesForOpptys(1, opptys);
        Set<String> dummyPartNumbers = new Set<String>();
        String nonGenericItemType = null;
        ExtConfigQuoteLineProcessor processor = new ExtConfigQuoteLineProcessor();
        for (String itemType : processor.dummyPartNumberMap.keySet()) {
            dummyPartNumbers.add(processor.dummyPartNumberMap.get(itemType));
            if (itemType.toLowerCase()!='generic') {
                nonGenericItemType=itemType;
            }
        }
        products = fetchTestProductsByPartNumber(dummyPartNumbers);
        pricebookEntries = fetchTestStdPricebookEntriesFromProducts(products);
        Set<String> bogusPartNumbers = new Set<String>();
        bogusPartNumbers.add('TestProduct-NoPBEs');
        Map<Id, Product2> bogusProducts = createTestProductsByPartNumberWithoutInsert(bogusPartNumbers);
        payload = createCustomTestPayload(createTestPayloadQuoteConfigsFromSfQuotesAndProducts('OEMSpec', quotes, bogusProducts, nonGenericItemType));
    }

    public void setupScenario2h() {
        // Same as Scenario2, except there are 3 distinct payloads
        accounts = createGenericTestAccounts(3);
        opptys = createGenericTestOpptysForAccounts(1, accounts);
        quotes = createGenericTestQuotesForOpptys(1, opptys);
        Set<String> testPartNumbers = new Set<String>();
        testPartNumbers.add('TestProduct1');
        products = fetchTestProductsByPartNumber(testPartNumbers);
        pricebookEntries = fetchTestStdPricebookEntriesFromProducts(products);

        Map<Id, SBQQ__Quote__c> quotes0 = new Map<Id, SBQQ__Quote__c>{};
        quotes0.put(quotes.values()[0].Id, quotes.values()[0]);
        payload = createCustomTestPayload(createTestPayloadQuoteConfigsFromSfQuotesAndProducts('OEMSpec', quotes0, products, null));

        Map<Id, SBQQ__Quote__c> quotes1 = new Map<Id, SBQQ__Quote__c>{};
        quotes1.put(quotes.values()[1].Id, quotes.values()[1]);
        payload1 = createCustomTestPayload(createTestPayloadQuoteConfigsFromSfQuotesAndProducts('OEMSpec', quotes1, products, null));

        Map<Id, SBQQ__Quote__c> quotes2 = new Map<Id, SBQQ__Quote__c>{};
        quotes2.put(quotes.values()[2].Id, quotes.values()[2]);
        payload2 = createCustomTestPayload(createTestPayloadQuoteConfigsFromSfQuotesAndProducts('OEMSpec', quotes2, products, null));
    }

    public void setupScenario2i() {
        // Same as Scenario2, except the JSON requests Technical Spec -rev1 (not the default)
        accounts = createGenericTestAccounts(1);
        opptys = createGenericTestOpptysForAccounts(1, accounts);
        quotes = createGenericTestQuotesForOpptys(1, opptys);
        Set<String> testPartNumbers = new Set<String>();
        testPartNumbers.add('TestProduct1');
        products = fetchTestProductsByPartNumber(testPartNumbers);
        pricebookEntries = fetchTestStdPricebookEntriesFromProducts(products);
        //payload = createCustomTestPayload(createTestPayloadQuoteConfigsFromSfQuotesAndProductsWithTechSpecs('OEMSpec', quotes, products, null, technicalSpecs, 1));
    }

    public void setupScenario2j() {
        // Same as Scenario2i, except the Technical Spec don't actually exist in SF (so we can check that scenario)
        accounts = createGenericTestAccounts(1);
        opptys = createGenericTestOpptysForAccounts(1, accounts);
        quotes = createGenericTestQuotesForOpptys(1, opptys);
        Set<String> testPartNumbers = new Set<String>();
        testPartNumbers.add('TestProduct1');
        products = fetchTestProductsByPartNumber(testPartNumbers);
        pricebookEntries = fetchTestStdPricebookEntriesFromProducts(products);
        //payload = createCustomTestPayload(createTestPayloadQuoteConfigsFromSfQuotesAndProductsWithTechSpecs('OEMSpec', quotes, products, null, bogusTechnicalSpecs, 1));
    }

    //public void setupScenario2k() {
    //  // Same as Scenario2, except the Quote has a very large number of line items
    //  accounts = createGenericTestAccounts(1);
    //  opptys = createGenericTestOpptysForAccounts(1, accounts);
    //  quotes = createGenericTestQuotesForOpptys(1, opptys);
    //  Set<String> testPartNumbers = new Set<String>();
    //  testPartNumbers.add('TestProduct1');
    //  products = fetchTestProductsByPartNumber(testPartNumbers);
    //  products = createTestProductCopies(200, products);
    //  pricebookEntries = fetchTestStdPricebookEntriesFromProducts(products);
    //  payload = createCustomTestPayload(createTestPayloadQuoteConfigsFromSfQuotesAndProducts('OEMSpec', quotes, products, null));
    //}

    public void setupScenario2m() {
        // Sames as Scenario2, except the payload is very large because the configSelections node is overloaded
        accounts = createGenericTestAccounts(1);
        opptys = createGenericTestOpptysForAccounts(1, accounts);
        quotes = createGenericTestQuotesForOpptys(1, opptys);
        Set<String> testPartNumbers = new Set<String>();
        testPartNumbers.add('TestProduct1');
        products = fetchTestProductsByPartNumber(testPartNumbers);
        pricebookEntries = fetchTestStdPricebookEntriesFromProducts(products);
        payload = createCustomTestPayload(createTestPayloadQuoteConfigsExtraLarge('OEMSpec', quotes, products, 129000));
    }

    public void setupScenario3() {
        // Existing SF External_Configuration__c matches External Id from WS Payload (update existing config)
        externalConfigs = createTestExternalConfigByExternalId('1001');
        payload = createCustomTestPayload(createTestPayloadQuoteConfigMatchingTestExternalConfig0());
    }

    public void setupScenario4() {
        // WS Payload contains a QuoteConfig that has no SF Quote Number on it
        accounts = createGenericTestAccounts(1);
        opptys = createGenericTestOpptysForAccounts(1, accounts);
        quotes = createGenericTestQuotesForOpptys(1, opptys);
        Set<String> testPartNumbers = new Set<String>();
        testPartNumbers.add('TestProduct1');
        products = fetchTestProductsByPartNumber(testPartNumbers);
        pricebookEntries = fetchTestStdPricebookEntriesFromProducts(products);
        payload = createCustomTestPayload(createTestPayloadUnattachedQuoteConfigsFromSfQuotesAndProducts(quotes, products, null));
    }

    public void setupScenario5() {
        // Create Quote and External Config to test user display code (not testing Payload)
        accounts = createGenericTestAccounts(1);
        opptys = createGenericTestOpptysForAccounts(1, accounts);
        quotes = createGenericTestQuotesForOpptys(1, opptys);
        externalConfigs = createGenericTestExternalConfigsForQuotes(1, quotes);

        ConfiguratorWSUtils.logContents('externalConfigs', String.valueOf(externalConfigs));
    }

    public void setupScenarioTemp() {
        accounts = createGenericTestAccounts(1);
        opptys = createGenericTestOpptysForAccounts(1, accounts);
        quotes = createGenericTestQuotesForOpptys(1, opptys);
    }

    private void createGenericTestPayload(String configuratorName) {
        payload = new ConfiguratorWS.QuoteConnectorPayload();
        payload.quoteConfigs = createGenericTestPayloadQuoteConfigs(configuratorName);
    }

    private ConfiguratorWS.QuoteConnectorPayload createCustomTestPayload(List<ConfiguratorWS.QuoteConfig> quoteConfigs) {
        ConfiguratorWS.QuoteConnectorPayload returnPayload = new ConfiguratorWS.QuoteConnectorPayload();
        returnPayload.quoteConfigs = quoteConfigs;
        return returnPayload;
    }

    private List<ConfiguratorWS.QuoteConfig> createGenericTestPayloadQuoteConfigs(String configuratorName) {
        List<ConfiguratorWS.QuoteConfig> returnList = new List<ConfiguratorWS.QuoteConfig>{};

        ConfiguratorWS.QuoteConfig newQuote = new ConfiguratorWS.QuoteConfig();
        //newQuote.configuratorName = 'OEMSpec';
        newQuote.configuratorName = configuratorName;
        newQuote.externalConfigId = '12345';
        newQuote.sfQuoteNumber = '222';
        newQuote.configSelections = 'Sample external configurator selections for Quote ' + newQuote.externalConfigId;
        newQuote.lineItems = createGenericTestPayloadLineItems(newQuote.externalConfigId);
        returnList.add(newQuote);

        newQuote = new ConfiguratorWS.QuoteConfig();
        //newQuote.configuratorName = 'OEMSpec';
        newQuote.configuratorName = configuratorName;
        newQuote.externalConfigId = '12346';
        newQuote.sfQuoteNumber = '223';
        newQuote.configSelections = 'Sample external configurator selections for Quote ' + newQuote.externalConfigId;
        newQuote.lineItems = createGenericTestPayloadLineItems(newQuote.externalConfigId);
        returnList.add(newQuote);

        return returnList;
    }

    private List<ConfiguratorWS.QuoteLineItem> createGenericTestPayloadLineItems(String externalConfigId) {
        List<ConfiguratorWS.QuoteLineItem> returnItems = new List<ConfiguratorWS.QuoteLineItem>{};

        ConfiguratorWS.QuoteLineItem newItem = new ConfiguratorWS.QuoteLineItem();
        newItem.partNumber='123-' + externalConfigId;
        newItem.quantity=1;
        newItem.specialPrice=10;
        returnItems.add(newItem);

        newItem = new ConfiguratorWS.QuoteLineItem();
        newItem.partNumber='124-' + externalConfigId;
        newItem.quantity=2;
        newItem.specialPrice=11;
        returnItems.add(newItem);

        return returnItems;
    }

    private List<ConfiguratorWS.QuoteConfig> createTestPayloadQuoteConfigsFromSfQuotesAndProducts(String configuratorName, Map<Id, SBQQ__Quote__c> quotes, Map<Id, Product2> quoteProducts, String itemType) {
        
        List<ConfiguratorWS.QuoteConfig> returnList = new List<ConfiguratorWS.QuoteConfig>{};

        for (SBQQ__Quote__c target : quotes.values()) {

            ConfiguratorWS.QuoteConfig newQuote = new ConfiguratorWS.QuoteConfig();
            newQuote.configuratorName = configuratorName;
            newQuote.externalConfigId = null;
            newQuote.sfQuoteNumber = target.Name;
            newQuote.configSelections = 'Sample external configurator selections for Quote ' + newQuote.sfQuoteNumber;
            newQuote.lineItems = createTestPayloadQuoteLineItemsFromSfProducts(quoteProducts, itemType);
            returnList.add(newQuote);
        }

        return returnList;
    }

    private List<ConfiguratorWS.QuoteConfig> createTestPayloadUnattachedQuoteConfigsFromSfQuotesAndProducts(Map<Id, SBQQ__Quote__c> quotes, Map<Id, Product2> quoteProducts, String itemType) {
        
        List<ConfiguratorWS.QuoteConfig> returnList = new List<ConfiguratorWS.QuoteConfig>{};

        for (SBQQ__Quote__c target : quotes.values()) {

            ConfiguratorWS.QuoteConfig newQuote = new ConfiguratorWS.QuoteConfig();
            newQuote.configuratorName = 'OEMSpec';
            newQuote.externalConfigId = null;
            newQuote.sfQuoteNumber = null;
            newQuote.configSelections = 'Sample external configurator selections for Quote ' + newQuote.sfQuoteNumber;
            newQuote.lineItems = createTestPayloadQuoteLineItemsFromSfProducts(quoteProducts, itemType);
            returnList.add(newQuote);
        }

        return returnList;
    }

    private List<ConfiguratorWS.QuoteConfig> createTestPayloadQuoteConfigsExtraLarge(String configuratorName, Map<Id, SBQQ__Quote__c> quotes, Map<Id, Product2> quoteProducts, Integer configSelectionsSize) {
        
        List<ConfiguratorWS.QuoteConfig> returnList = new List<ConfiguratorWS.QuoteConfig>{};

        for (SBQQ__Quote__c target : quotes.values()) {

            ConfiguratorWS.QuoteConfig newQuote = new ConfiguratorWS.QuoteConfig();
            newQuote.configuratorName = configuratorName;
            newQuote.externalConfigId = null;
            newQuote.sfQuoteNumber = target.Name;
            newQuote.configSelections = createExtraLargeString(configSelectionsSize);
            newQuote.lineItems = createTestPayloadQuoteLineItemsFromSfProducts(quoteProducts, null);
            returnList.add(newQuote);
        }

        return returnList;
    }

    private String createExtraLargeString(Integer stringLength) {
        String returnString = '';
        Integer loops = Integer.valueOf(stringLength/100);
        for (Integer i=0; i<loops; i++) {
            returnString+='0123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789';
        }
        return returnString;
    }

    private List<ConfiguratorWS.QuoteLineItem> createTestPayloadQuoteLineItemsFromSfProducts(Map<Id, Product2> quoteProducts, String itemType) {
        List<ConfiguratorWS.QuoteLineItem> returnList = new List<ConfiguratorWS.QuoteLineItem>{};

        for (Product2 qp : quoteProducts.values()) {
            ConfiguratorWS.QuoteLineItem newLineItem = new ConfiguratorWS.QuoteLineItem();
            newLineItem.partNumber = qp.Name;
            newLineItem.quantity = 1;
            newLineItem.itemType = itemType;
            returnList.add(newLineItem);
        }

        return returnList;
    }

    private List<ConfiguratorWS.QuoteConfig> createTestPayloadQuoteConfigMatchingTestExternalConfig0() {
        
        List<ConfiguratorWS.QuoteConfig> returnList = new List<ConfiguratorWS.QuoteConfig>{};

        External_Configuration__c target = externalConfigs.values()[0];

        ConfiguratorWS.QuoteConfig newQuote = new ConfiguratorWS.QuoteConfig();
        newQuote.configuratorName = 'OEMSpec';
        newQuote.externalConfigId = target.External_Id__c;
        newQuote.sfQuoteNumber = target.Name;
        newQuote.configSelections = 'Sample external configurator selections for Quote ' + newQuote.externalConfigId;
        //newQuote.lineItems = createGenericTestPayloadLineItems(newQuote.externalConfigId);
        returnList.add(newQuote);

        return returnList;
    }

    private Map<Id, Account> createGenericTestAccounts(Integer numAccounts) {
        List<Account> newAccounts = new List<Account>{};
        for (Integer i=0; i<numAccounts; i++) {
            newAccounts.add(new Account(Name='Test Account' + i));
        }
        insert newAccounts;
        return new Map<Id, Account>([Select Id, Name From Account Where Id IN :newAccounts]);
    }

    //private Map<Id, Product2> createTestProductCopies(Integer numProducts, Map<Id, Product2> prods) {
    //  List<Product2> newProducts = new List<Product2>{};
    //  Product2 origProduct = prods.values()[0];
    //  for (Integer i=0; i<numProducts; i++) {
    //      newProducts.add(new Product2(Name=origProduct.Name, ExtId__c=origProduct.ExtId__c + i));
    //  }
    //  insert newProducts;
    //  return new Map<Id, Product2>([Select Id, Name, ExtId__c From Product2 Where Id IN :newProducts]);
    //}

    private Map<Id, Product2> createTestProductsByPartNumber(Set<String> partNumbers) {
        List<Product2> newProducts = new List<Product2>{};
        for (String partNumber : partNumbers) {
            newProducts.add(new Product2(Name=partNumber, ExtId__c=partNumber+'ExtId'));
        }
        insert newProducts;

        return new Map<Id, Product2>([Select Id, Name, ExtId__c From Product2 Where Id IN :newProducts]);
    }

    private Map<Id, Product2> fetchTestProductsByPartNumber(Set<String> partNumbers) {
        List<Product2> newProducts = [Select Id From Product2 Where Name IN: partNumbers];

        //List<Product2> newProducts = new List<Product2>{};
        //for (String partNumber : partNumbers) {
        //  newProducts.add(new Product2(Name=partNumber, ExtId__c=partNumber+'ExtId'));
        //}
        //insert newProducts;

        return new Map<Id, Product2>([Select Id, Name, ExtId__c From Product2 Where Id IN :newProducts]);
    }

    private Map<Id, Product2> createTestProductsByPartNumberWithoutInsert(Set<String> partNumbers) {
        List<Product2> newProducts = new List<Product2>{};
        for (String partNumber : partNumbers) {
            newProducts.add(new Product2(Name=partNumber, ExtId__c=partNumber+'ExtId'));
        }
        Map<Id, Product2> returnMap = new Map<Id, Product2>{};
        for (Product2 p : newProducts) {
            returnMap.put(getFakeSfId(SF_PREFIX_PRODUCT), p);
        }
        return returnMap;
    }

    private Id getFakeSfId(String prefix) {
        fakeSfIdIndex++;
        return prefix + String.valueOf(fakeSfIdIndex).leftPad(12, '0');
    }

    private Map<Id, PricebookEntry> fetchTestStdPricebookEntriesFromProducts(Map<Id, Product2> prods) {
        List<PricebookEntry> newPricebookEntries = [Select Id From PricebookEntry Where Product2Id IN :prods.keySet() And Pricebook2Id = :Test.getStandardPricebookId()];

        //List<PricebookEntry> newPricebookEntries = new List<PricebookEntry>{};
        //Integer priceAdder=0;
        //for (Product2 prod : prods.values()) {
        //  newPricebookEntries.add(new PricebookEntry(Pricebook2Id=Test.getStandardPricebookId(), Product2Id=prod.Id, UnitPrice=100+priceAdder));
        //  priceAdder++;
        //}
        //insert newPricebookEntries;

        return new Map<Id, PricebookEntry>([Select Id, Pricebook2Id, Product2Id, UnitPrice From PricebookEntry Where Id IN :newPricebookEntries]);
    }

    private Map<Id, Opportunity> createGenericTestOpptysForAccounts(Integer numOpptysEach, Map<Id, Account> accts) {
        List<Opportunity> newOpptys = new List<Opportunity>{};
        for (Account acct : accts.values()) {
            for (Integer i=0; i<numOpptysEach; i++) {
                newOpptys.add(new Opportunity(Name='Test Oppty1', AccountId=acct.Id, Pricebook2Id=Test.getStandardPricebookId(), 
                                    StageName='Qualification', CloseDate=Date.today()));
            }
        }
        insert newOpptys;
        return new Map<Id, Opportunity>([Select Id, Name, AccountId, Pricebook2Id, StageName, CloseDate From Opportunity Where Id IN :newOpptys]);
    }

    private Map<Id, SBQQ__Quote__c> createGenericTestQuotesForOpptys(Integer numQuotesEach, Map<Id, Opportunity> opptys) {
        List<SBQQ__Quote__c> newQuotes = new List<SBQQ__Quote__c>{};
        for (Opportunity oppty : opptys.values()) {
            for (Integer i=0; i<numQuotesEach; i++) {
                newQuotes.add(new SBQQ__Quote__c(SBQQ__Pricebook__c=Test.getStandardPricebookId(), SBQQ__Account__c=oppty.AccountId, SBQQ__Opportunity2__c=oppty.Id,
                                    SBQQ__LineItemsGrouped__c=true));
            }
        }
        insert newQuotes;
        return new Map<Id, SBQQ__Quote__c>([Select Id, Name, SBQQ__Pricebook__c, SBQQ__Account__c, SBQQ__Opportunity2__c, SBQQ__LineItemsGrouped__c From SBQQ__Quote__c Where Id IN :newQuotes]);
    }

    private Map<Id, External_Configuration__c> createGenericTestExternalConfigsForQuotes(Integer numExtConfigsEach, Map<Id, SBQQ__Quote__c> qs) {
        List<External_Configuration__c> newExtConfigs = new List<External_Configuration__c>{};
        for (SBQQ__Quote__c q : qs.values()) {
            for (Integer i=0; i<numExtConfigsEach; i++) {
                newExtConfigs.add(new External_Configuration__c(Quote__c=q.Id, JSON_QuoteConfig__c='{}'));
            }
        }   
        insert newExtConfigs;
        return new Map<Id, External_Configuration__c>([Select Id, Quote__c, Name, External_Id__c From External_Configuration__c Where Id IN :newExtConfigs]);
    }

    private Map<Id, External_Configuration__c> createTestExternalConfigByExternalId(String externalId) {
        List<External_Configuration__c> newExtConfigs = new List<External_Configuration__c>{};
        newExtConfigs.add(new External_Configuration__c(Quote__c=null, External_Id__c=externalId));
        insert newExtConfigs;
        return new Map<Id, External_Configuration__c>([Select Id, Quote__c, Name, External_Id__c From External_Configuration__c Where Id IN :newExtConfigs]);
    }

    private Map<Id, SBQQ__QuoteLineGroup__c> createGenericTestQuoteLineGroupsForExternalConfigs(Map<Id, External_Configuration__c> extConfigs) {
        List<SBQQ__QuoteLineGroup__c> newQuoteLineGroups = new List<SBQQ__QuoteLineGroup__c>{};
        for (External_Configuration__c extConfig : extConfigs.values()) {
            newQuoteLineGroups.add(new SBQQ__QuoteLineGroup__c(SBQQ__Quote__c=extConfig.Quote__c, External_Configuration__c=extConfig.Id, Name='Test Group for ' + extConfig.Name));
        }   
        insert newQuoteLineGroups;
        return new Map<Id, SBQQ__QuoteLineGroup__c>([Select Id, SBQQ__Quote__c, Name From SBQQ__QuoteLineGroup__c Where Id IN :newQuoteLineGroups]);
    }

    // Note: this method does not utilize any Quote Line Groups that may exist for the ExtConfigs
    private Map<Id, SBQQ__QuoteLine__c> createGenericTestQuoteLinesForExternalConfigs(Map<Id, Product2> productsForEach, Map<Id, External_Configuration__c> extConfigs) {
        List<SBQQ__QuoteLine__c> newQuoteLines = new List<SBQQ__QuoteLine__c>{};
        for (External_Configuration__c extConfig : extConfigs.values()) {
            for (Product2 prod : productsForEach.values()) {
                newQuoteLines.add(new SBQQ__QuoteLine__c(SBQQ__Quote__c=extConfig.Quote__c,SBQQ__Product__c=prod.Id, External_Configuration__c=extConfig.Id, SBQQ__Quantity__c=1));
            }
        }   
        insert newQuoteLines;
        return new Map<Id, SBQQ__QuoteLine__c>([Select Id, Name, External_Configuration__c, SBQQ__Group__c, SBQQ__Product__c From SBQQ__QuoteLine__c Where Id IN :newQuoteLines]);
    }

}