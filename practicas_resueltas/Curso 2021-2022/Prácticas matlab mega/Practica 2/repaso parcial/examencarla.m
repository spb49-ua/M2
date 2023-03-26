syms x;
num = 3*x^2-6*x+1;
den = x^2 + x - 3;
f = num/den;
roots = solve(f==0);
len = length(roots);
%mostramos la funcion para esos valores
ezplot(f,[-6 7 -1 7])
hold on;
%mostrar las raices
for i=1:len
    plot(roots(i),subs(f,roots(i)),'go')
    text(roots(i),subs(f,roots(i)),'Raiz')
end

