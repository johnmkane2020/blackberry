public class ContactsSelector {
    public static List<Contact> getContactsByLastName(String lastName) {
        return [SELECT Name, Email, Phone, Title FROM Contact WHERE LastName = :lastName];
    }
}