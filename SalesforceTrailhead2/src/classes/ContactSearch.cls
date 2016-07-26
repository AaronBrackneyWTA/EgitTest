public class ContactSearch {
//Add comments to test Changes in Org and in GitHub 7/26/2016 12:31pm
    public static List<Contact> searchForContacts(string lName, string zipCode)
        {
            Integer i=0;
            List<Contact> contactList = new List<Contact>();
            for(Contact[] tmp : [ Select Id,Name FROM Contact WHERE (LastName = :lName AND MailingPostalCode = :zipCode)])
            {
                
                contactList.add(tmp[i]);
                i++;
                
            }
            return contactList;
        }
    

}