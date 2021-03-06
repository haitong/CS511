package org.myorg;

import java.io.IOException;
import java.util.*;
import java.util.Date;
import org.apache.hadoop.fs.Path;
import org.apache.hadoop.conf.*;
import org.apache.hadoop.io.*;
import org.apache.hadoop.mapred.*;
import org.apache.hadoop.util.*;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.text.ParseException;
// Build a 100 times 100 matrix
// There are 10000 reducers, enough for HW4

public class HW4 {
	public static class Map extends MapReduceBase implements Mapper<LongWritable, Text, Text, Text> {
//	  private Text region = new Text();
//	  private Text contentA = new Text();
//	  private Text contentB = new Text();
//	  private int dimension = 25;
//	  Random generater = new Random();
	  public void map(LongWritable key, Text value, OutputCollector<Text, Text> output, Reporter reporter) throws IOException {
	  	Text region = new Text();
		Text contentA = new Text();
		Text contentB = new Text();
		int dimension = 25;
		String line = value.toString();
		String [] words = line.split(",");
		String clicks = words[3];
	  	Random generater = new Random();
		if(clicks.equals( "1") ){
			String messagesA = "A," + words[0] + "," + words[1] + "," + words[19];
			String messagesB = "B," + words[0] + "," + words[1] + "," + words[19];
//			int row = (int)(Math.random() * dimension);
//			int col = (int)(Math.random() * dimension);
//			int row = (int)(generater.nextDouble()  * dimension);
//			int col = (int)(generater.nextDouble()  * dimension);
			int row = (int)(generater.nextInt( dimension));
			int col = (int)(generater.nextInt( dimension));
			Integer dimVal;
			contentA.set(messagesA);
			contentB.set(messagesB);
			for(int num=0;num<dimension;num++){
				dimVal = row*dimension + num;
				region.set(dimVal.toString());
				output.collect(region,contentA);
			}
			for(int num=0;num<dimension;num++){
				dimVal = col + num * dimension;
				region.set(dimVal.toString());
				output.collect(region,contentB);
			}
		}
	  }
	}

	public static class Reduce extends MapReduceBase implements Reducer<Text, Text, Text, Text> {
//	  private ArrayList<String> AList = new ArrayList<String>() ;
//	  private ArrayList<String> BList = new ArrayList<String>() ;
//	  @override
	  public void reduce(Text key, Iterator<Text> values, OutputCollector<Text, Text> output, Reporter reporter) throws IOException {
	  	ArrayList<String> AList = new ArrayList<String>() ;
		ArrayList<String> BList = new ArrayList<String>() ;
		Text nullText = new Text();
		while (values.hasNext()) {
			String content = values.next().toString();
			if(content.charAt(0) == 'A') AList.add(content);
			else BList.add(content);
		}
		int ASize = AList.size();
		int BSize = BList.size();
		String result = new String();
		for(int i=0;i<ASize; i++){
			String contentA = AList.get(i);
			String [] numberA = contentA.split(",");
			String timeA = numberA[1];
			String userA = numberA[2];
			String queryA = numberA[3];
			Date dateA =  new Date();//new SimpleDateFormat("YYYY-MM-DD HH:mm:ss");
			Date dateB =  new Date();//SimpleDateFormat("YYYY-MM-DD HH:mm:ss");
			try{
				dateA = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").parse(timeA);
			}
			catch(ParseException pe){
				System.out.println("ERROR: could not parse date in string \"" + timeA + "\"");
			}
			for(int j=0;j<BSize; j++){
				String contentB = BList.get(j);
				String [] numberB = contentB.split(",");
				String timeB = numberB[1];
				String userB = numberB[2];
				String queryB = numberB[3];
				if(!userA.equals(userB) ){
					try{
						dateB = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").parse(timeB);
					}
					catch(ParseException pe){
						System.out.println("ERROR: could not parse date in string \"" + timeA + "\"");
					}
//					Date dateB = new SimpleDateFormat("YYYY-MM-DD HH:mm:ss").parse(timeB);
					long timeDiff = Math.abs(dateA.getTime() - dateB.getTime())/1000;
					if(timeDiff < 2 ){
//						result += timeA + "," + timeB + "," + queryA +"," + queryB + "\n";
						result = timeA + "," + queryA +"," + queryB;
						Text record = new Text(result);
						output.collect(nullText,record);
					}
				}
			}
		}

//		Text record = new Text(result);
//		output.collect(key, record);
	  }
	}

	public static void main(String[] args) throws Exception {
		long startTime = System.currentTimeMillis();

	  JobConf conf = new JobConf(HW4.class);
	  conf.setJobName("HW4ThetaJoin");

	  conf.setOutputKeyClass(Text.class);
	  conf.setOutputValueClass(Text.class);

	  conf.setMapperClass(Map.class);
//	  conf.setCombinerClass(Reduce.class);
	  conf.setReducerClass(Reduce.class);

	  conf.setInputFormat(TextInputFormat.class);
	  conf.setOutputFormat(TextOutputFormat.class);

	  FileInputFormat.setInputPaths(conf, new Path(args[0]));
	  FileOutputFormat.setOutputPath(conf, new Path(args[1]));

	  JobClient.runJob(conf);
		long endTime   = System.currentTimeMillis();
		long totalTime = endTime - startTime;
		System.out.println(totalTime/1000.0);
	}
}




