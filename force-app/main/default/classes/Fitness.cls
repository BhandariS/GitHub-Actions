public class Fitness {	
    /**BMI Calculator Method 
      *formula (Body weight in Kg)/(Body weight in Meter)2
      *Body weight in Kg and height in meter
       **/
      public static Decimal calculateBMI(Decimal weight , Decimal height){ 
          if(weight<0 || height<=0){
              return -1;	
          }
              Decimal result = weight/(height*height);
              return result;                                 
    } 
    //Pace Calculator Method / should return km per hour
    //Pace Formula (distance in km)/(time in minutes)
    public static Decimal calculatePace(Decimal distance, Decimal minutes){
        if(distance<0 || minutes<=0){
              return -1;	
          }
        Decimal hr = minutes/60;
        Decimal Pace = distance / hr;
        return Pace;
    }
}