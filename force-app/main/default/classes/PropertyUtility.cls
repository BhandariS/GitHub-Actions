public class PropertyUtility {
    public static void newListedProperties(){
        List<Property__c> newPropList = 
            [
                SELECT Name,Broker__r.Email__c,
                Days_On_Market__c 
                from Property__c 
                WHERE Days_On_Market__c  <= 30 
            ];
        for(Property__c prop : newPropList){
            String propEmail = 'Property Name:' + prop.Name + 'Property Email: ' + prop.Broker__r.Email__c ;
            system.debug(propEmail);
        }
        
    }
    
}