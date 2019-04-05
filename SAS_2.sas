/* This is my first SAS program*/

Data bloodtype;
Input Name$ bt$ hair$ @@;
datalines;
SU     AB Wh
SUN    O  B
JUN    A  B
MEARYS B  BR
MAES   O  Bl
REA    A  BR 
HUULS  A  B
TOM    A  BR
LAUF   A  BR
NICK   O  RED
EI     B  Bl
HALLER O  BR
Asdam  O  Bl
run;
proc print;
run;
/*This is an categorical example*/

Data Sample1;
input hair$ f;
datalines;
B  3
Bldd 3
BR  5
Wh  1
RED    1
;

proc freq;
Tables hair;
Weight f;
proc chart;
vbar hair /freq = f discrete;
run;
