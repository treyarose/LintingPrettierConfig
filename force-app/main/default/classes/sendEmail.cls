global class sendEmail {
    
    public sendEmail(){
        
    }
    
    @RemoteAction
    global static PageReference sendTheEmail(String body, String emailAddress){
        Messaging.SingleEmailMessage email = new Messaging.SingleEmailMessage();
        
        String[] toAddresses = new String[]{emailAddress};
            
        email.setSubject('My contact info');
        email.setToAddresses(toAddresses);
        email.setPlainTextBody(body);
        
        //Send the email
        Messaging.SendEmailResult [] r = Messaging.sendEmail(new Messaging.SingleEmailMessage[] {email});
        
        return null;
    }
}