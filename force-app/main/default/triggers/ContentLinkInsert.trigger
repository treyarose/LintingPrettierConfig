trigger ContentLinkInsert on ContentDocumentLink (after insert) {
	
    for(ContentDocumentLink CDL: Trigger.new){
        ShareFile.ShareContactFilewithAccount(CDL.LinkedEntityId, CDL.ContentDocumentId);
    }

}