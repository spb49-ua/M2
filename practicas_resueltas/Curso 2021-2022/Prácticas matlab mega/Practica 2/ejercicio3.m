syms x y;
f1 = (x^2-1)/(3*x+y);
f2 = (x+3)/(x*y-4);

lf1 = limit(f1,x,4);
lf2 = limit(f2,x,2);

f1ite = limit(f1,y,3);
f2ite = limit(f2,y,2);

ezmesh(f2)