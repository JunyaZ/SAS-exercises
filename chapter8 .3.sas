options ps=62 ls=80;
proc format;
values eventf 1="Migraine" 2="Non-Migraine";
value grpf 1="Trt1" 2="Trt0";
value agef 1="old" 2="young";
run;
data in;
input group htn age f;
format htn eventf. group grpf. age agef.;
cards;
1 1 1 30
1 2 1 30
2 1 1 35
2 2 1 5
1 1 2 32
1 2 2 28
2 1 2 51
2 2 2 89
run;
/*proc print;*/
proc freq;
tables group*htn/nocol nopercent relrisk
chisq;
weight f;
run;
proc freq;
tables age*group*htn/cmh nocol nopercent;
weight f;
run;
