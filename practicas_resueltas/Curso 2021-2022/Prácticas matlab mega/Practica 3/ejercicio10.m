syms x z y;
fun=@(x,y,z)x.^2*sin(z);

a=input('Límite inferior de x: a=');
b=input('Límite superior de x: b=');
c=input('Límite inferior de y: c=');
d=input('Límite superior de y: d=');
e=input('Límite inferior de z: e=');
f=input('Límite superior de z: f=');

int1 = double(int(int(int(fun,x,a,b),y,c,d),z,e,f));
int2 = triplequad(fun,a,b,c,d,e,f);
disp(int1);
disp(int2);
