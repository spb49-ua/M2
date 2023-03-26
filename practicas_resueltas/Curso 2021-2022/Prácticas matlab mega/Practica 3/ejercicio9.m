syms x y;
f=@(x,y)x.^2/(2*y);

a=input('L�mite inferior de x: a=');
b=input('L�mite superior de x: b=');
c=input('L�mite inferior de y: c=');
d=input('L�mite superior de y: d=');

%integral doble con double
I1 = double(int(int(f,x,a,b),y,c,d));
%integral doublecon dblquad
I2 = dblquad(f,a,b,c,d);
disp(I1);
disp(I2);