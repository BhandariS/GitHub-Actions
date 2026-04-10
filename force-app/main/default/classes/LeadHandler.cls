public class LeadHandler {
    public static boolean alreadyExecuted = false;
    public static void beforeInsertOperation(List<Lead> newRecords){
        for(Lead le : newRecords){
            if(String.isBlank(le.LeadSource)){
                le.LeadSource = 'Other';
            }
            if(string.isBlank(le.Industry)){
                le.addError('Industry Field cannot be Blank');
            }
        }
    }
    public static void afterInsertOperation(List<Lead> newRecords){
        List<Task> leadTask = new List<Task>();
        for(Lead le : newRecords){
            Task NewTask = New Task(Subject='Folow up on Lead Status', whoid=le.Id);
            leadTask.add(NewTask);
        }
        insert leadTask;
        //Inserting Another lead record
        //This will call trigger recursively
        if(LeadHandler.alreadyExecuted == false){
            LeadHandler.alreadyExecuted = true;
            Lead anotherLead = new Lead(LastName='Test Lead', Status='Open - Not Contacted',Company='SFDC', Industry='Agriculture');
            insert anotherLead;
            
        }
    }
    public static void beforeUpdateOperation(List<Lead> newRecords, Map<Id, Lead> oldRecords){
        for(Lead le : newRecords){
            if(String.isBlank(le.LeadSource)){
                le.LeadSource = 'Other';
            }
            if((le.Status == 'Closed - Converted' || le.Status=='Closed - Not Converted') && OldRecords.get(le.Id).Status == 'Open - Not Contacted'){
                le.Status.addError('You cannot update the status directly');
            } 
        }
    }
}