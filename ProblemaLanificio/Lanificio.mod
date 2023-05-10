set MACCHINE; #insieme delle macchine

param st{MACCHINE}>=0;
param sp{MACCHINE}>=0;
param c{MACCHINE}>=0;

var x{MACCHINE}>=0; #Numeroore lavoro ogni macchina

minimize ore: sum{i in MACCHINE} c[i]*x[i];

subject to domanda_st: sum{i in MACCHINE} st[i]*x[i] >=60;
subject to domanda_sp: sum {i in MACCHINE} sp[i]*x[i]>=40;







minimize
