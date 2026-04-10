public class Even {
    
    public static void findEven(){
        Integer a = 100;
        system.debug('Even number upto 100 '+a);
            for(Integer i=1;i<=a;i++)
            {
                if(0 == math.mod(i, 2) ){
                    system.debug('Even Number is '+i);
                }
            }
        }
    }