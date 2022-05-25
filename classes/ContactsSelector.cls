public class ContactsSelector {
    public static List<Contact> getContactsByLastName(String lastName) {
        return [SELECT Name, Email, Phone FROM Contact WHERE LastName = :lastName];
    }
}