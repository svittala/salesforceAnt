public class MobileLookUp {
  public String lookupValue {get;set;}
  public sObject myObject {Get;set;}
  public String objectName {get;set;}
  public String objectField {get;set;}
  public String filter {Get;set;}
  public List<Item> myValues {get;set;}

  public class Item
  {
    public String value {get;set;}
    public String label {get;set;}
    
    public Item(String v, String l)
    {
      value = v;
      label = l;
    }
  }

   public void getTheValues() {
       Schema.DescribeSObjectResult objDescribe;
        try{
            myValues = new List<Item>();
            filter = escapeReservedCharacters(filter);
            String myQuery = 'Select Id, Name From ' + objectName + ' Where Name Like \'%' + filter + '%\'';
            System.debug('Filter value = ' + filter);
            system.debug('Query value = ' + myQuery);
            List<SObject> recList = Database.query(myQuery);
            for (SObject rec : recList) {
                myValues.add(new Item((String)rec.get('Id'), (String)rec.get('Name')));
            }
        }catch(exception e){
            system.assert(false,'MobileLookUp Error:' + e.getMessage() + '\r\n Line Number: ' + e.getLineNumber() + ' \r\n ObjectName = ' +objectName + ' \r\n Object Field = ' + objectField);
        }
    } 
  
    private String escapeReservedCharacters(String s) {
        String reservedCharacters = '—&|!{}[]()^~:\\\"\'+-';
        for (Integer i = 0; i < reservedCharacters.length()-1; i++) s = s.replace(reservedCharacters.substring(i,i+1), '\\' + reservedCharacters.substring(i,i+1));
        return s;
    }
 
}