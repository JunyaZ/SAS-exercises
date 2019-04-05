/* This is my first SAS program*/

Data in;
Input Names@@;
Cards;
12
15
16
17
20
22
23
24
25
26
26
29
29
30
31
31
32
36
36
38
40
41
44
45
45
52
58
run;
proc print ;
run;
proc Univariate;
run;
