public with sharing class AccountController {
    public static List<Account> getAllActiveAccounts() {
      //adding comment with vscode -- save to server
      //adding comment using vscode -- save to server with SFDC extension
      //adding additional comment
    return [SELECT Id,Name,Active__c FROM Account WHERE Active__c = 'Yes'];

    //testing save with Windows
    //Adding line for DevOps through VS Code
    //Try pushing to dev from remote
    
  }
}