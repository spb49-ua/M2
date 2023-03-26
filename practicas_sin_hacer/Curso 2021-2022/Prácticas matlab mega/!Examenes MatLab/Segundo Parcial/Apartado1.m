%OSCAR CASADO LORENZO | 77580351V | ocl5@alu.ua.es

syms x y;

%Declaramos la funci�n
f = @(x,y) x*y.^2;

%Calculamos el volumen mediante un integral doble
volumen = double(dblquad(f, 0, 2, 0, 1));

%Lo mostramos por pantalla
disp('El volumen es de:')
disp(volumen);