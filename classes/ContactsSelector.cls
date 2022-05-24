public class ContactsSelector {
    public static List<Contact> getContactsByLastName(String lastName) {
        return [SELECT Name, Email, Phone, Title FROM Contact WHERE LastName = :lastName];
    }

    public static List<Contact> getContactsByFirstName(String firstName) {
        return [SELECT Name, Email, Phone FROM Contact WHERE FirstName = :firstName];
    }
}