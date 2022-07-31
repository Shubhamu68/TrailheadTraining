@isTest
public class AccountTriggerTest {
    private static User objeUser = [Select Id, ProfileId from User where Id=: UserInfo.getUserId()];
    
    @isTest
    public static void testOne(){
        system.runAs(objeUser){
            List<Account> updt = new List<Account>();
            for(Integer i =0;i<200;i++){
                updt.add(new Account(Name = 'Account'+i,BillingState = 'CA'));
            }
            
            Test.startTest();
            insert updt;                               
            Test.stopTest();
            // Verify that 200 new Accounts were inserted
            List<Account> verifyAccts = [SELECT Id FROM Account];
            System.assertEquals(200, verifyAccts.size());
        }
    }
}