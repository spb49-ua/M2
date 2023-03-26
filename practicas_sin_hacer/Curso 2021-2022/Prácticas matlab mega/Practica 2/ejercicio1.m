syms x;
f1 = (x^3+5)/(x^4+7);
f2 = (x-3)/(abs(x-3));

lim1=limit(f1);
ezplot(f2,[-4 4 -2 2]);
lim2=limit(f2,x,0,'right');
lim3=limit(f2,x,0,'left');


