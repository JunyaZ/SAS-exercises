/*SAS program 3*/
Data example;
input name$ gender$ health$ @@;
datalines;
Su  M Poor
Meyers M Good
Jun  F  Fair
Pery F Good
Reardon M Excellent
Adam M Excellent
Ryan M Fair
Austin M VeryGood
Maes M Good
Haller F VeryGood
Nick M Excellent
Lauf M Excellent
Jake M VeryGood
;
proc print;
run;
proc freq;
table health;
run;
proc format;

value heal  5='Excellent'
			  4='VeryGood'
			  3='Good'
			  2='Fair'
			  1='Poor';
run;
data in;
input health hl;
format health heal;
label health='health';

cards;
