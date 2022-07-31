public with sharing class AccountTriggerHandler {
    public static void CreateAccounts(List<Account> li){
        //List<Account> updt = new List<Account>();
        for(Account acc:li){
            acc.ShippingState = acc.BillingState;
            
        }
    }
}