syms x;
f=(3*x+5)/(x-3);
g=x^2+1;

l1 = limit(f,x,4);
l2 = limit(g,x,4);
lsum = limit(f+g,x,4);
lrest = limit(f-g,x,4);
lprod = limit(f*g,x,4);
ldiv = limit(f/g,x,4);