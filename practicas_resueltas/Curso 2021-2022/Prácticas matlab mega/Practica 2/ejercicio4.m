syms x y;
f = (x*y)/(x^2+y^2);

limf = limit(f,x,0);
itef = limit(f,y,0);

ezmesh(f);