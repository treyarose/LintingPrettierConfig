public class ContactSearch
{
	public static List <Contact> searchForContacts(String cLastname, String postalCode)
	{
		try{
		List <Contact> contacts = [Select Id,Name from Contact Where (Lastname =:cLastname AND MailingPostalCode =:postalCode)];
		return contacts;
		}catch(DmlException e){
			System.debug('An error occurred: '+ e.getMessage());
			return null;
		}

	}
}