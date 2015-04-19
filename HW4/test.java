import java.io.IOException;
import java.util.*;
import java.util.Date;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.text.ParseException;
// Build a 100 times 100 matrix
// There are 10000 reducers, enough for HW4

public class test {
	public static void main(String[] args) throws Exception{
		Date dateA =  new Date();//new SimpleDateFormat("YYYY-MM-DD HH:mm:ss");
		Date dateB =  new Date();//new SimpleDateFormat("YYYY-MM-DD HH:mm:ss");
		String timeA = new String("2002-01-09 17:09:07");
		String timeB = new String("2002-01-09 17:09:08");
		long time_a =-1, time_b=-1;
		try{
			dateA = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").parse(timeA);
			time_a = dateA.getTime();
		}
		catch(ParseException pe){
			System.out.println("ERROR: could not parse date in string \"" + timeA + "\"");
		}
		try{
			dateB = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").parse(timeB);
			time_b = dateB.getTime();
		}
		catch(ParseException pe){
			System.out.println("ERROR: could not parse date in string \"" + timeB + "\"");
		}
		long timeDiff = Math.abs(dateA.getTime() - dateB.getTime())/1000000;
		System.out.println("time A is " + time_a + "Time B is " + time_b + "Time diff is " + timeDiff);

	}
}












