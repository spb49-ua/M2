% OSCAR CASADO LORENZO - 77580351V

% Declaramos la variable
syms x;
num = (3*x^2)- 6*x + 1;
den = x^2 + x - 3;

% Componemos la funcion a analizar.
f = num/den;

% La mostramos en pantalla con los intervalos de visualizaci�n.
ezplot(f, [-6,7,-1,7]);

% La anclamos para poder trabajar sobre ella.
hold on;

%Para comodidad de la visualizaci�n colocamos los ejes
grid on;

% Hallamos las raices de la funcion obteniendo los valores de x
% que hacen que la funci�n valga 0.
raices = solve(f==0);

% Hacemos un bucle que analice cada uno de los elementos de raices
% ya que pueden existir mas de una
for i = 1 : length(raices)
    %Si la raiz es un numero real la imprimimos y la fijamos
    if isreal(raices(i))
        plot(raices(i), subs(f,raices(i)), 'bo');
        hold on;
    end
end

%Hacemos el limite de la funcion cuando x tiende a infinito
limite1 = limit(f, inf);

%Hacemos el limite de la funcion cuando x tiende a infinito
limite2 = limit(f, -inf);

%Si valen lo mismo entonces pintamos la asintota horizontal
if(limite1 == limite2)
    
    %Cabe destacar que podriamos imprimir cualquiera de ellos puesto que
    %son iguales
    ezplot(limite1);
    hold on;
end;

%Analizamos los puntos en los que el denominador es 0
nulos = solve(den==0);

%Recorremos la matriz de numeros nulos, ya que puede existir mas de uno
for j = 1 : length(nulos)
    %Si el valor de x es un numero real
    if isreal(nulos(j))
        
        %Debido a que no existen las funciones verticales podemos recurrir
        %a unir con la funcion plot una serie de coordenadas que generar�n
        %la apariencia de tener una asintota vertical x = nulo;
        plot([nulos(j), nulos(j)] , [-100, 100]);
        hold on;
    end
end

%Obtenemos la primera derivada de f
d1 = diff(f, 1);

%Analizamos que valores igualan la funci�n a 0
criticos = solve(d1 == 0);

%De la misma forma que pintamos las raices lo hacemos con los puntos
%criticos
for k = 1 : length(criticos)
    %Si el punto critico es un numero real la imprimimos y la fijamos
    if isreal(criticos(k))
        plot(criticos(k), subs(f,criticos(k)), 'go');
        hold on;
    end
end

%Hallamos la segunda derivada de la funci�n
d2 = diff(f, 2);

%Analizamos que valores de x igualan d2 a 0
inflexion = solve(d2 == 0);

%Recorremos los posibles puntos de inflexi�n eliminando el 2 que genera
%errores.
for m = 1 : length(inflexion) - 2
    %Si el punto de inflexi�n es un numero real y si imagen tambien
    if isreal(inflexion(m)) && isreal(subs(f, inflexion(m)))
        %Imprimimos el punto sobre la grafica
        plot(inflexion(m), subs(f,inflexion(m)), 'ro');
        hold on;
    end
end







