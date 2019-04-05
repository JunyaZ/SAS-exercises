/* This is my first SAS program*/

Data in;
Input Names,sbp @@;
Cards
SUM   121
JUN   110
MEYRS 114
MEAS  100
SU    160
HUELS 130
run;
proc print ;
run;
proc univariate plot;
var sbp;
run;
proc means;
var sbp;
run;
