public class AccountUtils {
    
    public static List<Account> accountsByState(String bs){
        List<Account> li = [SELECT id,name from Account where BillingState = :bs];
        return li;
    }

}