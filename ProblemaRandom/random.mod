var x1 >= 0, <= 1;
var x2 >= 0, <= 1;
var x3 >= 0, <= 1;
var x4 >= 0, <= 1;

maximize Profitto: 600*x1 + 100*x2 + 300*x3 + 500*x4;

subject to Budget: 50*x1 + 20*x2 + 150*x3 + 70*x4;

subject to Spazio: 8*x1 + 4*x3 + 5*x4 <= 15;



