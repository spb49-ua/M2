syms x;
f(x)=sqrt(x);
%valores inicial y final
ini = 1;
fin = 2;
%numero de sumas o rectangulos que queremos mostrar
cantidad = 4;

%mostramos la funcion entre el inicio y final
ezplot(f(x),[ini,fin]);
hold on;

xi = linspace(ini, fin, cantidad + 1);

%dibujamos la grafica

for i=1:cantidad
    %Rectangulo inferior
    Ll(i) = plot([xi(i) xi(i)], double([0 f(xi(i))]),'g');
    Lt(i) = plot([xi(i) xi(i + 1)], double([f(xi(i)) f(xi(i))]),'g');
    Lr(i) = plot([xi(i+1) xi(i+1)], double([0 f(xi(i))]),'g');
    %Rectangulo superior
    Rl(i) = plot([xi(i) xi(i)], double([0 f(xi(i + 1))]),'r');
    Rt(i) = plot([xi(i) xi(i+1)], double([f(xi(i+1)) f(xi(i+1))]),'r');
    Rr(i) = plot([xi(i+1) xi(i+1)], double([0 f(xi(i+1))]),'r');
    
end

%valor de la integral 
disp("Resultado de la integral: ");
disp(int(f(x)));

%porcentaje de error
for k=1:cantidad
    h = (fin - ini)/cantidad;
    for j=1:cantidad+1
        yi(i) = f(xi(i));
    end
    Ln = h*sum(double(yi(1:cantidad)));
    Rn = h*sum(double(yi(2:cantidad+1)));
    
    disp(double([Ln Rn]));
end
