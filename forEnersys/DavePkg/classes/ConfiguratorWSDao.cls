public without sharing class ConfiguratorWSDao {

    Configurator_API_Settings__c settings;

    public ConfiguratorWSDao() {
        settings = CustomSettingManager.verifyCustomSettings();
        
    }

    public Map<Id, External_Configuration__c> fetchExternalConfigurationsById(Set<Id> extConfigIds) {
        Map<Id, External_Configuration__c> returnMap = new Map<Id, External_Configuration__c>{};
        if (extConfigIds!=null && extConfigIds.size() > 0) {
            Try {
                returnMap = new Map<Id, External_Configuration__c>([Select Id, External_Id__c, JSON_QuoteConfig__c, Quote__c, Quote_Line_Creation_Warnings__c, Quote_Line_Creation_Errors__c, Configurator_Name__c, Quote__r.Name, Quote__r.SAP_Quote_Number__c From External_Configuration__c Where Id IN :extConfigIds]);
                ConfiguratorWSUtils.logContents('DB Query fetchExternalConfigurationsById - Ids found', String.valueOf(returnMap));
            } Catch (Exception e) {
                System.debug('*** DB Query fetchExternalConfigurationsById - Error: ' + e.getMessage());
            }
        }
        return returnMap;
    }

    public List<External_Configuration__c> fetchExternalConfigurationsForCurrentUserRecent() {
        List<External_Configuration__c> returnList = new List<External_Configuration__c>{};
        DateTime targetDateTime = System.Now().addHours(-Integer.valueOf(settings.Config_Receipts_Window_Hours__c));
        Try {
            returnList = [Select Configurator_Name__c, CreatedDate, Id, JSON_QuoteConfig__c, Name, 
                            Quote__c, Quote__r.Name, 
                            Quote__r.SBQQ__Account__r.Name, 
                            Quote__r.SBQQ__Opportunity2__r.Name, 
                            Quote_Line_Creation_Date__c, Quote_Line_Creation_Errors__c, Quote_Line_Creation_Warnings__c 
                            From External_Configuration__c 
                            Where Quote__c!=null 
                                And (Quote__r.OwnerId = :UserInfo.getUserId() Or Quote__r.SBQQ__SalesRep__c = :UserInfo.getUserId()) 
                                And CreatedDate > :targetDateTime 
                            Order By CreatedDate Desc 
                            Limit :Integer.valueOf(settings.Config_Receipts_Max_Count__c)
                            ];
            ConfiguratorWSUtils.logContents('DB Query fetchExternalConfigurationsForCurrentUserRecent - records found', String.valueOf(returnList));
        } Catch (Exception e) {
            System.debug('*** DB Query fetchExternalConfigurationsForCurrentUserRecent - Error: ' + e.getMessage());
        }
        return returnList;
    }

    public List<External_Configuration__c> fetchExternalConfigurationsForQuoteIdRecent(Id quoteId) {
        List<External_Configuration__c> returnList = new List<External_Configuration__c>{};
        if (quoteId!=null) {
            DateTime targetDateTime = System.Now().addHours(-Integer.valueOf(settings.Config_Receipts_Window_Hours__c));
            Try {
                ConfiguratorWSUtils.logContents('quoteId', String.valueOf(quoteId));
                returnList = [Select Configurator_Name__c, CreatedDate, Id, JSON_QuoteConfig__c, Name, 
                                Quote__c, Quote__r.Name, 
                                Quote__r.SBQQ__Account__r.Name, 
                                Quote__r.SBQQ__Opportunity2__r.Name, 
                                Quote_Line_Creation_Date__c, Quote_Line_Creation_Errors__c, Quote_Line_Creation_Warnings__c 
                                From External_Configuration__c 
                                Where Quote__c = :quoteId 
                                    And CreatedDate > :targetDateTime 
                                Order By CreatedDate Desc 
                                Limit :Integer.valueOf(settings.Config_Receipts_Max_Count__c)
                                ];
                ConfiguratorWSUtils.logContents('DB Query fetchExternalConfigurationsForQuoteIdRecent - records found', String.valueOf(returnList));
            } Catch (Exception e) {
                System.debug('*** DB Query fetchExternalConfigurationsForQuoteIdRecent - Error: ' + e.getMessage());
            }
        }
        return returnList;
    }

    public Map<Id, PricebookEntry> fetchPricebookEntriesByPricebookIdsAndProductIds(Set<Id> pricebookIds, Set<Id> productIds) {
        Map<Id, PricebookEntry> returnMap = new Map<Id, PricebookEntry>{};

        if (pricebookIds!=null && pricebookIds.size() > 0 && productIds!=null && productIds.size() > 0) {
            Try {
                returnMap = new Map<Id, PricebookEntry>([Select Id, Pricebook2Id, Product2Id, UnitPrice From PricebookEntry Where Pricebook2Id IN :pricebookIds And Product2Id IN :productIds]);
                ConfiguratorWSUtils.logContents('DB Query fetchPricebookEntriesByPricebookIdsAndProductIds - PricebookEntries found', String.valueOf(returnMap));
            } Catch (Exception e) {
                System.debug('*** DB Query fetchPricebookEntriesByPricebookIdsAndProductIds - Error: ' + e.getMessage());
            }
        }
        return returnMap;
    }

    public Map<Id, Product2> fetchProductsByPartNumbers(Set<String> partNumbers) {
        Map<Id, Product2> returnMap = new Map<Id, Product2>{};
        if (partNumbers!=null && partNumbers.size() > 0) {
            Try {
                returnMap = new Map<Id, Product2>([Select Approval_Required__c, Charger_VAC_Options__c, Charger_Voltage_Options__c, Description, ExtId__c, Id, Name, SBQQ__PriceEditable__c, CostPrice__c From Product2 Where Name IN :partNumbers]);
                ConfiguratorWSUtils.logContents('DB Query fetchProductsByPartNumbers - Products found', String.valueOf(returnMap));
            } Catch (Exception e) {
                System.debug('*** DB Query fetchProductsByPartNumbers - Error: ' + e.getMessage());
            }
        }
        return returnMap;
    }

    public Map<Id, SBQQ__Quote__c> fetchQuotesByQuoteNumber(Set<String> quoteNumbers) {
        Map<Id, SBQQ__Quote__c> returnMap = new Map<Id, SBQQ__Quote__c>{};
        if (quoteNumbers!=null && quoteNumbers.size() > 0) {
            Try {
                returnMap = new Map<Id,SBQQ__Quote__c>([Select Id, Name, SAP_Quote_Number__c, SBQQ__PriceBook__c, SBQQ__LineItemsGrouped__c From SBQQ__Quote__c Where Name IN :quoteNumbers]);
                ConfiguratorWSUtils.logContents('DB Query fetchQuotesByQuoteNumber - Pre-existing quotes found', String.valueOf(returnMap));
            } Catch (Exception e) {
                System.debug('*** DB Query fetchQuotesByQuoteNumber - Error: - ' + e.getMessage());
            }
        }
        return returnMap;
    }

    public Map<Id, Pricebook2> fetchStdPricebook() {
        Map<Id, Pricebook2> returnMap = new Map<Id, Pricebook2>{};

        Try {
            returnMap = new Map<Id, Pricebook2>([Select Id From Pricebook2 Where IsActive=true and IsStandard=true Order By CreatedDate Desc Limit 1]);
            ConfiguratorWSUtils.logContents('DB Query fetchStdPricebook - Standard Pricebook found', String.valueOf(returnMap));
        } Catch (Exception e) {
            System.debug('*** DB Query fetchStdPricebook - Error: - ' + e.getMessage());
        }

        return returnMap;
    }

    public DaoResults upsertExternalConfigurations(List<External_Configuration__c> extConfigs) {
        DaoResults daoResults = new DaoResults();

        Try {
            if (extConfigs.size() > 0) {
                daoResults.upsertResults = Database.upsert(extConfigs, External_Configuration__c.External_Id__c, false);
                ConfiguratorWSUtils.logContents('DB Saved upsertExternalConfigurations - External_Configuration__c', String.valueOf(extConfigs));
                ConfiguratorWSUtils.logContents('DB Saved upsertExternalConfigurations - daoResults', String.valueOf(daoResults.upsertResults));
            }
        } Catch(Exception e){
            System.debug('*** DB Save upsertExternalConfigurations - Error: ' + e.getMessage());
        }

        return daoResults;
    }

    public DaoResults upsertExternalConfigurationsById(List<External_Configuration__c> extConfigs) {
        DaoResults daoResults = new DaoResults();

        Try {
            if (extConfigs.size() > 0) {
                daoResults.upsertResults = Database.upsert(extConfigs, External_Configuration__c.Id, false);
                ConfiguratorWSUtils.logContents('DB Saved upsertExternalConfigurationsById - External_Configuration__c', String.valueOf(extConfigs));
                ConfiguratorWSUtils.logContents('DB Saved upsertExternalConfigurationsById - daoResults', String.valueOf(daoResults.upsertResults));
            }
        } Catch(Exception e){
            daoResults.dbException = new DaoException(e.getMessage());
            daoResults.upsertResults = null;
            System.debug('*** DB Save upsertExternalConfigurationsById - Error: ' + e.getMessage());
        }

        return daoResults;
    }

    public DaoResults upsertQuoteLineGroups(List<SBQQ__QuoteLineGroup__c> quoteLineGroups) {
        DaoResults daoResults = new DaoResults();

        Try {
            if (quoteLineGroups.size() > 0) {
                daoResults.upsertResults = Database.upsert(quoteLineGroups, SBQQ__QuoteLineGroup__c.External_Id__c, false);
                ConfiguratorWSUtils.logContents('DB Saved upsertQuoteLineGroups - SBQQ__QuoteLineGroup__c', String.valueOf(quoteLineGroups));
                ConfiguratorWSUtils.logContents('DB Saved upsertQuoteLineGroups - upsertResults', String.valueOf(daoResults.upsertResults));
            }
        } Catch(Exception e){
            daoResults.dbException = new DaoException(e.getMessage());
            daoResults.upsertResults = null;
            System.debug('*** DB Save upsertQuoteLineGroups - Error: ' + e.getMessage());
        }

        return daoResults;
    }

    public DaoResults upsertQuoteLines(List<SBQQ__QuoteLine__c> quoteLines) {
        DaoResults daoResults = new DaoResults();

        Try {
            if (quoteLines.size() > 0) {
                daoResults.upsertResults = Database.upsert(quoteLines, SBQQ__QuoteLine__c.Id, false);
                ConfiguratorWSUtils.logContents('DB Saved upsertQuoteLines - SBQQ__QuoteLine__c', String.valueOf(quoteLines));
                ConfiguratorWSUtils.logContents('DB Saved upsertQuoteLines - upsertResults', String.valueOf(daoResults.upsertResults));
            }
        } Catch(Exception e){
            daoResults.dbException = new DaoException(e.getMessage());
            daoResults.upsertResults = null;
            System.debug('*** DB Save upsertQuoteLines - Error: ' + e.getMessage());
        }

        return daoResults;
    }
    
    public DaoResults upsertQuoteLinesbyExternalId(List<SBQQ__QuoteLine__c> quoteLines) {
        DaoResults daoResults = new DaoResults();

        Try {
            if (quoteLines.size() > 0) {
                daoResults.upsertResults = Database.upsert(quoteLines, SBQQ__QuoteLine__c.External_Id__c, false);
                ConfiguratorWSUtils.logContents('DB Saved upsertQuoteLines - SBQQ__QuoteLine__c', String.valueOf(quoteLines));
                ConfiguratorWSUtils.logContents('DB Saved upsertQuoteLines - upsertResults', String.valueOf(daoResults.upsertResults));
            }
        } Catch(Exception e){
            daoResults.dbException = new DaoException(e.getMessage());
            daoResults.upsertResults = null;
            System.debug('*** DB Save upsertQuoteLines - Error: ' + e.getMessage());
        }

        return daoResults;
    }
    
    public DaoResults deleteQuoteLines(List<SBQQ__QuoteLine__c> quoteLines) {
        DaoResults daoResults = new DaoResults();

        Try {
            if (quoteLines.size() > 0) {
                daoResults.deleteResults = Database.delete(quoteLines, false);
                ConfiguratorWSUtils.logContents('DB Delete deleteQuoteLines - SBQQ__QuoteLine__c', String.valueOf(quoteLines));
                ConfiguratorWSUtils.logContents('DB Delete deleteQuoteLines - deleteResults', String.valueOf(daoResults.deleteResults));
            }
        } Catch(Exception e){
            daoResults.dbException = new DaoException(e.getMessage());
            daoResults.deleteResults = null;
            System.debug('*** DB Delete deleteQuoteLines - Error: ' + e.getMessage());
        }

        return daoResults;
    }

    public DaoResults upsertQuotes(List<SBQQ__Quote__c> quotes) {
        DaoResults daoResults = new DaoResults();

        Try {
            if (quotes.size() > 0) {
                daoResults.upsertResults = Database.upsert(quotes, SBQQ__Quote__c.Id, false);
                ConfiguratorWSUtils.logContents('DB Saved upsertQuotes - SBQQ__Quote__c', String.valueOf(quotes));
                ConfiguratorWSUtils.logContents('DB Saved upsertQuotes - upsertResults', String.valueOf(daoResults.upsertResults));
            }
        } Catch(Exception e){
            daoResults.dbException = new DaoException(e.getMessage());
            daoResults.upsertResults = null;
            System.debug('*** DB Save upsertQuotes - Error: ' + e.getMessage());
        }

        return daoResults;
    }

    public DaoResults upsertWSRequestsById(List<WS_Request__c> wsRequests) {
        DaoResults daoResults = new DaoResults();

        Try {
            if (wsRequests.size() > 0) {
                daoResults.upsertResults = Database.upsert(wsRequests, WS_Request__c.Id, false);
                ConfiguratorWSUtils.logContents('DB Saved upsertWSRequestsById - WS_Request__c', String.valueOf(wsRequests));
                ConfiguratorWSUtils.logContents('DB Saved upsertWSRequestsById - daoResults', String.valueOf(daoResults.upsertResults));
            }
        } Catch(Exception e){
            daoResults.dbException = new DaoException(e.getMessage());
            daoResults.upsertResults = null;
            System.debug('*** DB Save upsertWSRequestsById - Error: ' + e.getMessage());
        }

        return daoResults;
    }

    public class DaoResults {
        public DaoException dbException { get; set; }
        public Database.UpsertResult[] upsertResults { get; set; }
        public Database.DeleteResult[] deleteResults { get; set; }

        public DaoResults() {
        }
    }

    public class DaoException extends Exception {}

}