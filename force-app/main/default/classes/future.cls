public class future {
    
    
    public static void updateLead(Set<Id> existingRecordIds){
        List<Lead> existingRecords = [SELECT Id, LeadSource FROM Lead WHERE Id IN: existingRecordIds];
        for(Lead record : existingRecords){
            record.LeadSource = 'Call';
        }    
        update existingRecords;
    }
    
    public static void createLeadRecords(){
        Lead anotherLead = new Lead(LastName = 'Testing Future 1');
    	insert anotherLead;
    }
}