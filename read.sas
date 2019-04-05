data try;
infile 'C:\Users\Ya000\Desktop\frmgham.dat' 
firstobs= 2 DLM= ",";
input SEX $ RANDID TOTCHOL AGE;
run;
proc print;
run;
