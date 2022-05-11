/**
 * Created by mrichmond on 2022-05-10.
 */

@IsTest
private class AccountServiceTest {

    @TestSetup
    static void setupTestData() {
        Account a = new Account();
        a.Name = 'AccountServiceTest';
        a.Industry = 'Government';

        Account b = new Account();
        b.Name = 'AccountServiceNegativeTest';
        b.Industry = 'Energy';

        insert new List<Account>{ a, b };
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

    @IsTest
    static void testGetAccountByIndustry() {

        Test.startTest();
        List<Account> retrievedAccountsByIndustry = AccountService.getAccountByIndustry('Government');
        Test.stopTest();

        System.assertEquals(1, retrievedAccountsByIndustry.size());
    }
}