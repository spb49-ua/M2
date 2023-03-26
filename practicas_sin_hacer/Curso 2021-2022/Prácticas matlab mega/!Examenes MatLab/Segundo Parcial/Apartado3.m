%OSCAR CASADO LORENZO | 77580351V | ocl5@alu.ua.es

syms x y z;

%Declaramos la función de forma anónima
f = @(x,y,z)x.^2 + sin(y)*sin(z);

%Llevamosa a cabo la integral triple mediante ints anidados
valor = double(int(int(int(f, x, 0, sqrt(5)), y, 0,2*pi),z,0,atan(2)));

%Mostramos el valor por pantalla
disp('El valor decimal de la integral es:');
disp(valor);