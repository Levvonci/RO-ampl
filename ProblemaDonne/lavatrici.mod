/*Un’azienda di lavatrici produce due diversi modelli con livello di qualità medio
(STD) e premium (HIQ) rispettivamente.
Per la produzione sono necessari due
diversi macchinari rispettivamente per Assemblaggio (ASM) e Testing (TST),
oltre a dei Materiali (MAT).
Il profitto per la vendita di ciascuna unità di STD è 12 Euro, mentre il profitto per la vendita di un’unità di HIQ è 16 Euro.
L’azienda richiede la pianificazione del mix di produzione che massimizzi il profitto tenendo conto dei vincoli tecnologici di produzione e i limiti massimi di utilizzo delle risorse (macchinari e materiali, indicato con MAX_RES).

RES | STD | HIQ | MAX_RES
ASS    3     2      80
TST    2     4      60
MAT    4     4      70

Formulare il problema considerando il numero di modelli da produrre nel campo continuo (ottimo profitto 260, corrispondente a 12,5 HIQ e 5 STD )*/

set MODELS;

param c{MODELS}>=0;
param ASS{MODELS}>=0;
param TST{MODELS}>=0;
param MAT{MODELS}>=0;

param Max_ASS>=0;
param Max_TST>=0;
param Max_MAT>=0;

var x{MODELS}>=0;

maximize z:
  sum{i in MODELS}c[i]*x[i];

  s.t. assemblaggio: sum{i in MODELS}ASS[i]*x[i]<=Max_ASS;
  s.t. testing: sum{i in MODELS}TST[i]*x[i]<=Max_TST;
  s.t. materiali: sum{i in MODELS}MAT[i]*x[i]<=Max_MAT;
  s.t. v {i in MODELS}: x[i]>=0;

