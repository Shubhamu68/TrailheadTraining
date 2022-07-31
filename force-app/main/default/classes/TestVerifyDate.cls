@isTest
public class TestVerifyDate {
	
    @isTest
    public static void testMethodOne(){
        Date date1 = System.Today();
        Date date2 = System.Today() + 32;
        Date output = VerifyDate.CheckDates(date1,date2);
        Integer totalDays = Date.daysInMonth(date1.year(), date1.month());
		Date lastDay = Date.newInstance(date1.year(), date1.month(), totalDays);
        System.assertEquals(lastDay,output);
    }
    @isTest
    public static void testMethodTwo(){
        Date date1 = System.Today();
        Date date2 = System.Today() + 4;
        Date output = VerifyDate.CheckDates(date1,date2);
        System.assertEquals(date2,output);
    }
}