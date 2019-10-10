public class ShareFile {
    public static void ShareContactFilewithAccount(Id recordId, Id ContentDocId){ 
     //   String objectname = SchemaGlobalDescribe.findObjectNameFromRecordIdPrefix('500');
     String recordValue;
     List <Contact> contactAccId = new list<Contact>();
     List <ContentDocumentLink> CDLlist = new list<ContentDocumentLink>();
        
     recordValue = String.valueOf(recordId.getsobjecttype());   
     System.debug('Record value '+recordValue);
        
        if(recordValue == 'Contact'){
          contactAccId = [Select AccountId from Contact where Id =: recordId];
          System.debug('Account Id from Contact: '+ contactAccId[0].AccountId);
          
            	if(contactAccId.size()>0){
            		for(Contact ct : contactAccId){
                     ContentDocumentLink CDL = new ContentDocumentLink(
                     ContentDocumentId = ContentDocId,
                     LinkedEntityId = ct.AccountId,
                     ShareType = 'V',
                     Visibility = 'InternalUsers'
             		);
             		CDLlist.add(CDL);   
            	}
            }
            insert CDLlist;
        }
        
    }

}