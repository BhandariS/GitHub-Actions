public class contactListHandler {
    
    @AuraEnabled
    public static List<Contact> find(){
        return [SELECT Id, Name, Phone FROM Contact];
    }

}