public class NewCaseListController {
    public List<Case> getNewCases(){
        List<Case> output = [SELECT ID,CaseNumber from Case where Status = 'New'];
        return output;
    }
}