@RestResource(urlMapping='/api/Account/*')
global with sharing Class restAccountClass{
    @HttpGet
    global static Account doGet(){
        RestRequest req = RestContext.request;
        RestResponse res = RestContext.response;
        String accountId = req.requestURI.substring(req.requestURI.lastIndexOF('/')+1);
        Account result = [Select Id, Name, Phone, Website, Account_ID__c FROM Account Where Id = :accountId];
        return result;
    }

}