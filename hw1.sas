data in;
input boold@@;
/*if 110 le boold le 119 then bloodclass='110-119';*/
/*if 120 le boold le 129 then bloodclass='120-129';*/
/*if 130 le boold le 139 then bloodclass='130-139';*/
/*if 140 le boold le 149 then bloodclass='140-149';*/
/*if 150 le boold le 159 then bloodclass='150-159';*/
/*if 160 le boold le 169 then bloodclass='160-169';*/
/**/
/* */
cards;
12.5  14.0  16.1  27.2  14.5  22.6  15.9  16.2  10.1  29.1
12.5  12.6  9.9  12.8   11.1  23.2  14.5  32.6   16.9 9.0
run;
proc print;
run;
proc Univariate;
run;
/*proc freq;*/
/*run;*/
proc chart;
vbar bloodclass/levels=6;
run;
