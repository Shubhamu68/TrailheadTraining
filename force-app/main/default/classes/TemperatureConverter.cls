public class TemperatureConverter {
    // Takes a Fahrenheit temperature and returns the Celsius equivalent.
    public static Decimal FahrenheitToCelsius(Decimal fh) {
        //if(fh<0)
          //  printMsg();
        Decimal cs = (fh - 32) * 5/9;
        return cs.setScale(2);
    }
    
    public static void printMsg(){
        System.debug('THis is a negative fahrenheit conversion to celsius..!!!');
    }
}