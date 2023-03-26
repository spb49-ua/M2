%representacion con format
format long
disp(pi)
format short
disp(pi)
format rat
disp(pi)
format long e
disp(pi)
%creamos dos vectores (a,b) incrementales desde 0 hasta 10 con incremento
%de 0.01 y 0.1 respectivamente
figure()
a =(0:0.01:10);
b = (0:0.1:10);
plot(a,sin(a))
hold on;
plot(b,sin(b))
hold off;
% halla la diagonal de un triangulo cuyos lados miden 12 y 5
c1=12;
c2=5;
h=sqrt(c1^2+c2^2);
disp("Diagonal del rectangulo: ");
disp(h);

%obener las siguientes expresiones:
%El desarrollo de (5 ? x ? y) 2
syms x y;
disp(expand((5*x-y)^2))
%La simplificación de 9?(x ?y) 2 +12?(x ?y)?(x +y)+4?(x +y) 2
disp(simplify(9*(x-y)^2 +12*(x-y)*(x+y)+4*(x+y)^2))
%La factorización de 9?(x ?y) 2 +12?(x ?y)?(x +y)+4?(x +y) 
disp(factor(9*(x-y)^2 +12*(x-y)*(x+y)+4*(x+y)^2))

%
figure()
altura = [5.2 6.6 7.3 8.6 10.7];
plot(1:5,altura,'--')
title("Altura por dias")
xlabel("dias");
ylabel("altura");


%ejercicio 12
y1=x^3;
y2=x^2+1;
subplot(1,2,1)
ezplot(y1,[-2 2]);
title("x^3");
hold on;
subplot(1,2,2)
ezplot(y2,[-2 2]);
hold off;
clear;
%Dada la matriz M = [1:3; 4:6], crea una matriz de ceros con el
%mismo tama˜ no que M
M = [1:3;4:6];
tam = size(M);
disp(zeros(tam))

%creamos dos vectores de la misma longitud y realiza las siguientes
%operaciones
M1 = (1:5);
M2 = (6:10);
%sumar
SUMA=M1+M2;
%restar
RESTA = M1-M2;
%eleva al cuadrado elemento a elemento
EXP1=M1.^2;
EXP2=M2.^2;
%multiplicalos elemento a elemento
MULT=M1.*M2;
%dividelos elemento a elemento
DIV=M1./M2;
clear;

%ejercicio 15
figure()
syms x y;
f = (x^2+y^2-1)^3 -x^2*y^3;
ezplot(f,[-1.5 1.5 -1 1.5]);
clear;

%ejercicio 16
syms x y;
f = x^3 + y^3 - 6*x*y;
subplot(2,1,1); ezplot(f);
hold on;
subplot(2,1,2); ezcontour(f);
clear;

%matriz de ceros con diagonal numeros random entre 2 y 10
v = randi([2,10],1,6);
diag(v);