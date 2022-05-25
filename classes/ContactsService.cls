global class ContactsService {
    global static Set<String> collectEmailsByLastName(String lastName) {
        List<Contact> cons = ContactsSelector.getContactsByLastName(lastName);
        Set<String> emails = new Set<String>();
        for (Contact con : cons) {
            emails.add(con.Email.removeEnd('.invalid'));
        }
        return emails;
    }
}