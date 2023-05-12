set Batterie;

param r{Batterie}>=0 ;
param c{Batterie}>=0 ;
param p{Batterie}>=0 ;

var x {Batterie}>=0 ;

maximize guadagno: sum{i in Batterie} p[i] - sum{i in Batterie} c[i]*x[i] - sum{i in Batterie} r[i]*x[i]*5;

subject to kg_rame: sum{i in Batterie} r[i]*x[i]<= 4000;
subject to produzione: x[alef] >= 2x[beth];
subject to produzione2: x[alef] <= x[ghimel];
