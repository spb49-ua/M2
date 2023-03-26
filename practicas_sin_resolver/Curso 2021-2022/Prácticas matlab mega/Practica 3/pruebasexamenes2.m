syms xy;
%funcion a integrar
f = @(x,y)x/y;
%integrar respecto a x
lx = int(f,x,y,16/y);
%integral buscada
integral = double(int(int(f,x,y,16/y),y,2,4));

disp(lx);
disp(integral);