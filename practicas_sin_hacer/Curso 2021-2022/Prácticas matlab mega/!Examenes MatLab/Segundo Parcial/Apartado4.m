%OSCAR CASADO LORENZO | 77580351V | ocl5@alu.ua.es

syms x;

%Declaramos la función
f = x.^(2/3);

%Calculamos su derivada
d = diff(f,1);

%Elevamos la derivada al cuadrado
d = d^2;

%Componemos la raiz correspondiente a la fórmula de la longitud (L)
raiz = sqrt(1+d);

%Aplicamos la fórmula
L = double(int(raiz, 0, 4));

%Mostramos el resultado por pantalla
disp('La longitud de la curva en el intervalo dado es de:');
disp(L);