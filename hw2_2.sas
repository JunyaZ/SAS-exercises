data one;
mu=500;
sigma=100;
z05=probit(0.05);
z50=probit(0.50);
z80=probit(0.8);
z95=probit(0.95);
x05=mu+(z05*sigma);
x50=mu+(z50*sigma);
x80=mu+(z80*sigma);
x95=mu+(z95*sigma);
run;
proc print;
run;