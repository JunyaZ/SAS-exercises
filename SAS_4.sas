Data example_9 ;
input age @@;
if 60 le age le 64 then ageclass='60-64';
if 65 le age le 69 then ageclass='65-69';
if 70 le age le 74 then ageclass='70-74';
if 75 le age le 79 then ageclass='75-79';
if 80 le age le 85 then ageclass='80-85';
cards;
60 62 63 64 65 65 65
66 66 66 66 66 67 67 
67 68 68 68 70 70 70 
71 71 71  72 72 72 73 
73 74 75 75 75 76 76 77
78 78 78 84 85
run;
proc print;
run;

proc univariate plot data= example_9;
run;

proc freq;
Tables ageclass;
run;

proc chart;
vbar ageclass/levels=5;
run;
