syms x z y;
fun=@(x,y,z)x.^2*sin(z);

a=input('L�mite inferior de x: a=');
b=input('L�mite superior de x: b=');
c=input('L�mite inferior de y: c=');
d=input('L�mite superior de y: d=');
e=input('L�mite inferior de z: e=');
f=input('L�mite superior de z: f=');

int1 = double(int(int(int(fun,x,a,b),y,c,d),z,e,f));
int2 = triplequad(fun,a,b,c,d,e,f);
disp(int1);
disp(int2);
