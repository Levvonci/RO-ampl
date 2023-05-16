set Prodotti;

param dt{Prodotti} >= 0;
param ct{Prodotti} >= 0;
param ht{Prodotti} >= 0;

param capienza_max{Porodotti} >= 0;

var x{Prodotti} >= 0;

minimize z:
      sum {i in Prodotti} (ct[i]+ht[i])*x[i];

      s.t. v1 {i in Prodotti}: x[i] >= dt[i];
      s.t. v2 {i in Prodotti}: 
