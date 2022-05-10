/**
 * Created by mrichmond on 2022-05-10.
 */

@IsTest
private class AccountUtilityTest {

    @IsTest
    static void testBehavior() {

        Account a = new Account();
        a.Name = 'AccountUtilityTest';
        a.COPADO_2__c = true;
        insert a;

        Test.startTest();
        List<Account> copadoAccounts = new AccountUtility().getByCopadoField(true);
        Test.stopTest();

        System.assertEquals(1, copadoAccounts.size(), 'Expected a single Account to be returned');
    }
}