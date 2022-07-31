public class RandomContactFactory {
    public static List<Contact> generateRandomContacts(Integer num,String lastName){
        List<Contact> out = new List<Contact>();
        for(Integer i=0;i<num;i++){
             Contact c= new Contact(FirstName = 'Fname'+i,LastName = lastName);
            out.add(c);
        }
        insert out;
        return out;
    }
}