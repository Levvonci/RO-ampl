var veg1>=0;
var veg2>=0;
var oil1>=0;
var oil2>=0;
var oil3>=0;

var y>=0;
maximize obj: 150*y - 110*veg1-120*veg2-130*oil1-110*oil2-115*oil3;
subject to c1: veg1+veg2+oil1+oil2+oil3=y;
s.t.       c2: veg1+veg2 <= 200;
s.t.       c3: oil1+oil2+oil3 <= 250;
s.t.       c4: 8.8*veg1+6.1*veg2+2*oil1+4.2*oil2+5*oil3 <= 6*y;
s.t.       c5: 8.8*veg1+6.1*veg2+2*oil1+4.2*oil2+5*oil3 >= 3*y;

