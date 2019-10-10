@isTest
private class ShareFile_Test{
  static TestMethod void FileShareTest(){
    
    Account account_Obj = new Account(Name = 'Name683', Match_Billing_Address__c = false);
    Insert account_Obj; 
    
    Contact contact_Obj = new Contact(LastName = 'LastName382', FirstName = 'First371', AccountId = account_Obj.Id);
    Insert contact_Obj;
    
    ContentVersion contentVersion_1 = new ContentVersion(Title = 'Penguins', PathOnClient = 'Penguins.jpg', VersionData = Blob.valueOf('Test Content'), IsMajorVersion = true);
    insert contentVersion_1;
    
    List<ContentDocument> documents = [SELECT Id, Title, LatestPublishedVersionId FROM ContentDocument where Title =: contentVersion_1.Title];
    
    ContentDocumentLink CDL = new ContentDocumentLink(ContentDocumentId = documents[0].Id, LinkedEntityId = contact_Obj.Id, ShareType = 'V', Visibility = 'InternalUsers');
    
    test.startTest(); 
    insert CDL;
    test.stopTest();
  }
}