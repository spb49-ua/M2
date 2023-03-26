%OSCAR CASADO LORENZO | 77580351V | ocl5@alu.ua.es

syms x;

num = 1;
den = x.^2 + 5*x + 4;

%Declaramos la función a partir del numerador y denominador
f = num/den;

%Calculamos el limite de dicha función cuando x tiende a infinito
limite = limit(f, x, inf);

%Si el resultado de dicha operación es un número real entonces...
if isreal (limite)
    %...la función converge y se puede clacular su resultado
    disp('La integral definida converge, y su valor es:');
    
    %...el resultado equivaldrá al de la integral definida
    valor = double(int(f, x, 4, inf));
    disp(valor);
    
%Si del limite no se obtiene un numero real entonces...
else
    %...la función diverge y no se puede obtener su resultado
    disp('La integral definida diverge');
end;