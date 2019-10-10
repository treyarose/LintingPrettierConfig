public class AccountHandler {
     public static Account insertNewAccount(String aname){
        	Account a = new Account();
         	a.name = aname;

			 //testing commit

        try{
			insert a;
        }catch(DmlException e){
        	 System.debug('A DML exception has occurred: ' + e.getMessage());
        	 return null;
        }
    	return a;
    }

}