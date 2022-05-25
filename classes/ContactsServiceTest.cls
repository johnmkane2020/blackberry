@IsTest
private class ContactsServiceTest {
    @testSetup
    static void setupData() {
        Contact testContact = new Contact(FirstName = 'Test', LastName = 'Copado', Email = 'copadotest@email.com', Phone = '1111111111');
        insert testContact;
    }

    @IsTest
    static void testCollectEmailsByLastName() {
        Test.startTest();
        Set<String> emails = ContactsService.collectEmailsByLastName('Copado');
        Test.stopTest();
        System.assert(emails.contains('copadotest@email.com'), 'Email is not retrived successfully.');
    }
}