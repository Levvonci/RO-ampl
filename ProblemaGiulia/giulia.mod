set Alimenti;

param costi{Alimenti} >= 0;
param min_fib >= 10;
param vit_min >= 10;
param Min >= 400;
param Max <= 600;
param kc{Alimenti} >= 0;
param fib{Alimenti} >= 0;
param vit{Alimenti} >= 0;

var x{Alimenti} >= 0;

minimize z:
      sum{i in Alimenti} costi[i]*x[i];

      s.t. vin1: sum{i in Alimenti} fib[i]*x[i] >= min_fib;
      s.t. vin2: sum{i in Alimenti} vit[i]*x[i] >= vit_min;
      s.t. vin3: sum{i in Alimenti} kc[i]*x[i] >= Min;
      s.t. vin4: sum{i in Alimenti} kc[i]*x[i] <= Max; 

