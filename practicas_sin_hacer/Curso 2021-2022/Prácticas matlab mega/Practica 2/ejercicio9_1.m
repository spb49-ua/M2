clear
syms x;
numerador = 2*x;
denominador = x^2+1;
f = numerador / denominador;
% imprimimos funcion
fplot(f)
hold on
% calculamos asintotas horizontales
asinhori = limit(f,inf);
fplot(asinhori)
% calculamos asintotas verticales
roots = solve(denominador);
fplot(roots)
% para averiguar los puntos criticos
% calculamos la derivada de la funcion
f1 = diff(f);
f1simp = simplify(f1);
% para calcular los puntos criticos se resuelve f'(x)=0
criticos = solve(f1simp==0);
% encontramos un punto critico en x=0
% si es un maximo o minimo tenemos que ver signo de f''(x)
f2 = diff(f,2);
f2simp = simplify(f2);
% calculamos la segunda derivada en x=0
% si nos sale un resultado positivo tendremos un minimo
valor2deri = subs(f2simp,0);
plot(criticos,subs(f,criticos),'ro')