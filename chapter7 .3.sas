
/*Chapter 7: Question 3*/

data in;
input Therapy $ severity$ count;
cards;
Medical Minimal 90
Nontraditional Minimal 50
Medical Moderate 60
Nontraditional Moderate 60
Medical Severe 50
Nontraditional Severe 90
run;
proc freq;
tables Therapy*severity/chisq;
weight count;
run;
