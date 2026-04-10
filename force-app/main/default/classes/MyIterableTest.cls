@IsTest
public class MyIterableTest {
 	
    @IsTest
    static void testIterableForLoop(){
        List<String> strings = new List<String>{'Hello','World'};
            
        MyIterable myIterableInstance = new MyIterable(strings);
        
        system.debug('Running the For Loop....');
        
        for(String str : myIterableInstance){
            system.debug('String: '+str);
        }
    }
}