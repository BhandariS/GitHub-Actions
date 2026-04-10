public class AccountTriggerHandler {
    public static void accountTypeMandatory(List<Account> accList){
        for(Account acc : accList){
            if(acc.Rating == 'Hot' && acc.Type == null){
                acc.addError('Type cannot be empty when Rating is Hot');
            }
        }
    }
    public static void insertContact(List<Account> accList){
        List<Contact> conList = new List<Contact>();
        for(Account acc : accList){
            Contact con = new Contact();
            con.AccountId = acc.id;     
            con.LastName = acc.Name;
            conList.add(con);
        }
        if(conList!=null && conList.size()>0){
            insert conList;
        }
    }
    public static void oppurtunityCreation(Map<Id , Account> accNewMap, Map<Id , Account> accOldMap){
        List<Opportunity> oppList = new List<Opportunity>();
        for(Account accObj : accNewMap.values()){
            //compare old value of rating with new value of rating
            if(accNewMap.get(accObj.Id).Rating!=accOldMap.get(accObj.Id).Rating 
               && accNewMap.get(accObj.Id).Rating == 'Hot'){
                   Opportunity opp = new Opportunity();
                   opp.AccountId = accObj.Id;
                   opp.Name = accObj.Name;
                   opp.StageName = 'Need Analysis';
                   opp.CloseDate = system.today().addDays(3); 
				   oppList.add(opp);                   
               }
        }
        if(opplist!=null && oppList.size()>0){
            insert oppList;
        }
    }
}