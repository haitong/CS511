#include <stdio.h>
#include <stdlib.h>
#include <iostream>
#include <string>
#include <sstream>
using namespace std;

int main(int argc, char ** argv){

	float matrix[16][16];

	FILE * out = fopen("entropy.txt","w");

	string name = "conditionalEntropy";
	char buf[1000];
	int dimension = 16;

	for(int i=0; i< dimension; i++){
		for(int j=0; j< dimension; j++){
			if(i <= j){
				string name = "conditionalEntropy";
				std::stringstream ss;
				ss  << i;
				name = name + ss.str() + "_";
				ss.clear();
				std::stringstream sss;
				sss << j;
				name = name + sss.str() + "/part-r-00000";	
				ss.clear();
//				name = name + std::to_string(i) + "_" + std::to_string(j) + "/part-r-00000";
				cout << name << endl;
				FILE * fp = fopen(name.c_str(),"r");
				fgets(buf,999,fp);
				float value = atof(buf);
				matrix[i][j] = value;
				matrix[j][i] = value;
				fclose(fp);
			}
		}
	}

	for(int i=0; i< dimension; i++){
		for(int j=0; j< dimension; j++){
			fprintf(out,"%f	", matrix[i][j]);
		}
		fprintf(out,"\n");
	}
	fprintf(out,"\n");


	fclose(out);	
	return 1;
}
