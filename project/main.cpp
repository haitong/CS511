#include <stdio.h>
#include <stdio.h>
#include <iostream>
#include <string>
using namespace std;

int main(int argc, char ** argv){
	string attribute[14] ={"impressions", "clicks", "conversions", "netspeed_id", "user_agent", "gender", "age", "language_ids", "trigger_by_click", "first_initial_bid_price_type", "second_initial_bid_price_type", "screen_type", "rich_media_flag", "mobile_wifi"};
	FILE * fp = fopen("conditionEntropy.pig","w");
	fprintf(fp,"A = LOAD '/home/mandaku2/categorization_v2/part-00000'  Using PigStorage(',');\n");
	fprintf(fp,"TupleGroup = GROUP A ALL;\n");
	fprintf(fp,"TupleCount = FOREACH TupleGroup GENERATE COUNT(A);  -- count the total number of tuples\n");


	for(int i=0; i<16; i++){
		for(int j=0; j<16;j++){
//			string	B = "B" + std::to_string(i) + "_" + std::to_string(j);
//			string prop = "Prop" + std::to_string(i) + "_" + std::to_string(j);
			if(i<j){
				fprintf(fp,"B%d_%d = GROUP A BY ($%d,$%d);\n",i,j,i,j);
				fprintf(fp,"Prop%d_%d = FOREACH B%d_%d GENERATE (-1*(double)COUNT(A)/(double)TupleCount.$0*LOG((double)COUNT(A)/(double)TupleCount.$0));\n",i,j,i,j);
				fprintf(fp,"Prop%d_%dGroup = GROUP Prop%d_%d ALL;\n",i,j,i,j);
				fprintf(fp,"entropy%d_%d = FOREACH Prop%d_%dGroup GENERATE SUM(Prop%d_%d);\n",i,j,i,j,i,j);
				fprintf(fp,"STORE entropy%d_%d INTO '/home/htian3/project/conditionalEntropy%d_%d' USING PigStorage(',');\n\n\n",i,j,i,j);
			}
			else if (i==j){
				fprintf(fp,"B%d_%d = GROUP A BY $%d;\n",i,j,i);
				fprintf(fp,"Prop%d_%d = FOREACH B%d_%d GENERATE (-1*(double)COUNT(A)/(double)TupleCount.$0*LOG((double)COUNT(A)/(double)TupleCount.$0));\n",i,j,i,j);
				fprintf(fp,"Prop%d_%dGroup = GROUP Prop%d_%d ALL;\n",i,j,i,j);
				fprintf(fp,"entropy%d_%d = FOREACH Prop%d_%dGroup GENERATE SUM(Prop%d_%d);\n",i,j,i,j,i,j);
				fprintf(fp,"STORE entropy%d_%d INTO '/home/htian3/project/conditionalEntropy%d_%d' USING PigStorage(',');\n\n\n",i,j,i,j);
			}
			
			
		}
	}

/*	fprintf(fp,"result = UNION ");
	for(int i=0; i<14; i++){
		for(int j=0; j<14; j++){
			if(i!=j){
				fprintf(fp,"entropy%d_%d, ",i,j);
			}
		}
	}
	fprintf(fp,";\n");
	fprintf(fp,"STORE result INTO '/home/htian3/project/conditionalEntropy' USING PigStorage(',');");
*/	fclose(fp);
	return 1;
}
