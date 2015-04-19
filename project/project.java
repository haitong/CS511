import java.io.IOException;
import java.util.*;
import org.apache.pig.PigServer;
import org.apache.pig.*;
import org.apache.pig.data.Tuple;
import org.apache.pig.data.*;
import java.util.Properties;
import org.apache.pig.ExecType;
// Build a 100 times 100 matrix
// There are 10000 reducers, enough for HW4

public class project{
	public static void main(String[] args) throws Exception {
		String[] attribute = new String[]{"impressions", "clicks", "conversions", "netspeed_id", "user_agent", "gender", "age", "language_id", "trigger_by_click", "first_initial_bid_price_type", "second_initial_bid_price_type", "screen_type", "rich_media_flag", "mobile_wifi"};
		PigServer pigServer = new PigServer(ExecType.MAPREDUCE);
		try{
			pigServer.registerQuery("A = LOAD '/home/bendre1/yahoo/sample/*'  Using PigStorage(',');");
			pigServer.registerQuery("TupleGroup = GROUP A ALL;");
			pigServer.registerQuery("TupleCount = FOREACH TupleGroup GENERATE COUNT(A);");
		}
		catch(IOException e){
			e.printStackTrace();
			System.exit(0);
		}
		String a = new String();

		for(int i =0; i< 14; i++){
			for(int j=0; j<14; j++){
				if(i!=j){
					try{
//						pigServer.registerQuery("A = LOAD '/home/bendre1/yahoo/sample/*'  Using PigStorage(',');");
//						pigServer.registerQuery("TupleGroup = GROUP A ALL;");
//						pigServer.registerQuery("TupleCount = FOREACH TupleGroup GENERATE COUNT(A);");
						a = "B = GROUP A BY (" + attribute[i] + "," + attribute[j] +");";
						System.out.println(a);
//						pigServer.registerQuery("B = GROUP A BY " + attribute[i] + "," + attribute[j] +";");
						pigServer.registerQuery(a);
						pigServer.registerQuery("Prop = FOREACH B GENERATE (-1*(double)COUNT(A)/(double)TupleCount.$0*LOG((double)COUNT(A)/(double)TupleCount.$0));");
						pigServer.registerQuery("PropGroup = GROUP Prop ALL;");
						pigServer.registerQuery("entropy = FOREACH PropGroup GENERATE SUM(Prop.$0);");
						Iterator<Tuple> iter = pigServer.openIterator("entropy");
						while(iter.hasNext()){
							System.out.println(attribute[i] + "  " + attribute[j] + "  " + iter.next().toString());
						}
					}
					catch (IOException e){
						System.out.println(attribute[i] + "  " + attribute[j]);
						e.printStackTrace();
						System.exit(0);
					}
				}
			}
		}
		pigServer.shutdown();
	}
}






























