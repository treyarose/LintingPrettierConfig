public class NewCaseListController {

    public List<Case> getNewCases() {
        String myTestString = 'New';
        
       List<Case> results = Database.query(
           'SELECT Id, CaseNumber from Case where Status =: myTestString'
    	);
        return results;
    }
}