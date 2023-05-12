set     Fert; #fertilizzanti


param   Rep_conf{Fert}>=0;
param   Rep_prod{Fert}>=0;
param   Prof{Fert}>=0;


var     x{Fert}>=0; #fertilizzanti_prodotti


maximize     Profitto_compl: sum{i in Fert} Prof[i]*x[i];

subject to      Produzione: sum{i in Fert} Rep_prod[i]*x[i]<=100;
subject to      Confezionamento: sum{i in Fert} Rep_conf[i]*x[i]<=50;


