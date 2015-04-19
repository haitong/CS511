A = LOAD '/home/bendre1/yahoo/sample/part-m-00000.gz'  Using PigStorage(',');
B = GROUP A BY campaign_id;
C = FOREACH B GENERATE group, SUM(A.impressions), SUM(A.clicks),SUM(A.conversions);
STORE C INTO '/home/htian3/HW2/pig' USING PigStorage(',');
