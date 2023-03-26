syms x y z a b c;
f1 = tan(x+y);
f2 = a*y + b*x + c*z;
f3 = x^0.5 - 3*y;

diff(f1,x)
diff(f2,x)
diff(f3,x)