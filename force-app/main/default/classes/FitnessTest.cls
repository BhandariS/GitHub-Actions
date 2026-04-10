@isTest
public class FitnessTest {
	 
    @isTest
    public static void calculateBMITest1(){
        Decimal weight = 70;
        Decimal height = 1.75;
        
        Decimal result = Fitness.calculateBMI(weight, height);
        result = result.setScale(2);
        system.assertEquals(22.86, result, 'Match');		   
    }
    @isTest
    public static void calculateBMITest2(){
        Decimal weight = 0;
        Decimal height = 1.75;
        
        Decimal result = Fitness.calculateBMI(weight, height);
        result = result.setScale(2);
        system.assertEquals(0, result, 'BMI Should be zero for zero weight');
    }
    @isTest
    public static void calculateBMITest3(){
        Decimal weight = 60;
        Decimal height = -1;
        
        Decimal result = Fitness.calculateBMI(weight, height);
        result = result.setScale(2);
        system.assertEquals(-1, result, 'BMI Should be -1 for negative height');
    }
    @isTest
    public static void calculatePaceTest1(){
        Decimal distance = 80;
        Decimal minutes = 60;
        
        Decimal result = Fitness.calculatePace(distance, minutes);
        result = result.setScale(2);
        system.assertEquals(80, result, 'Pace is 80km/Hr');
    }
}