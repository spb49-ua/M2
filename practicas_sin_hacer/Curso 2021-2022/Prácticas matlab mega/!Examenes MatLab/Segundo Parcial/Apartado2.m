%OSCAR CASADO LORENZO | 77580351V | ocl5@alu.ua.es

syms x;

num = 1;
den = x.^2 + 5*x + 4;

%Declaramos la funci�n a partir del numerador y denominador
f = num/den;

%Calculamos el limite de dicha funci�n cuando x tiende a infinito
limite = limit(f, x, inf);

%Si el resultado de dicha operaci�n es un n�mero real entonces...
if isreal (limite)
    %...la funci�n converge y se puede clacular su resultado
    disp('La integral definida converge, y su valor es:');
    
    %...el resultado equivaldr� al de la integral definida
    valor = double(int(f, x, 4, inf));
    disp(valor);
    
%Si del limite no se obtiene un numero real entonces...
else
    %...la funci�n diverge y no se puede obtener su resultado
    disp('La integral definida diverge');
end;