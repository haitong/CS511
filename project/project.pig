A = LOAD '/home/bendre1/yahoo/sample/*'  Using PigStorage(',');
TupleGroup = GROUP A ALL;
TupleCount = FOREACH TupleGroup GENERATE COUNT(A);  -- count the total number of tuples

-- for the attribute of user_id;

B1 =  GROUP A BY impressions;
Prop1 = FOREACH B1 GENERATE (-1*(double)COUNT(A)/(double)TupleCount.$0*LOG((double)COUNT(A)/(double)TupleCount.$0));  -- Number of bits needed to represent each category
Prop1Group = GROUP Prop1 ALL;
entropy1 = FOREACH Prop1Group GENERATE SUM(Prop1.$0);
--DUMP entropy1;


B2 =  GROUP A BY clicks;
Prop2 = FOREACH B2 GENERATE (-1*(double)COUNT(A)/(double)TupleCount.$0*LOG((double)COUNT(A)/(double)TupleCount.$0));  -- Number of bits needed to represent each category
Prop2Group = GROUP Prop2 ALL;
entropy2 = FOREACH Prop2Group GENERATE SUM(Prop2.$0);



B3 =  GROUP A BY conversions;
Prop3 = FOREACH B3 GENERATE (-1*(double)COUNT(A)/(double)TupleCount.$0*LOG((double)COUNT(A)/(double)TupleCount.$0));  -- Number of bits needed to represent each category
Prop3Group = GROUP Prop3 ALL;
entropy3 = FOREACH Prop3Group GENERATE SUM(Prop3.$0);



B4 =  GROUP A BY netspeed_id;
Prop4 = FOREACH B4 GENERATE (-1*(double)COUNT(A)/(double)TupleCount.$0*LOG((double)COUNT(A)/(double)TupleCount.$0));  -- Number of bits needed to represent each category
Prop4Group = GROUP Prop4 ALL;
entropy4 = FOREACH Prop4Group GENERATE SUM(Prop4.$0);



B5 =  GROUP A BY user_agent;
Prop5 = FOREACH B5 GENERATE (-1*(double)COUNT(A)/(double)TupleCount.$0*LOG((double)COUNT(A)/(double)TupleCount.$0));  -- Number of bits needed to represent each category
Prop5Group = GROUP Prop5 ALL;
entropy5 = FOREACH Prop5Group GENERATE SUM(Prop5.$0);



B6 =  GROUP A BY gender;
Prop6 = FOREACH B6 GENERATE (-1*(double)COUNT(A)/(double)TupleCount.$0*LOG((double)COUNT(A)/(double)TupleCount.$0));  -- Number of bits needed to represent each category
Prop6Group = GROUP Prop6 ALL;
entropy6 = FOREACH Prop6Group GENERATE SUM(Prop6.$0);



B7 =  GROUP A BY age;
Prop7 = FOREACH B1 GENERATE (-1*(double)COUNT(A)/(double)TupleCount.$0*LOG((double)COUNT(A)/(double)TupleCount.$0));  -- Number of bits needed to represent each category
Prop7Group = GROUP Prop7 ALL;
entropy7 = FOREACH Prop7Group GENERATE SUM(Prop7.$0);



B8 =  GROUP A BY language_ids;
Prop8 = FOREACH B8 GENERATE (-1*(double)COUNT(A)/(double)TupleCount.$0*LOG((double)COUNT(A)/(double)TupleCount.$0));  -- Number of bits needed to represent each category
Prop8Group = GROUP Prop8 ALL;
entropy8 = FOREACH Prop8Group GENERATE SUM(Prop8.$0);



B9 =  GROUP A BY trigger_by_click;
Prop9 = FOREACH B9 GENERATE (-1*(double)COUNT(A)/(double)TupleCount.$0*LOG((double)COUNT(A)/(double)TupleCount.$0));  -- Number of bits needed to represent each category
Prop9Group = GROUP Prop9 ALL;
entropy9 = FOREACH Prop9Group GENERATE SUM(Prop9.$0);



B10 =  GROUP A BY first_initial_bid_price_type;
Prop10 = FOREACH B10 GENERATE (-1*(double)COUNT(A)/(double)TupleCount.$0*LOG((double)COUNT(A)/(double)TupleCount.$0));  -- Number of bits needed to represent each category
Prop10Group = GROUP Prop10 ALL;
entropy10 = FOREACH Prop10Group GENERATE SUM(Prop10.$0);



B11 =  GROUP A BY second_initial_bid_price_type;
Prop11 = FOREACH B11 GENERATE (-1*(double)COUNT(A)/(double)TupleCount.$0*LOG((double)COUNT(A)/(double)TupleCount.$0));  -- Number of bits needed to represent each category
Prop11Group = GROUP Prop11 ALL;
entropy11 = FOREACH Prop11Group GENERATE SUM(Prop11.$0);



B12 =  GROUP A BY screen_type;
Prop12 = FOREACH B12 GENERATE (-1*(double)COUNT(A)/(double)TupleCount.$0*LOG((double)COUNT(A)/(double)TupleCount.$0));  -- Number of bits needed to represent each category
Prop12Group = GROUP Prop12 ALL;
entropy12 = FOREACH Prop12Group GENERATE SUM(Prop12.$0);



B13 =  GROUP A BY rich_media_flag;
Prop13 = FOREACH B13 GENERATE (-1*(double)COUNT(A)/(double)TupleCount.$0*LOG((double)COUNT(A)/(double)TupleCount.$0));  -- Number of bits needed to represent each category
Prop13Group = GROUP Prop13 ALL;
entropy13 = FOREACH Prop13Group GENERATE SUM(Prop13.$0);




B14 =  GROUP A BY mobile_wifi;
Prop14 = FOREACH B14 GENERATE (-1*(double)COUNT(A)/(double)TupleCount.$0*LOG((double)COUNT(A)/(double)TupleCount.$0));  -- Number of bits needed to represent each category
Prop14Group = GROUP Prop14 ALL;
entropy14 = FOREACH Prop14Group GENERATE SUM(Prop14.$0);



result = UNION entropy1, entropy2, entropy3, entropy4, entropy5, entropy6, entropy7, entropy8, entropy9, entropy10, entropy11, entropy12, entropy13, entropy14;
STORE result INTO '/home/htian3/project/entropy' USING PigStorage(',');


-- B = GROUP A BY campaign_id;
-- C = FOREACH B GENERATE group, SUM(A.impressions), SUM(A.clicks),SUM(A.conversions);
-- STORE C INTO '/home/htian3/HW2/pig' USING PigStorage(',');

