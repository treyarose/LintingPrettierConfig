public class StringArrayTest2 {
     
   public static List<String> generateStringArray(Integer n) {
       String[] stringList = new List<String>();
       
       for(Integer i=0;i<n;i++) {
           stringList.add('Test' + i);
       }
       return stringList;
   }

}