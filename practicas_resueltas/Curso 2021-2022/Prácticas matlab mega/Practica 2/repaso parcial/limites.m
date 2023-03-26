syms x;
lim1 = limit((x^3+5)/(x^4+7),0);
fplot(lim1);
figure();
lim2i = limit((x-3)/(abs(x-3)),x,0,'left');
lim2d = limit((x-3)/(abs(x-3)),x,0,'right');
fplot(lim2i);
figure();
fplot(lim2d);
clear;
%%%%limites iterados de la funcion (0,1)
f(x,y)=(x*y-x+y)/(x+y);
lfx = limit(f,x,0);
lfy = limit(f,x,1);
lfx2 = limit(lfx,y,1);
lfy2 = limit(lfy,x,0);