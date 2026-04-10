public class HelloWorld {
    String greeting = 'Hello World';
    /*private string goodMorning = 'Good Morning';
    private string goodafternoon = 'Good Afternoon';
    private string goodEvening = 'Good Evening';*/
    
    public void newgreeting(){
        system.debug(greeting);
    }
    /*public void newgoodM(){
        system.debug(goodMorning);
    }
    public void goodAft(){
        system.debug(goodafternoon);
    }
    public void goodEve(){
        system.debug(goodEvening);
    }*/
    public void publicGreeting(String msg){
        system.debug(msg);
    }
    public String getDay(Integer dayNumber){
        String dayString ='';
        switch on dayNumber{
            when 0{
                dayString = 'Sunday';
            }
            when 1{
                dayString = 'Monday';
            }
            when 2{
                dayString = 'Tuesday';
            }
            when 3{
                dayString = 'Wednesday';
            }
            when 4{
                dayString = 'Thursday';
            }
            when 5{
                dayString = 'Friday';
            }
            when 6{
                dayString = 'Saturday';
            }
            when else{
                dayString = 'Invalid DayNumber';
            }
        }
        return dayString;
    }
    public String getDay(String dayAbbr){
       String dayString ='';
        switch on dayAbbr{
            when 'Sun'{
                dayString = 'Sunday';
            }
            when 'Mon'{
                dayString = 'Monday';
            }
            when 'Tue'{
                dayString = 'Tuesday';
            }
            when 'Wed'{
                dayString = 'Wednesday';
            }
            when 'Thur'{
                dayString = 'Thursday';
            }
            when 'Fri'{
                dayString = 'Friday';
            }
            when 'Sat'{
                dayString = 'Saturday';
            }
            when else{
                dayString = 'Invalid DayAbbr';
            }
        }
        return dayString;
    }
               
    

}