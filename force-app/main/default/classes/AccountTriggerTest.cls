@isTest
private class AccountTriggerTest {
    static testMethod void insertContact(){
        List<Account> accList = new List<Account>();
        Account acc = new Account();
        acc.Name = 'Test 12345';
        acc.Rating = 'Warm';
        accList.add(acc);
        Test.StartTest();
        	AccountTriggerHandler.insertContact(accList);
        	//AccountTriggerHandler.accountTypeMandatory(accList);
        Test.StopTest();
    }
    static testMethod void testAccountTypeMandatory(){
        List<Account> accList = new List<Account>();
        Account acc = new Account();
        acc.Name = 'Test 12345';
        acc.Rating = 'Hot';
        test.startTest();
         database.SaveResult saveResObj = database.insert(acc,false);
        test.stopTest();
    }
}