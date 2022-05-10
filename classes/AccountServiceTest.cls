/**
 * Created by mrichmond on 2022-05-10.
 */

@IsTest
private class AccountServiceTest {

    @TestSetup
    static void setupTestData() {
        Account a = new Account();
        a.Name = 'AccountServiceTest';

        insert a;
    }

    @IsTest
    static void testGetAccount() {

        Account existingAccount = [SELECT Id, Name FROM Account WHERE Name = 'AccountServiceTest'];

        Test.startTest();
        Account retrievedAccount = AccountService.getAccount(existingAccount.Id);
        Test.stopTest();

        System.assertEquals(existingAccount.Id, retrievedAccount.Id, 'Expected Account identifiers to match');
    }

    @IsTest
    static void testGetAccountByName() {

        Test.startTest();
        List<Account> retrievedAccountsByName = AccountService.getAccountByName('AccountServiceTest');
        Test.stopTest();

        System.assertEquals(1, retrievedAccountsByName.size(), 'Expected a single Account to be returned');
    }
}