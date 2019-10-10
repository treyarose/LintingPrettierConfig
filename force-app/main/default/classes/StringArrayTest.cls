public class StringArrayTest{
/* Created as part of trailhead Developer Beginner Getting Started with Apex
 * 
 * 
 * 
 * 
*/	
    public static List<String> generateStringArray(Integer x){
    	String[] testNum = new List<String>();
        	for(Integer i=0;i<x;i++){
                testNum.add('Test '+i);
        	}    
        
        system.debug('Testing the i notation: '+ testNum);
        return testNum;
    }
}