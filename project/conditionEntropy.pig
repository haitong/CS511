A = LOAD '/home/mandaku2/categorization_v2/part-00000'  Using PigStorage(',');
TupleGroup = GROUP A ALL;
TupleCount = FOREACH TupleGroup GENERATE COUNT(A);  -- count the total number of tuples
B0_0 = GROUP A BY $0;
Prop0_0 = FOREACH B0_0 GENERATE (-1*(double)COUNT(A)/(double)TupleCount.$0*LOG((double)COUNT(A)/(double)TupleCount.$0));
Prop0_0Group = GROUP Prop0_0 ALL;
entropy0_0 = FOREACH Prop0_0Group GENERATE SUM(Prop0_0);
STORE entropy0_0 INTO '/home/htian3/project/conditionalEntropy0_0' USING PigStorage(',');


B0_1 = GROUP A BY ($0,$1);
Prop0_1 = FOREACH B0_1 GENERATE (-1*(double)COUNT(A)/(double)TupleCount.$0*LOG((double)COUNT(A)/(double)TupleCount.$0));
Prop0_1Group = GROUP Prop0_1 ALL;
entropy0_1 = FOREACH Prop0_1Group GENERATE SUM(Prop0_1);
STORE entropy0_1 INTO '/home/htian3/project/conditionalEntropy0_1' USING PigStorage(',');


B0_2 = GROUP A BY ($0,$2);
Prop0_2 = FOREACH B0_2 GENERATE (-1*(double)COUNT(A)/(double)TupleCount.$0*LOG((double)COUNT(A)/(double)TupleCount.$0));
Prop0_2Group = GROUP Prop0_2 ALL;
entropy0_2 = FOREACH Prop0_2Group GENERATE SUM(Prop0_2);
STORE entropy0_2 INTO '/home/htian3/project/conditionalEntropy0_2' USING PigStorage(',');


B0_3 = GROUP A BY ($0,$3);
Prop0_3 = FOREACH B0_3 GENERATE (-1*(double)COUNT(A)/(double)TupleCount.$0*LOG((double)COUNT(A)/(double)TupleCount.$0));
Prop0_3Group = GROUP Prop0_3 ALL;
entropy0_3 = FOREACH Prop0_3Group GENERATE SUM(Prop0_3);
STORE entropy0_3 INTO '/home/htian3/project/conditionalEntropy0_3' USING PigStorage(',');


B0_4 = GROUP A BY ($0,$4);
Prop0_4 = FOREACH B0_4 GENERATE (-1*(double)COUNT(A)/(double)TupleCount.$0*LOG((double)COUNT(A)/(double)TupleCount.$0));
Prop0_4Group = GROUP Prop0_4 ALL;
entropy0_4 = FOREACH Prop0_4Group GENERATE SUM(Prop0_4);
STORE entropy0_4 INTO '/home/htian3/project/conditionalEntropy0_4' USING PigStorage(',');


B0_5 = GROUP A BY ($0,$5);
Prop0_5 = FOREACH B0_5 GENERATE (-1*(double)COUNT(A)/(double)TupleCount.$0*LOG((double)COUNT(A)/(double)TupleCount.$0));
Prop0_5Group = GROUP Prop0_5 ALL;
entropy0_5 = FOREACH Prop0_5Group GENERATE SUM(Prop0_5);
STORE entropy0_5 INTO '/home/htian3/project/conditionalEntropy0_5' USING PigStorage(',');


B0_6 = GROUP A BY ($0,$6);
Prop0_6 = FOREACH B0_6 GENERATE (-1*(double)COUNT(A)/(double)TupleCount.$0*LOG((double)COUNT(A)/(double)TupleCount.$0));
Prop0_6Group = GROUP Prop0_6 ALL;
entropy0_6 = FOREACH Prop0_6Group GENERATE SUM(Prop0_6);
STORE entropy0_6 INTO '/home/htian3/project/conditionalEntropy0_6' USING PigStorage(',');


B0_7 = GROUP A BY ($0,$7);
Prop0_7 = FOREACH B0_7 GENERATE (-1*(double)COUNT(A)/(double)TupleCount.$0*LOG((double)COUNT(A)/(double)TupleCount.$0));
Prop0_7Group = GROUP Prop0_7 ALL;
entropy0_7 = FOREACH Prop0_7Group GENERATE SUM(Prop0_7);
STORE entropy0_7 INTO '/home/htian3/project/conditionalEntropy0_7' USING PigStorage(',');


B0_8 = GROUP A BY ($0,$8);
Prop0_8 = FOREACH B0_8 GENERATE (-1*(double)COUNT(A)/(double)TupleCount.$0*LOG((double)COUNT(A)/(double)TupleCount.$0));
Prop0_8Group = GROUP Prop0_8 ALL;
entropy0_8 = FOREACH Prop0_8Group GENERATE SUM(Prop0_8);
STORE entropy0_8 INTO '/home/htian3/project/conditionalEntropy0_8' USING PigStorage(',');


B0_9 = GROUP A BY ($0,$9);
Prop0_9 = FOREACH B0_9 GENERATE (-1*(double)COUNT(A)/(double)TupleCount.$0*LOG((double)COUNT(A)/(double)TupleCount.$0));
Prop0_9Group = GROUP Prop0_9 ALL;
entropy0_9 = FOREACH Prop0_9Group GENERATE SUM(Prop0_9);
STORE entropy0_9 INTO '/home/htian3/project/conditionalEntropy0_9' USING PigStorage(',');


B0_10 = GROUP A BY ($0,$10);
Prop0_10 = FOREACH B0_10 GENERATE (-1*(double)COUNT(A)/(double)TupleCount.$0*LOG((double)COUNT(A)/(double)TupleCount.$0));
Prop0_10Group = GROUP Prop0_10 ALL;
entropy0_10 = FOREACH Prop0_10Group GENERATE SUM(Prop0_10);
STORE entropy0_10 INTO '/home/htian3/project/conditionalEntropy0_10' USING PigStorage(',');


B0_11 = GROUP A BY ($0,$11);
Prop0_11 = FOREACH B0_11 GENERATE (-1*(double)COUNT(A)/(double)TupleCount.$0*LOG((double)COUNT(A)/(double)TupleCount.$0));
Prop0_11Group = GROUP Prop0_11 ALL;
entropy0_11 = FOREACH Prop0_11Group GENERATE SUM(Prop0_11);
STORE entropy0_11 INTO '/home/htian3/project/conditionalEntropy0_11' USING PigStorage(',');


B0_12 = GROUP A BY ($0,$12);
Prop0_12 = FOREACH B0_12 GENERATE (-1*(double)COUNT(A)/(double)TupleCount.$0*LOG((double)COUNT(A)/(double)TupleCount.$0));
Prop0_12Group = GROUP Prop0_12 ALL;
entropy0_12 = FOREACH Prop0_12Group GENERATE SUM(Prop0_12);
STORE entropy0_12 INTO '/home/htian3/project/conditionalEntropy0_12' USING PigStorage(',');


B0_13 = GROUP A BY ($0,$13);
Prop0_13 = FOREACH B0_13 GENERATE (-1*(double)COUNT(A)/(double)TupleCount.$0*LOG((double)COUNT(A)/(double)TupleCount.$0));
Prop0_13Group = GROUP Prop0_13 ALL;
entropy0_13 = FOREACH Prop0_13Group GENERATE SUM(Prop0_13);
STORE entropy0_13 INTO '/home/htian3/project/conditionalEntropy0_13' USING PigStorage(',');


B0_14 = GROUP A BY ($0,$14);
Prop0_14 = FOREACH B0_14 GENERATE (-1*(double)COUNT(A)/(double)TupleCount.$0*LOG((double)COUNT(A)/(double)TupleCount.$0));
Prop0_14Group = GROUP Prop0_14 ALL;
entropy0_14 = FOREACH Prop0_14Group GENERATE SUM(Prop0_14);
STORE entropy0_14 INTO '/home/htian3/project/conditionalEntropy0_14' USING PigStorage(',');


B0_15 = GROUP A BY ($0,$15);
Prop0_15 = FOREACH B0_15 GENERATE (-1*(double)COUNT(A)/(double)TupleCount.$0*LOG((double)COUNT(A)/(double)TupleCount.$0));
Prop0_15Group = GROUP Prop0_15 ALL;
entropy0_15 = FOREACH Prop0_15Group GENERATE SUM(Prop0_15);
STORE entropy0_15 INTO '/home/htian3/project/conditionalEntropy0_15' USING PigStorage(',');


B1_1 = GROUP A BY $1;
Prop1_1 = FOREACH B1_1 GENERATE (-1*(double)COUNT(A)/(double)TupleCount.$0*LOG((double)COUNT(A)/(double)TupleCount.$0));
Prop1_1Group = GROUP Prop1_1 ALL;
entropy1_1 = FOREACH Prop1_1Group GENERATE SUM(Prop1_1);
STORE entropy1_1 INTO '/home/htian3/project/conditionalEntropy1_1' USING PigStorage(',');


B1_2 = GROUP A BY ($1,$2);
Prop1_2 = FOREACH B1_2 GENERATE (-1*(double)COUNT(A)/(double)TupleCount.$0*LOG((double)COUNT(A)/(double)TupleCount.$0));
Prop1_2Group = GROUP Prop1_2 ALL;
entropy1_2 = FOREACH Prop1_2Group GENERATE SUM(Prop1_2);
STORE entropy1_2 INTO '/home/htian3/project/conditionalEntropy1_2' USING PigStorage(',');


B1_3 = GROUP A BY ($1,$3);
Prop1_3 = FOREACH B1_3 GENERATE (-1*(double)COUNT(A)/(double)TupleCount.$0*LOG((double)COUNT(A)/(double)TupleCount.$0));
Prop1_3Group = GROUP Prop1_3 ALL;
entropy1_3 = FOREACH Prop1_3Group GENERATE SUM(Prop1_3);
STORE entropy1_3 INTO '/home/htian3/project/conditionalEntropy1_3' USING PigStorage(',');


B1_4 = GROUP A BY ($1,$4);
Prop1_4 = FOREACH B1_4 GENERATE (-1*(double)COUNT(A)/(double)TupleCount.$0*LOG((double)COUNT(A)/(double)TupleCount.$0));
Prop1_4Group = GROUP Prop1_4 ALL;
entropy1_4 = FOREACH Prop1_4Group GENERATE SUM(Prop1_4);
STORE entropy1_4 INTO '/home/htian3/project/conditionalEntropy1_4' USING PigStorage(',');


B1_5 = GROUP A BY ($1,$5);
Prop1_5 = FOREACH B1_5 GENERATE (-1*(double)COUNT(A)/(double)TupleCount.$0*LOG((double)COUNT(A)/(double)TupleCount.$0));
Prop1_5Group = GROUP Prop1_5 ALL;
entropy1_5 = FOREACH Prop1_5Group GENERATE SUM(Prop1_5);
STORE entropy1_5 INTO '/home/htian3/project/conditionalEntropy1_5' USING PigStorage(',');


B1_6 = GROUP A BY ($1,$6);
Prop1_6 = FOREACH B1_6 GENERATE (-1*(double)COUNT(A)/(double)TupleCount.$0*LOG((double)COUNT(A)/(double)TupleCount.$0));
Prop1_6Group = GROUP Prop1_6 ALL;
entropy1_6 = FOREACH Prop1_6Group GENERATE SUM(Prop1_6);
STORE entropy1_6 INTO '/home/htian3/project/conditionalEntropy1_6' USING PigStorage(',');


B1_7 = GROUP A BY ($1,$7);
Prop1_7 = FOREACH B1_7 GENERATE (-1*(double)COUNT(A)/(double)TupleCount.$0*LOG((double)COUNT(A)/(double)TupleCount.$0));
Prop1_7Group = GROUP Prop1_7 ALL;
entropy1_7 = FOREACH Prop1_7Group GENERATE SUM(Prop1_7);
STORE entropy1_7 INTO '/home/htian3/project/conditionalEntropy1_7' USING PigStorage(',');


B1_8 = GROUP A BY ($1,$8);
Prop1_8 = FOREACH B1_8 GENERATE (-1*(double)COUNT(A)/(double)TupleCount.$0*LOG((double)COUNT(A)/(double)TupleCount.$0));
Prop1_8Group = GROUP Prop1_8 ALL;
entropy1_8 = FOREACH Prop1_8Group GENERATE SUM(Prop1_8);
STORE entropy1_8 INTO '/home/htian3/project/conditionalEntropy1_8' USING PigStorage(',');


B1_9 = GROUP A BY ($1,$9);
Prop1_9 = FOREACH B1_9 GENERATE (-1*(double)COUNT(A)/(double)TupleCount.$0*LOG((double)COUNT(A)/(double)TupleCount.$0));
Prop1_9Group = GROUP Prop1_9 ALL;
entropy1_9 = FOREACH Prop1_9Group GENERATE SUM(Prop1_9);
STORE entropy1_9 INTO '/home/htian3/project/conditionalEntropy1_9' USING PigStorage(',');


B1_10 = GROUP A BY ($1,$10);
Prop1_10 = FOREACH B1_10 GENERATE (-1*(double)COUNT(A)/(double)TupleCount.$0*LOG((double)COUNT(A)/(double)TupleCount.$0));
Prop1_10Group = GROUP Prop1_10 ALL;
entropy1_10 = FOREACH Prop1_10Group GENERATE SUM(Prop1_10);
STORE entropy1_10 INTO '/home/htian3/project/conditionalEntropy1_10' USING PigStorage(',');


B1_11 = GROUP A BY ($1,$11);
Prop1_11 = FOREACH B1_11 GENERATE (-1*(double)COUNT(A)/(double)TupleCount.$0*LOG((double)COUNT(A)/(double)TupleCount.$0));
Prop1_11Group = GROUP Prop1_11 ALL;
entropy1_11 = FOREACH Prop1_11Group GENERATE SUM(Prop1_11);
STORE entropy1_11 INTO '/home/htian3/project/conditionalEntropy1_11' USING PigStorage(',');


B1_12 = GROUP A BY ($1,$12);
Prop1_12 = FOREACH B1_12 GENERATE (-1*(double)COUNT(A)/(double)TupleCount.$0*LOG((double)COUNT(A)/(double)TupleCount.$0));
Prop1_12Group = GROUP Prop1_12 ALL;
entropy1_12 = FOREACH Prop1_12Group GENERATE SUM(Prop1_12);
STORE entropy1_12 INTO '/home/htian3/project/conditionalEntropy1_12' USING PigStorage(',');


B1_13 = GROUP A BY ($1,$13);
Prop1_13 = FOREACH B1_13 GENERATE (-1*(double)COUNT(A)/(double)TupleCount.$0*LOG((double)COUNT(A)/(double)TupleCount.$0));
Prop1_13Group = GROUP Prop1_13 ALL;
entropy1_13 = FOREACH Prop1_13Group GENERATE SUM(Prop1_13);
STORE entropy1_13 INTO '/home/htian3/project/conditionalEntropy1_13' USING PigStorage(',');


B1_14 = GROUP A BY ($1,$14);
Prop1_14 = FOREACH B1_14 GENERATE (-1*(double)COUNT(A)/(double)TupleCount.$0*LOG((double)COUNT(A)/(double)TupleCount.$0));
Prop1_14Group = GROUP Prop1_14 ALL;
entropy1_14 = FOREACH Prop1_14Group GENERATE SUM(Prop1_14);
STORE entropy1_14 INTO '/home/htian3/project/conditionalEntropy1_14' USING PigStorage(',');


B1_15 = GROUP A BY ($1,$15);
Prop1_15 = FOREACH B1_15 GENERATE (-1*(double)COUNT(A)/(double)TupleCount.$0*LOG((double)COUNT(A)/(double)TupleCount.$0));
Prop1_15Group = GROUP Prop1_15 ALL;
entropy1_15 = FOREACH Prop1_15Group GENERATE SUM(Prop1_15);
STORE entropy1_15 INTO '/home/htian3/project/conditionalEntropy1_15' USING PigStorage(',');


B2_2 = GROUP A BY $2;
Prop2_2 = FOREACH B2_2 GENERATE (-1*(double)COUNT(A)/(double)TupleCount.$0*LOG((double)COUNT(A)/(double)TupleCount.$0));
Prop2_2Group = GROUP Prop2_2 ALL;
entropy2_2 = FOREACH Prop2_2Group GENERATE SUM(Prop2_2);
STORE entropy2_2 INTO '/home/htian3/project/conditionalEntropy2_2' USING PigStorage(',');


B2_3 = GROUP A BY ($2,$3);
Prop2_3 = FOREACH B2_3 GENERATE (-1*(double)COUNT(A)/(double)TupleCount.$0*LOG((double)COUNT(A)/(double)TupleCount.$0));
Prop2_3Group = GROUP Prop2_3 ALL;
entropy2_3 = FOREACH Prop2_3Group GENERATE SUM(Prop2_3);
STORE entropy2_3 INTO '/home/htian3/project/conditionalEntropy2_3' USING PigStorage(',');


B2_4 = GROUP A BY ($2,$4);
Prop2_4 = FOREACH B2_4 GENERATE (-1*(double)COUNT(A)/(double)TupleCount.$0*LOG((double)COUNT(A)/(double)TupleCount.$0));
Prop2_4Group = GROUP Prop2_4 ALL;
entropy2_4 = FOREACH Prop2_4Group GENERATE SUM(Prop2_4);
STORE entropy2_4 INTO '/home/htian3/project/conditionalEntropy2_4' USING PigStorage(',');


B2_5 = GROUP A BY ($2,$5);
Prop2_5 = FOREACH B2_5 GENERATE (-1*(double)COUNT(A)/(double)TupleCount.$0*LOG((double)COUNT(A)/(double)TupleCount.$0));
Prop2_5Group = GROUP Prop2_5 ALL;
entropy2_5 = FOREACH Prop2_5Group GENERATE SUM(Prop2_5);
STORE entropy2_5 INTO '/home/htian3/project/conditionalEntropy2_5' USING PigStorage(',');


B2_6 = GROUP A BY ($2,$6);
Prop2_6 = FOREACH B2_6 GENERATE (-1*(double)COUNT(A)/(double)TupleCount.$0*LOG((double)COUNT(A)/(double)TupleCount.$0));
Prop2_6Group = GROUP Prop2_6 ALL;
entropy2_6 = FOREACH Prop2_6Group GENERATE SUM(Prop2_6);
STORE entropy2_6 INTO '/home/htian3/project/conditionalEntropy2_6' USING PigStorage(',');


B2_7 = GROUP A BY ($2,$7);
Prop2_7 = FOREACH B2_7 GENERATE (-1*(double)COUNT(A)/(double)TupleCount.$0*LOG((double)COUNT(A)/(double)TupleCount.$0));
Prop2_7Group = GROUP Prop2_7 ALL;
entropy2_7 = FOREACH Prop2_7Group GENERATE SUM(Prop2_7);
STORE entropy2_7 INTO '/home/htian3/project/conditionalEntropy2_7' USING PigStorage(',');


B2_8 = GROUP A BY ($2,$8);
Prop2_8 = FOREACH B2_8 GENERATE (-1*(double)COUNT(A)/(double)TupleCount.$0*LOG((double)COUNT(A)/(double)TupleCount.$0));
Prop2_8Group = GROUP Prop2_8 ALL;
entropy2_8 = FOREACH Prop2_8Group GENERATE SUM(Prop2_8);
STORE entropy2_8 INTO '/home/htian3/project/conditionalEntropy2_8' USING PigStorage(',');


B2_9 = GROUP A BY ($2,$9);
Prop2_9 = FOREACH B2_9 GENERATE (-1*(double)COUNT(A)/(double)TupleCount.$0*LOG((double)COUNT(A)/(double)TupleCount.$0));
Prop2_9Group = GROUP Prop2_9 ALL;
entropy2_9 = FOREACH Prop2_9Group GENERATE SUM(Prop2_9);
STORE entropy2_9 INTO '/home/htian3/project/conditionalEntropy2_9' USING PigStorage(',');


B2_10 = GROUP A BY ($2,$10);
Prop2_10 = FOREACH B2_10 GENERATE (-1*(double)COUNT(A)/(double)TupleCount.$0*LOG((double)COUNT(A)/(double)TupleCount.$0));
Prop2_10Group = GROUP Prop2_10 ALL;
entropy2_10 = FOREACH Prop2_10Group GENERATE SUM(Prop2_10);
STORE entropy2_10 INTO '/home/htian3/project/conditionalEntropy2_10' USING PigStorage(',');


B2_11 = GROUP A BY ($2,$11);
Prop2_11 = FOREACH B2_11 GENERATE (-1*(double)COUNT(A)/(double)TupleCount.$0*LOG((double)COUNT(A)/(double)TupleCount.$0));
Prop2_11Group = GROUP Prop2_11 ALL;
entropy2_11 = FOREACH Prop2_11Group GENERATE SUM(Prop2_11);
STORE entropy2_11 INTO '/home/htian3/project/conditionalEntropy2_11' USING PigStorage(',');


B2_12 = GROUP A BY ($2,$12);
Prop2_12 = FOREACH B2_12 GENERATE (-1*(double)COUNT(A)/(double)TupleCount.$0*LOG((double)COUNT(A)/(double)TupleCount.$0));
Prop2_12Group = GROUP Prop2_12 ALL;
entropy2_12 = FOREACH Prop2_12Group GENERATE SUM(Prop2_12);
STORE entropy2_12 INTO '/home/htian3/project/conditionalEntropy2_12' USING PigStorage(',');


B2_13 = GROUP A BY ($2,$13);
Prop2_13 = FOREACH B2_13 GENERATE (-1*(double)COUNT(A)/(double)TupleCount.$0*LOG((double)COUNT(A)/(double)TupleCount.$0));
Prop2_13Group = GROUP Prop2_13 ALL;
entropy2_13 = FOREACH Prop2_13Group GENERATE SUM(Prop2_13);
STORE entropy2_13 INTO '/home/htian3/project/conditionalEntropy2_13' USING PigStorage(',');


B2_14 = GROUP A BY ($2,$14);
Prop2_14 = FOREACH B2_14 GENERATE (-1*(double)COUNT(A)/(double)TupleCount.$0*LOG((double)COUNT(A)/(double)TupleCount.$0));
Prop2_14Group = GROUP Prop2_14 ALL;
entropy2_14 = FOREACH Prop2_14Group GENERATE SUM(Prop2_14);
STORE entropy2_14 INTO '/home/htian3/project/conditionalEntropy2_14' USING PigStorage(',');


B2_15 = GROUP A BY ($2,$15);
Prop2_15 = FOREACH B2_15 GENERATE (-1*(double)COUNT(A)/(double)TupleCount.$0*LOG((double)COUNT(A)/(double)TupleCount.$0));
Prop2_15Group = GROUP Prop2_15 ALL;
entropy2_15 = FOREACH Prop2_15Group GENERATE SUM(Prop2_15);
STORE entropy2_15 INTO '/home/htian3/project/conditionalEntropy2_15' USING PigStorage(',');


B3_3 = GROUP A BY $3;
Prop3_3 = FOREACH B3_3 GENERATE (-1*(double)COUNT(A)/(double)TupleCount.$0*LOG((double)COUNT(A)/(double)TupleCount.$0));
Prop3_3Group = GROUP Prop3_3 ALL;
entropy3_3 = FOREACH Prop3_3Group GENERATE SUM(Prop3_3);
STORE entropy3_3 INTO '/home/htian3/project/conditionalEntropy3_3' USING PigStorage(',');


B3_4 = GROUP A BY ($3,$4);
Prop3_4 = FOREACH B3_4 GENERATE (-1*(double)COUNT(A)/(double)TupleCount.$0*LOG((double)COUNT(A)/(double)TupleCount.$0));
Prop3_4Group = GROUP Prop3_4 ALL;
entropy3_4 = FOREACH Prop3_4Group GENERATE SUM(Prop3_4);
STORE entropy3_4 INTO '/home/htian3/project/conditionalEntropy3_4' USING PigStorage(',');


B3_5 = GROUP A BY ($3,$5);
Prop3_5 = FOREACH B3_5 GENERATE (-1*(double)COUNT(A)/(double)TupleCount.$0*LOG((double)COUNT(A)/(double)TupleCount.$0));
Prop3_5Group = GROUP Prop3_5 ALL;
entropy3_5 = FOREACH Prop3_5Group GENERATE SUM(Prop3_5);
STORE entropy3_5 INTO '/home/htian3/project/conditionalEntropy3_5' USING PigStorage(',');


B3_6 = GROUP A BY ($3,$6);
Prop3_6 = FOREACH B3_6 GENERATE (-1*(double)COUNT(A)/(double)TupleCount.$0*LOG((double)COUNT(A)/(double)TupleCount.$0));
Prop3_6Group = GROUP Prop3_6 ALL;
entropy3_6 = FOREACH Prop3_6Group GENERATE SUM(Prop3_6);
STORE entropy3_6 INTO '/home/htian3/project/conditionalEntropy3_6' USING PigStorage(',');


B3_7 = GROUP A BY ($3,$7);
Prop3_7 = FOREACH B3_7 GENERATE (-1*(double)COUNT(A)/(double)TupleCount.$0*LOG((double)COUNT(A)/(double)TupleCount.$0));
Prop3_7Group = GROUP Prop3_7 ALL;
entropy3_7 = FOREACH Prop3_7Group GENERATE SUM(Prop3_7);
STORE entropy3_7 INTO '/home/htian3/project/conditionalEntropy3_7' USING PigStorage(',');


B3_8 = GROUP A BY ($3,$8);
Prop3_8 = FOREACH B3_8 GENERATE (-1*(double)COUNT(A)/(double)TupleCount.$0*LOG((double)COUNT(A)/(double)TupleCount.$0));
Prop3_8Group = GROUP Prop3_8 ALL;
entropy3_8 = FOREACH Prop3_8Group GENERATE SUM(Prop3_8);
STORE entropy3_8 INTO '/home/htian3/project/conditionalEntropy3_8' USING PigStorage(',');


B3_9 = GROUP A BY ($3,$9);
Prop3_9 = FOREACH B3_9 GENERATE (-1*(double)COUNT(A)/(double)TupleCount.$0*LOG((double)COUNT(A)/(double)TupleCount.$0));
Prop3_9Group = GROUP Prop3_9 ALL;
entropy3_9 = FOREACH Prop3_9Group GENERATE SUM(Prop3_9);
STORE entropy3_9 INTO '/home/htian3/project/conditionalEntropy3_9' USING PigStorage(',');


B3_10 = GROUP A BY ($3,$10);
Prop3_10 = FOREACH B3_10 GENERATE (-1*(double)COUNT(A)/(double)TupleCount.$0*LOG((double)COUNT(A)/(double)TupleCount.$0));
Prop3_10Group = GROUP Prop3_10 ALL;
entropy3_10 = FOREACH Prop3_10Group GENERATE SUM(Prop3_10);
STORE entropy3_10 INTO '/home/htian3/project/conditionalEntropy3_10' USING PigStorage(',');


B3_11 = GROUP A BY ($3,$11);
Prop3_11 = FOREACH B3_11 GENERATE (-1*(double)COUNT(A)/(double)TupleCount.$0*LOG((double)COUNT(A)/(double)TupleCount.$0));
Prop3_11Group = GROUP Prop3_11 ALL;
entropy3_11 = FOREACH Prop3_11Group GENERATE SUM(Prop3_11);
STORE entropy3_11 INTO '/home/htian3/project/conditionalEntropy3_11' USING PigStorage(',');


B3_12 = GROUP A BY ($3,$12);
Prop3_12 = FOREACH B3_12 GENERATE (-1*(double)COUNT(A)/(double)TupleCount.$0*LOG((double)COUNT(A)/(double)TupleCount.$0));
Prop3_12Group = GROUP Prop3_12 ALL;
entropy3_12 = FOREACH Prop3_12Group GENERATE SUM(Prop3_12);
STORE entropy3_12 INTO '/home/htian3/project/conditionalEntropy3_12' USING PigStorage(',');


B3_13 = GROUP A BY ($3,$13);
Prop3_13 = FOREACH B3_13 GENERATE (-1*(double)COUNT(A)/(double)TupleCount.$0*LOG((double)COUNT(A)/(double)TupleCount.$0));
Prop3_13Group = GROUP Prop3_13 ALL;
entropy3_13 = FOREACH Prop3_13Group GENERATE SUM(Prop3_13);
STORE entropy3_13 INTO '/home/htian3/project/conditionalEntropy3_13' USING PigStorage(',');


B3_14 = GROUP A BY ($3,$14);
Prop3_14 = FOREACH B3_14 GENERATE (-1*(double)COUNT(A)/(double)TupleCount.$0*LOG((double)COUNT(A)/(double)TupleCount.$0));
Prop3_14Group = GROUP Prop3_14 ALL;
entropy3_14 = FOREACH Prop3_14Group GENERATE SUM(Prop3_14);
STORE entropy3_14 INTO '/home/htian3/project/conditionalEntropy3_14' USING PigStorage(',');


B3_15 = GROUP A BY ($3,$15);
Prop3_15 = FOREACH B3_15 GENERATE (-1*(double)COUNT(A)/(double)TupleCount.$0*LOG((double)COUNT(A)/(double)TupleCount.$0));
Prop3_15Group = GROUP Prop3_15 ALL;
entropy3_15 = FOREACH Prop3_15Group GENERATE SUM(Prop3_15);
STORE entropy3_15 INTO '/home/htian3/project/conditionalEntropy3_15' USING PigStorage(',');


B4_4 = GROUP A BY $4;
Prop4_4 = FOREACH B4_4 GENERATE (-1*(double)COUNT(A)/(double)TupleCount.$0*LOG((double)COUNT(A)/(double)TupleCount.$0));
Prop4_4Group = GROUP Prop4_4 ALL;
entropy4_4 = FOREACH Prop4_4Group GENERATE SUM(Prop4_4);
STORE entropy4_4 INTO '/home/htian3/project/conditionalEntropy4_4' USING PigStorage(',');


B4_5 = GROUP A BY ($4,$5);
Prop4_5 = FOREACH B4_5 GENERATE (-1*(double)COUNT(A)/(double)TupleCount.$0*LOG((double)COUNT(A)/(double)TupleCount.$0));
Prop4_5Group = GROUP Prop4_5 ALL;
entropy4_5 = FOREACH Prop4_5Group GENERATE SUM(Prop4_5);
STORE entropy4_5 INTO '/home/htian3/project/conditionalEntropy4_5' USING PigStorage(',');


B4_6 = GROUP A BY ($4,$6);
Prop4_6 = FOREACH B4_6 GENERATE (-1*(double)COUNT(A)/(double)TupleCount.$0*LOG((double)COUNT(A)/(double)TupleCount.$0));
Prop4_6Group = GROUP Prop4_6 ALL;
entropy4_6 = FOREACH Prop4_6Group GENERATE SUM(Prop4_6);
STORE entropy4_6 INTO '/home/htian3/project/conditionalEntropy4_6' USING PigStorage(',');


B4_7 = GROUP A BY ($4,$7);
Prop4_7 = FOREACH B4_7 GENERATE (-1*(double)COUNT(A)/(double)TupleCount.$0*LOG((double)COUNT(A)/(double)TupleCount.$0));
Prop4_7Group = GROUP Prop4_7 ALL;
entropy4_7 = FOREACH Prop4_7Group GENERATE SUM(Prop4_7);
STORE entropy4_7 INTO '/home/htian3/project/conditionalEntropy4_7' USING PigStorage(',');


B4_8 = GROUP A BY ($4,$8);
Prop4_8 = FOREACH B4_8 GENERATE (-1*(double)COUNT(A)/(double)TupleCount.$0*LOG((double)COUNT(A)/(double)TupleCount.$0));
Prop4_8Group = GROUP Prop4_8 ALL;
entropy4_8 = FOREACH Prop4_8Group GENERATE SUM(Prop4_8);
STORE entropy4_8 INTO '/home/htian3/project/conditionalEntropy4_8' USING PigStorage(',');


B4_9 = GROUP A BY ($4,$9);
Prop4_9 = FOREACH B4_9 GENERATE (-1*(double)COUNT(A)/(double)TupleCount.$0*LOG((double)COUNT(A)/(double)TupleCount.$0));
Prop4_9Group = GROUP Prop4_9 ALL;
entropy4_9 = FOREACH Prop4_9Group GENERATE SUM(Prop4_9);
STORE entropy4_9 INTO '/home/htian3/project/conditionalEntropy4_9' USING PigStorage(',');


B4_10 = GROUP A BY ($4,$10);
Prop4_10 = FOREACH B4_10 GENERATE (-1*(double)COUNT(A)/(double)TupleCount.$0*LOG((double)COUNT(A)/(double)TupleCount.$0));
Prop4_10Group = GROUP Prop4_10 ALL;
entropy4_10 = FOREACH Prop4_10Group GENERATE SUM(Prop4_10);
STORE entropy4_10 INTO '/home/htian3/project/conditionalEntropy4_10' USING PigStorage(',');


B4_11 = GROUP A BY ($4,$11);
Prop4_11 = FOREACH B4_11 GENERATE (-1*(double)COUNT(A)/(double)TupleCount.$0*LOG((double)COUNT(A)/(double)TupleCount.$0));
Prop4_11Group = GROUP Prop4_11 ALL;
entropy4_11 = FOREACH Prop4_11Group GENERATE SUM(Prop4_11);
STORE entropy4_11 INTO '/home/htian3/project/conditionalEntropy4_11' USING PigStorage(',');


B4_12 = GROUP A BY ($4,$12);
Prop4_12 = FOREACH B4_12 GENERATE (-1*(double)COUNT(A)/(double)TupleCount.$0*LOG((double)COUNT(A)/(double)TupleCount.$0));
Prop4_12Group = GROUP Prop4_12 ALL;
entropy4_12 = FOREACH Prop4_12Group GENERATE SUM(Prop4_12);
STORE entropy4_12 INTO '/home/htian3/project/conditionalEntropy4_12' USING PigStorage(',');


B4_13 = GROUP A BY ($4,$13);
Prop4_13 = FOREACH B4_13 GENERATE (-1*(double)COUNT(A)/(double)TupleCount.$0*LOG((double)COUNT(A)/(double)TupleCount.$0));
Prop4_13Group = GROUP Prop4_13 ALL;
entropy4_13 = FOREACH Prop4_13Group GENERATE SUM(Prop4_13);
STORE entropy4_13 INTO '/home/htian3/project/conditionalEntropy4_13' USING PigStorage(',');


B4_14 = GROUP A BY ($4,$14);
Prop4_14 = FOREACH B4_14 GENERATE (-1*(double)COUNT(A)/(double)TupleCount.$0*LOG((double)COUNT(A)/(double)TupleCount.$0));
Prop4_14Group = GROUP Prop4_14 ALL;
entropy4_14 = FOREACH Prop4_14Group GENERATE SUM(Prop4_14);
STORE entropy4_14 INTO '/home/htian3/project/conditionalEntropy4_14' USING PigStorage(',');


B4_15 = GROUP A BY ($4,$15);
Prop4_15 = FOREACH B4_15 GENERATE (-1*(double)COUNT(A)/(double)TupleCount.$0*LOG((double)COUNT(A)/(double)TupleCount.$0));
Prop4_15Group = GROUP Prop4_15 ALL;
entropy4_15 = FOREACH Prop4_15Group GENERATE SUM(Prop4_15);
STORE entropy4_15 INTO '/home/htian3/project/conditionalEntropy4_15' USING PigStorage(',');


B5_5 = GROUP A BY $5;
Prop5_5 = FOREACH B5_5 GENERATE (-1*(double)COUNT(A)/(double)TupleCount.$0*LOG((double)COUNT(A)/(double)TupleCount.$0));
Prop5_5Group = GROUP Prop5_5 ALL;
entropy5_5 = FOREACH Prop5_5Group GENERATE SUM(Prop5_5);
STORE entropy5_5 INTO '/home/htian3/project/conditionalEntropy5_5' USING PigStorage(',');


B5_6 = GROUP A BY ($5,$6);
Prop5_6 = FOREACH B5_6 GENERATE (-1*(double)COUNT(A)/(double)TupleCount.$0*LOG((double)COUNT(A)/(double)TupleCount.$0));
Prop5_6Group = GROUP Prop5_6 ALL;
entropy5_6 = FOREACH Prop5_6Group GENERATE SUM(Prop5_6);
STORE entropy5_6 INTO '/home/htian3/project/conditionalEntropy5_6' USING PigStorage(',');


B5_7 = GROUP A BY ($5,$7);
Prop5_7 = FOREACH B5_7 GENERATE (-1*(double)COUNT(A)/(double)TupleCount.$0*LOG((double)COUNT(A)/(double)TupleCount.$0));
Prop5_7Group = GROUP Prop5_7 ALL;
entropy5_7 = FOREACH Prop5_7Group GENERATE SUM(Prop5_7);
STORE entropy5_7 INTO '/home/htian3/project/conditionalEntropy5_7' USING PigStorage(',');


B5_8 = GROUP A BY ($5,$8);
Prop5_8 = FOREACH B5_8 GENERATE (-1*(double)COUNT(A)/(double)TupleCount.$0*LOG((double)COUNT(A)/(double)TupleCount.$0));
Prop5_8Group = GROUP Prop5_8 ALL;
entropy5_8 = FOREACH Prop5_8Group GENERATE SUM(Prop5_8);
STORE entropy5_8 INTO '/home/htian3/project/conditionalEntropy5_8' USING PigStorage(',');


B5_9 = GROUP A BY ($5,$9);
Prop5_9 = FOREACH B5_9 GENERATE (-1*(double)COUNT(A)/(double)TupleCount.$0*LOG((double)COUNT(A)/(double)TupleCount.$0));
Prop5_9Group = GROUP Prop5_9 ALL;
entropy5_9 = FOREACH Prop5_9Group GENERATE SUM(Prop5_9);
STORE entropy5_9 INTO '/home/htian3/project/conditionalEntropy5_9' USING PigStorage(',');


B5_10 = GROUP A BY ($5,$10);
Prop5_10 = FOREACH B5_10 GENERATE (-1*(double)COUNT(A)/(double)TupleCount.$0*LOG((double)COUNT(A)/(double)TupleCount.$0));
Prop5_10Group = GROUP Prop5_10 ALL;
entropy5_10 = FOREACH Prop5_10Group GENERATE SUM(Prop5_10);
STORE entropy5_10 INTO '/home/htian3/project/conditionalEntropy5_10' USING PigStorage(',');


B5_11 = GROUP A BY ($5,$11);
Prop5_11 = FOREACH B5_11 GENERATE (-1*(double)COUNT(A)/(double)TupleCount.$0*LOG((double)COUNT(A)/(double)TupleCount.$0));
Prop5_11Group = GROUP Prop5_11 ALL;
entropy5_11 = FOREACH Prop5_11Group GENERATE SUM(Prop5_11);
STORE entropy5_11 INTO '/home/htian3/project/conditionalEntropy5_11' USING PigStorage(',');


B5_12 = GROUP A BY ($5,$12);
Prop5_12 = FOREACH B5_12 GENERATE (-1*(double)COUNT(A)/(double)TupleCount.$0*LOG((double)COUNT(A)/(double)TupleCount.$0));
Prop5_12Group = GROUP Prop5_12 ALL;
entropy5_12 = FOREACH Prop5_12Group GENERATE SUM(Prop5_12);
STORE entropy5_12 INTO '/home/htian3/project/conditionalEntropy5_12' USING PigStorage(',');


B5_13 = GROUP A BY ($5,$13);
Prop5_13 = FOREACH B5_13 GENERATE (-1*(double)COUNT(A)/(double)TupleCount.$0*LOG((double)COUNT(A)/(double)TupleCount.$0));
Prop5_13Group = GROUP Prop5_13 ALL;
entropy5_13 = FOREACH Prop5_13Group GENERATE SUM(Prop5_13);
STORE entropy5_13 INTO '/home/htian3/project/conditionalEntropy5_13' USING PigStorage(',');


B5_14 = GROUP A BY ($5,$14);
Prop5_14 = FOREACH B5_14 GENERATE (-1*(double)COUNT(A)/(double)TupleCount.$0*LOG((double)COUNT(A)/(double)TupleCount.$0));
Prop5_14Group = GROUP Prop5_14 ALL;
entropy5_14 = FOREACH Prop5_14Group GENERATE SUM(Prop5_14);
STORE entropy5_14 INTO '/home/htian3/project/conditionalEntropy5_14' USING PigStorage(',');


B5_15 = GROUP A BY ($5,$15);
Prop5_15 = FOREACH B5_15 GENERATE (-1*(double)COUNT(A)/(double)TupleCount.$0*LOG((double)COUNT(A)/(double)TupleCount.$0));
Prop5_15Group = GROUP Prop5_15 ALL;
entropy5_15 = FOREACH Prop5_15Group GENERATE SUM(Prop5_15);
STORE entropy5_15 INTO '/home/htian3/project/conditionalEntropy5_15' USING PigStorage(',');


B6_6 = GROUP A BY $6;
Prop6_6 = FOREACH B6_6 GENERATE (-1*(double)COUNT(A)/(double)TupleCount.$0*LOG((double)COUNT(A)/(double)TupleCount.$0));
Prop6_6Group = GROUP Prop6_6 ALL;
entropy6_6 = FOREACH Prop6_6Group GENERATE SUM(Prop6_6);
STORE entropy6_6 INTO '/home/htian3/project/conditionalEntropy6_6' USING PigStorage(',');


B6_7 = GROUP A BY ($6,$7);
Prop6_7 = FOREACH B6_7 GENERATE (-1*(double)COUNT(A)/(double)TupleCount.$0*LOG((double)COUNT(A)/(double)TupleCount.$0));
Prop6_7Group = GROUP Prop6_7 ALL;
entropy6_7 = FOREACH Prop6_7Group GENERATE SUM(Prop6_7);
STORE entropy6_7 INTO '/home/htian3/project/conditionalEntropy6_7' USING PigStorage(',');


B6_8 = GROUP A BY ($6,$8);
Prop6_8 = FOREACH B6_8 GENERATE (-1*(double)COUNT(A)/(double)TupleCount.$0*LOG((double)COUNT(A)/(double)TupleCount.$0));
Prop6_8Group = GROUP Prop6_8 ALL;
entropy6_8 = FOREACH Prop6_8Group GENERATE SUM(Prop6_8);
STORE entropy6_8 INTO '/home/htian3/project/conditionalEntropy6_8' USING PigStorage(',');


B6_9 = GROUP A BY ($6,$9);
Prop6_9 = FOREACH B6_9 GENERATE (-1*(double)COUNT(A)/(double)TupleCount.$0*LOG((double)COUNT(A)/(double)TupleCount.$0));
Prop6_9Group = GROUP Prop6_9 ALL;
entropy6_9 = FOREACH Prop6_9Group GENERATE SUM(Prop6_9);
STORE entropy6_9 INTO '/home/htian3/project/conditionalEntropy6_9' USING PigStorage(',');


B6_10 = GROUP A BY ($6,$10);
Prop6_10 = FOREACH B6_10 GENERATE (-1*(double)COUNT(A)/(double)TupleCount.$0*LOG((double)COUNT(A)/(double)TupleCount.$0));
Prop6_10Group = GROUP Prop6_10 ALL;
entropy6_10 = FOREACH Prop6_10Group GENERATE SUM(Prop6_10);
STORE entropy6_10 INTO '/home/htian3/project/conditionalEntropy6_10' USING PigStorage(',');


B6_11 = GROUP A BY ($6,$11);
Prop6_11 = FOREACH B6_11 GENERATE (-1*(double)COUNT(A)/(double)TupleCount.$0*LOG((double)COUNT(A)/(double)TupleCount.$0));
Prop6_11Group = GROUP Prop6_11 ALL;
entropy6_11 = FOREACH Prop6_11Group GENERATE SUM(Prop6_11);
STORE entropy6_11 INTO '/home/htian3/project/conditionalEntropy6_11' USING PigStorage(',');


B6_12 = GROUP A BY ($6,$12);
Prop6_12 = FOREACH B6_12 GENERATE (-1*(double)COUNT(A)/(double)TupleCount.$0*LOG((double)COUNT(A)/(double)TupleCount.$0));
Prop6_12Group = GROUP Prop6_12 ALL;
entropy6_12 = FOREACH Prop6_12Group GENERATE SUM(Prop6_12);
STORE entropy6_12 INTO '/home/htian3/project/conditionalEntropy6_12' USING PigStorage(',');


B6_13 = GROUP A BY ($6,$13);
Prop6_13 = FOREACH B6_13 GENERATE (-1*(double)COUNT(A)/(double)TupleCount.$0*LOG((double)COUNT(A)/(double)TupleCount.$0));
Prop6_13Group = GROUP Prop6_13 ALL;
entropy6_13 = FOREACH Prop6_13Group GENERATE SUM(Prop6_13);
STORE entropy6_13 INTO '/home/htian3/project/conditionalEntropy6_13' USING PigStorage(',');


B6_14 = GROUP A BY ($6,$14);
Prop6_14 = FOREACH B6_14 GENERATE (-1*(double)COUNT(A)/(double)TupleCount.$0*LOG((double)COUNT(A)/(double)TupleCount.$0));
Prop6_14Group = GROUP Prop6_14 ALL;
entropy6_14 = FOREACH Prop6_14Group GENERATE SUM(Prop6_14);
STORE entropy6_14 INTO '/home/htian3/project/conditionalEntropy6_14' USING PigStorage(',');


B6_15 = GROUP A BY ($6,$15);
Prop6_15 = FOREACH B6_15 GENERATE (-1*(double)COUNT(A)/(double)TupleCount.$0*LOG((double)COUNT(A)/(double)TupleCount.$0));
Prop6_15Group = GROUP Prop6_15 ALL;
entropy6_15 = FOREACH Prop6_15Group GENERATE SUM(Prop6_15);
STORE entropy6_15 INTO '/home/htian3/project/conditionalEntropy6_15' USING PigStorage(',');


B7_7 = GROUP A BY $7;
Prop7_7 = FOREACH B7_7 GENERATE (-1*(double)COUNT(A)/(double)TupleCount.$0*LOG((double)COUNT(A)/(double)TupleCount.$0));
Prop7_7Group = GROUP Prop7_7 ALL;
entropy7_7 = FOREACH Prop7_7Group GENERATE SUM(Prop7_7);
STORE entropy7_7 INTO '/home/htian3/project/conditionalEntropy7_7' USING PigStorage(',');


B7_8 = GROUP A BY ($7,$8);
Prop7_8 = FOREACH B7_8 GENERATE (-1*(double)COUNT(A)/(double)TupleCount.$0*LOG((double)COUNT(A)/(double)TupleCount.$0));
Prop7_8Group = GROUP Prop7_8 ALL;
entropy7_8 = FOREACH Prop7_8Group GENERATE SUM(Prop7_8);
STORE entropy7_8 INTO '/home/htian3/project/conditionalEntropy7_8' USING PigStorage(',');


B7_9 = GROUP A BY ($7,$9);
Prop7_9 = FOREACH B7_9 GENERATE (-1*(double)COUNT(A)/(double)TupleCount.$0*LOG((double)COUNT(A)/(double)TupleCount.$0));
Prop7_9Group = GROUP Prop7_9 ALL;
entropy7_9 = FOREACH Prop7_9Group GENERATE SUM(Prop7_9);
STORE entropy7_9 INTO '/home/htian3/project/conditionalEntropy7_9' USING PigStorage(',');


B7_10 = GROUP A BY ($7,$10);
Prop7_10 = FOREACH B7_10 GENERATE (-1*(double)COUNT(A)/(double)TupleCount.$0*LOG((double)COUNT(A)/(double)TupleCount.$0));
Prop7_10Group = GROUP Prop7_10 ALL;
entropy7_10 = FOREACH Prop7_10Group GENERATE SUM(Prop7_10);
STORE entropy7_10 INTO '/home/htian3/project/conditionalEntropy7_10' USING PigStorage(',');


B7_11 = GROUP A BY ($7,$11);
Prop7_11 = FOREACH B7_11 GENERATE (-1*(double)COUNT(A)/(double)TupleCount.$0*LOG((double)COUNT(A)/(double)TupleCount.$0));
Prop7_11Group = GROUP Prop7_11 ALL;
entropy7_11 = FOREACH Prop7_11Group GENERATE SUM(Prop7_11);
STORE entropy7_11 INTO '/home/htian3/project/conditionalEntropy7_11' USING PigStorage(',');


B7_12 = GROUP A BY ($7,$12);
Prop7_12 = FOREACH B7_12 GENERATE (-1*(double)COUNT(A)/(double)TupleCount.$0*LOG((double)COUNT(A)/(double)TupleCount.$0));
Prop7_12Group = GROUP Prop7_12 ALL;
entropy7_12 = FOREACH Prop7_12Group GENERATE SUM(Prop7_12);
STORE entropy7_12 INTO '/home/htian3/project/conditionalEntropy7_12' USING PigStorage(',');


B7_13 = GROUP A BY ($7,$13);
Prop7_13 = FOREACH B7_13 GENERATE (-1*(double)COUNT(A)/(double)TupleCount.$0*LOG((double)COUNT(A)/(double)TupleCount.$0));
Prop7_13Group = GROUP Prop7_13 ALL;
entropy7_13 = FOREACH Prop7_13Group GENERATE SUM(Prop7_13);
STORE entropy7_13 INTO '/home/htian3/project/conditionalEntropy7_13' USING PigStorage(',');


B7_14 = GROUP A BY ($7,$14);
Prop7_14 = FOREACH B7_14 GENERATE (-1*(double)COUNT(A)/(double)TupleCount.$0*LOG((double)COUNT(A)/(double)TupleCount.$0));
Prop7_14Group = GROUP Prop7_14 ALL;
entropy7_14 = FOREACH Prop7_14Group GENERATE SUM(Prop7_14);
STORE entropy7_14 INTO '/home/htian3/project/conditionalEntropy7_14' USING PigStorage(',');


B7_15 = GROUP A BY ($7,$15);
Prop7_15 = FOREACH B7_15 GENERATE (-1*(double)COUNT(A)/(double)TupleCount.$0*LOG((double)COUNT(A)/(double)TupleCount.$0));
Prop7_15Group = GROUP Prop7_15 ALL;
entropy7_15 = FOREACH Prop7_15Group GENERATE SUM(Prop7_15);
STORE entropy7_15 INTO '/home/htian3/project/conditionalEntropy7_15' USING PigStorage(',');


B8_8 = GROUP A BY $8;
Prop8_8 = FOREACH B8_8 GENERATE (-1*(double)COUNT(A)/(double)TupleCount.$0*LOG((double)COUNT(A)/(double)TupleCount.$0));
Prop8_8Group = GROUP Prop8_8 ALL;
entropy8_8 = FOREACH Prop8_8Group GENERATE SUM(Prop8_8);
STORE entropy8_8 INTO '/home/htian3/project/conditionalEntropy8_8' USING PigStorage(',');


B8_9 = GROUP A BY ($8,$9);
Prop8_9 = FOREACH B8_9 GENERATE (-1*(double)COUNT(A)/(double)TupleCount.$0*LOG((double)COUNT(A)/(double)TupleCount.$0));
Prop8_9Group = GROUP Prop8_9 ALL;
entropy8_9 = FOREACH Prop8_9Group GENERATE SUM(Prop8_9);
STORE entropy8_9 INTO '/home/htian3/project/conditionalEntropy8_9' USING PigStorage(',');


B8_10 = GROUP A BY ($8,$10);
Prop8_10 = FOREACH B8_10 GENERATE (-1*(double)COUNT(A)/(double)TupleCount.$0*LOG((double)COUNT(A)/(double)TupleCount.$0));
Prop8_10Group = GROUP Prop8_10 ALL;
entropy8_10 = FOREACH Prop8_10Group GENERATE SUM(Prop8_10);
STORE entropy8_10 INTO '/home/htian3/project/conditionalEntropy8_10' USING PigStorage(',');


B8_11 = GROUP A BY ($8,$11);
Prop8_11 = FOREACH B8_11 GENERATE (-1*(double)COUNT(A)/(double)TupleCount.$0*LOG((double)COUNT(A)/(double)TupleCount.$0));
Prop8_11Group = GROUP Prop8_11 ALL;
entropy8_11 = FOREACH Prop8_11Group GENERATE SUM(Prop8_11);
STORE entropy8_11 INTO '/home/htian3/project/conditionalEntropy8_11' USING PigStorage(',');


B8_12 = GROUP A BY ($8,$12);
Prop8_12 = FOREACH B8_12 GENERATE (-1*(double)COUNT(A)/(double)TupleCount.$0*LOG((double)COUNT(A)/(double)TupleCount.$0));
Prop8_12Group = GROUP Prop8_12 ALL;
entropy8_12 = FOREACH Prop8_12Group GENERATE SUM(Prop8_12);
STORE entropy8_12 INTO '/home/htian3/project/conditionalEntropy8_12' USING PigStorage(',');


B8_13 = GROUP A BY ($8,$13);
Prop8_13 = FOREACH B8_13 GENERATE (-1*(double)COUNT(A)/(double)TupleCount.$0*LOG((double)COUNT(A)/(double)TupleCount.$0));
Prop8_13Group = GROUP Prop8_13 ALL;
entropy8_13 = FOREACH Prop8_13Group GENERATE SUM(Prop8_13);
STORE entropy8_13 INTO '/home/htian3/project/conditionalEntropy8_13' USING PigStorage(',');


B8_14 = GROUP A BY ($8,$14);
Prop8_14 = FOREACH B8_14 GENERATE (-1*(double)COUNT(A)/(double)TupleCount.$0*LOG((double)COUNT(A)/(double)TupleCount.$0));
Prop8_14Group = GROUP Prop8_14 ALL;
entropy8_14 = FOREACH Prop8_14Group GENERATE SUM(Prop8_14);
STORE entropy8_14 INTO '/home/htian3/project/conditionalEntropy8_14' USING PigStorage(',');


B8_15 = GROUP A BY ($8,$15);
Prop8_15 = FOREACH B8_15 GENERATE (-1*(double)COUNT(A)/(double)TupleCount.$0*LOG((double)COUNT(A)/(double)TupleCount.$0));
Prop8_15Group = GROUP Prop8_15 ALL;
entropy8_15 = FOREACH Prop8_15Group GENERATE SUM(Prop8_15);
STORE entropy8_15 INTO '/home/htian3/project/conditionalEntropy8_15' USING PigStorage(',');


B9_9 = GROUP A BY $9;
Prop9_9 = FOREACH B9_9 GENERATE (-1*(double)COUNT(A)/(double)TupleCount.$0*LOG((double)COUNT(A)/(double)TupleCount.$0));
Prop9_9Group = GROUP Prop9_9 ALL;
entropy9_9 = FOREACH Prop9_9Group GENERATE SUM(Prop9_9);
STORE entropy9_9 INTO '/home/htian3/project/conditionalEntropy9_9' USING PigStorage(',');


B9_10 = GROUP A BY ($9,$10);
Prop9_10 = FOREACH B9_10 GENERATE (-1*(double)COUNT(A)/(double)TupleCount.$0*LOG((double)COUNT(A)/(double)TupleCount.$0));
Prop9_10Group = GROUP Prop9_10 ALL;
entropy9_10 = FOREACH Prop9_10Group GENERATE SUM(Prop9_10);
STORE entropy9_10 INTO '/home/htian3/project/conditionalEntropy9_10' USING PigStorage(',');


B9_11 = GROUP A BY ($9,$11);
Prop9_11 = FOREACH B9_11 GENERATE (-1*(double)COUNT(A)/(double)TupleCount.$0*LOG((double)COUNT(A)/(double)TupleCount.$0));
Prop9_11Group = GROUP Prop9_11 ALL;
entropy9_11 = FOREACH Prop9_11Group GENERATE SUM(Prop9_11);
STORE entropy9_11 INTO '/home/htian3/project/conditionalEntropy9_11' USING PigStorage(',');


B9_12 = GROUP A BY ($9,$12);
Prop9_12 = FOREACH B9_12 GENERATE (-1*(double)COUNT(A)/(double)TupleCount.$0*LOG((double)COUNT(A)/(double)TupleCount.$0));
Prop9_12Group = GROUP Prop9_12 ALL;
entropy9_12 = FOREACH Prop9_12Group GENERATE SUM(Prop9_12);
STORE entropy9_12 INTO '/home/htian3/project/conditionalEntropy9_12' USING PigStorage(',');


B9_13 = GROUP A BY ($9,$13);
Prop9_13 = FOREACH B9_13 GENERATE (-1*(double)COUNT(A)/(double)TupleCount.$0*LOG((double)COUNT(A)/(double)TupleCount.$0));
Prop9_13Group = GROUP Prop9_13 ALL;
entropy9_13 = FOREACH Prop9_13Group GENERATE SUM(Prop9_13);
STORE entropy9_13 INTO '/home/htian3/project/conditionalEntropy9_13' USING PigStorage(',');


B9_14 = GROUP A BY ($9,$14);
Prop9_14 = FOREACH B9_14 GENERATE (-1*(double)COUNT(A)/(double)TupleCount.$0*LOG((double)COUNT(A)/(double)TupleCount.$0));
Prop9_14Group = GROUP Prop9_14 ALL;
entropy9_14 = FOREACH Prop9_14Group GENERATE SUM(Prop9_14);
STORE entropy9_14 INTO '/home/htian3/project/conditionalEntropy9_14' USING PigStorage(',');


B9_15 = GROUP A BY ($9,$15);
Prop9_15 = FOREACH B9_15 GENERATE (-1*(double)COUNT(A)/(double)TupleCount.$0*LOG((double)COUNT(A)/(double)TupleCount.$0));
Prop9_15Group = GROUP Prop9_15 ALL;
entropy9_15 = FOREACH Prop9_15Group GENERATE SUM(Prop9_15);
STORE entropy9_15 INTO '/home/htian3/project/conditionalEntropy9_15' USING PigStorage(',');


B10_10 = GROUP A BY $10;
Prop10_10 = FOREACH B10_10 GENERATE (-1*(double)COUNT(A)/(double)TupleCount.$0*LOG((double)COUNT(A)/(double)TupleCount.$0));
Prop10_10Group = GROUP Prop10_10 ALL;
entropy10_10 = FOREACH Prop10_10Group GENERATE SUM(Prop10_10);
STORE entropy10_10 INTO '/home/htian3/project/conditionalEntropy10_10' USING PigStorage(',');


B10_11 = GROUP A BY ($10,$11);
Prop10_11 = FOREACH B10_11 GENERATE (-1*(double)COUNT(A)/(double)TupleCount.$0*LOG((double)COUNT(A)/(double)TupleCount.$0));
Prop10_11Group = GROUP Prop10_11 ALL;
entropy10_11 = FOREACH Prop10_11Group GENERATE SUM(Prop10_11);
STORE entropy10_11 INTO '/home/htian3/project/conditionalEntropy10_11' USING PigStorage(',');


B10_12 = GROUP A BY ($10,$12);
Prop10_12 = FOREACH B10_12 GENERATE (-1*(double)COUNT(A)/(double)TupleCount.$0*LOG((double)COUNT(A)/(double)TupleCount.$0));
Prop10_12Group = GROUP Prop10_12 ALL;
entropy10_12 = FOREACH Prop10_12Group GENERATE SUM(Prop10_12);
STORE entropy10_12 INTO '/home/htian3/project/conditionalEntropy10_12' USING PigStorage(',');


B10_13 = GROUP A BY ($10,$13);
Prop10_13 = FOREACH B10_13 GENERATE (-1*(double)COUNT(A)/(double)TupleCount.$0*LOG((double)COUNT(A)/(double)TupleCount.$0));
Prop10_13Group = GROUP Prop10_13 ALL;
entropy10_13 = FOREACH Prop10_13Group GENERATE SUM(Prop10_13);
STORE entropy10_13 INTO '/home/htian3/project/conditionalEntropy10_13' USING PigStorage(',');


B10_14 = GROUP A BY ($10,$14);
Prop10_14 = FOREACH B10_14 GENERATE (-1*(double)COUNT(A)/(double)TupleCount.$0*LOG((double)COUNT(A)/(double)TupleCount.$0));
Prop10_14Group = GROUP Prop10_14 ALL;
entropy10_14 = FOREACH Prop10_14Group GENERATE SUM(Prop10_14);
STORE entropy10_14 INTO '/home/htian3/project/conditionalEntropy10_14' USING PigStorage(',');


B10_15 = GROUP A BY ($10,$15);
Prop10_15 = FOREACH B10_15 GENERATE (-1*(double)COUNT(A)/(double)TupleCount.$0*LOG((double)COUNT(A)/(double)TupleCount.$0));
Prop10_15Group = GROUP Prop10_15 ALL;
entropy10_15 = FOREACH Prop10_15Group GENERATE SUM(Prop10_15);
STORE entropy10_15 INTO '/home/htian3/project/conditionalEntropy10_15' USING PigStorage(',');


B11_11 = GROUP A BY $11;
Prop11_11 = FOREACH B11_11 GENERATE (-1*(double)COUNT(A)/(double)TupleCount.$0*LOG((double)COUNT(A)/(double)TupleCount.$0));
Prop11_11Group = GROUP Prop11_11 ALL;
entropy11_11 = FOREACH Prop11_11Group GENERATE SUM(Prop11_11);
STORE entropy11_11 INTO '/home/htian3/project/conditionalEntropy11_11' USING PigStorage(',');


B11_12 = GROUP A BY ($11,$12);
Prop11_12 = FOREACH B11_12 GENERATE (-1*(double)COUNT(A)/(double)TupleCount.$0*LOG((double)COUNT(A)/(double)TupleCount.$0));
Prop11_12Group = GROUP Prop11_12 ALL;
entropy11_12 = FOREACH Prop11_12Group GENERATE SUM(Prop11_12);
STORE entropy11_12 INTO '/home/htian3/project/conditionalEntropy11_12' USING PigStorage(',');


B11_13 = GROUP A BY ($11,$13);
Prop11_13 = FOREACH B11_13 GENERATE (-1*(double)COUNT(A)/(double)TupleCount.$0*LOG((double)COUNT(A)/(double)TupleCount.$0));
Prop11_13Group = GROUP Prop11_13 ALL;
entropy11_13 = FOREACH Prop11_13Group GENERATE SUM(Prop11_13);
STORE entropy11_13 INTO '/home/htian3/project/conditionalEntropy11_13' USING PigStorage(',');


B11_14 = GROUP A BY ($11,$14);
Prop11_14 = FOREACH B11_14 GENERATE (-1*(double)COUNT(A)/(double)TupleCount.$0*LOG((double)COUNT(A)/(double)TupleCount.$0));
Prop11_14Group = GROUP Prop11_14 ALL;
entropy11_14 = FOREACH Prop11_14Group GENERATE SUM(Prop11_14);
STORE entropy11_14 INTO '/home/htian3/project/conditionalEntropy11_14' USING PigStorage(',');


B11_15 = GROUP A BY ($11,$15);
Prop11_15 = FOREACH B11_15 GENERATE (-1*(double)COUNT(A)/(double)TupleCount.$0*LOG((double)COUNT(A)/(double)TupleCount.$0));
Prop11_15Group = GROUP Prop11_15 ALL;
entropy11_15 = FOREACH Prop11_15Group GENERATE SUM(Prop11_15);
STORE entropy11_15 INTO '/home/htian3/project/conditionalEntropy11_15' USING PigStorage(',');


B12_12 = GROUP A BY $12;
Prop12_12 = FOREACH B12_12 GENERATE (-1*(double)COUNT(A)/(double)TupleCount.$0*LOG((double)COUNT(A)/(double)TupleCount.$0));
Prop12_12Group = GROUP Prop12_12 ALL;
entropy12_12 = FOREACH Prop12_12Group GENERATE SUM(Prop12_12);
STORE entropy12_12 INTO '/home/htian3/project/conditionalEntropy12_12' USING PigStorage(',');


B12_13 = GROUP A BY ($12,$13);
Prop12_13 = FOREACH B12_13 GENERATE (-1*(double)COUNT(A)/(double)TupleCount.$0*LOG((double)COUNT(A)/(double)TupleCount.$0));
Prop12_13Group = GROUP Prop12_13 ALL;
entropy12_13 = FOREACH Prop12_13Group GENERATE SUM(Prop12_13);
STORE entropy12_13 INTO '/home/htian3/project/conditionalEntropy12_13' USING PigStorage(',');


B12_14 = GROUP A BY ($12,$14);
Prop12_14 = FOREACH B12_14 GENERATE (-1*(double)COUNT(A)/(double)TupleCount.$0*LOG((double)COUNT(A)/(double)TupleCount.$0));
Prop12_14Group = GROUP Prop12_14 ALL;
entropy12_14 = FOREACH Prop12_14Group GENERATE SUM(Prop12_14);
STORE entropy12_14 INTO '/home/htian3/project/conditionalEntropy12_14' USING PigStorage(',');


B12_15 = GROUP A BY ($12,$15);
Prop12_15 = FOREACH B12_15 GENERATE (-1*(double)COUNT(A)/(double)TupleCount.$0*LOG((double)COUNT(A)/(double)TupleCount.$0));
Prop12_15Group = GROUP Prop12_15 ALL;
entropy12_15 = FOREACH Prop12_15Group GENERATE SUM(Prop12_15);
STORE entropy12_15 INTO '/home/htian3/project/conditionalEntropy12_15' USING PigStorage(',');


B13_13 = GROUP A BY $13;
Prop13_13 = FOREACH B13_13 GENERATE (-1*(double)COUNT(A)/(double)TupleCount.$0*LOG((double)COUNT(A)/(double)TupleCount.$0));
Prop13_13Group = GROUP Prop13_13 ALL;
entropy13_13 = FOREACH Prop13_13Group GENERATE SUM(Prop13_13);
STORE entropy13_13 INTO '/home/htian3/project/conditionalEntropy13_13' USING PigStorage(',');


B13_14 = GROUP A BY ($13,$14);
Prop13_14 = FOREACH B13_14 GENERATE (-1*(double)COUNT(A)/(double)TupleCount.$0*LOG((double)COUNT(A)/(double)TupleCount.$0));
Prop13_14Group = GROUP Prop13_14 ALL;
entropy13_14 = FOREACH Prop13_14Group GENERATE SUM(Prop13_14);
STORE entropy13_14 INTO '/home/htian3/project/conditionalEntropy13_14' USING PigStorage(',');


B13_15 = GROUP A BY ($13,$15);
Prop13_15 = FOREACH B13_15 GENERATE (-1*(double)COUNT(A)/(double)TupleCount.$0*LOG((double)COUNT(A)/(double)TupleCount.$0));
Prop13_15Group = GROUP Prop13_15 ALL;
entropy13_15 = FOREACH Prop13_15Group GENERATE SUM(Prop13_15);
STORE entropy13_15 INTO '/home/htian3/project/conditionalEntropy13_15' USING PigStorage(',');


B14_14 = GROUP A BY $14;
Prop14_14 = FOREACH B14_14 GENERATE (-1*(double)COUNT(A)/(double)TupleCount.$0*LOG((double)COUNT(A)/(double)TupleCount.$0));
Prop14_14Group = GROUP Prop14_14 ALL;
entropy14_14 = FOREACH Prop14_14Group GENERATE SUM(Prop14_14);
STORE entropy14_14 INTO '/home/htian3/project/conditionalEntropy14_14' USING PigStorage(',');


B14_15 = GROUP A BY ($14,$15);
Prop14_15 = FOREACH B14_15 GENERATE (-1*(double)COUNT(A)/(double)TupleCount.$0*LOG((double)COUNT(A)/(double)TupleCount.$0));
Prop14_15Group = GROUP Prop14_15 ALL;
entropy14_15 = FOREACH Prop14_15Group GENERATE SUM(Prop14_15);
STORE entropy14_15 INTO '/home/htian3/project/conditionalEntropy14_15' USING PigStorage(',');


B15_15 = GROUP A BY $15;
Prop15_15 = FOREACH B15_15 GENERATE (-1*(double)COUNT(A)/(double)TupleCount.$0*LOG((double)COUNT(A)/(double)TupleCount.$0));
Prop15_15Group = GROUP Prop15_15 ALL;
entropy15_15 = FOREACH Prop15_15Group GENERATE SUM(Prop15_15);
STORE entropy15_15 INTO '/home/htian3/project/conditionalEntropy15_15' USING PigStorage(',');


