public class NewAccount {
    public static void newAcc(){
        Account store = new Account();
        store.Name = 'The Tea Factory';
        store.AccountNumber = '356281';
        store.Phone = '555-0158';
        insert store;
    }
}