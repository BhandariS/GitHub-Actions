public class LeadTriggerHandler {
    
    public static Boolean alreadyexecuted = true;
    public static void beforeInsertHandler(List<Lead> newRecords){
        for(lead le : newRecords){
            
            if(Trigger.isbefore && String.isBlank(le.LeadSource)){
                le.LeadSource = 'Other';
                
            }
            if(String.isBlank(le.Industry)){
                le.Industry.adderror('Industry field cannot be Blank');
            }  
        }
    }
    
    public static void afterInsertHandler(List<Lead> newRecords){
        List<Task> leadTasks = new List<Task>();
        for(Lead le : newRecords){
            //create a Task
            Task T = new Task(subject = 'Follow up on Lead' , whoId=le.Id);
            leadTasks.add(T);
        }
        insert leadTasks;
        if(LeadTriggerHandler.alreadyExecuted == true){
			LeadTriggerHandler.alreadyExecuted = false;
            Lead anotherLead = new Lead(LastName = 'Test Lead', Status='Open - Not Contacted', Company='Zen', Industry='Banking');
            insert anotherLead;
        }
        
    }
    
}