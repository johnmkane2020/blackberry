@IsTest
private class ContactsSelectorTest {
    @testSetup
    static void setupData() {
        Contact testContact = new Contact(FirstName = 'Test', LastName = 'Copado', Email = 'copadotest@email.com', Phone = '1111111111');
        insert testContact;
    }

    @IsTest
    static void testGetContactsByLastName() {
        Test.startTest();
        List<Contact> cons = ContactsSelector.getContactsByLastName('Copado');
        Test.stopTest();
        System.assert(cons.size() > 0, 'Test is failed due to not retrieve any contact by lastname.');
    }

    @IsTest
    static void testGetContactsByFirstName() {
        Test.startTest();
        List<Contact> cons = ContactsSelector.getContactsByFirstName('Test');
        Test.stopTest();
        System.assert(cons.size() > 0, 'Test is failed due to not retrieve any contact by firstname.');
    }
}