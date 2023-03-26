syms x;
num = x^2+1;
den = x-3;
f = num/den;
roots = solve(f==0);
len = length(roots);
%mostramos la funcion para esos valores
ezplot(f,[-6 7 -1 7])
hold on;
%mostrar las raices
for i=1:len
    plot(roots(i),subs(f,roots(i)),'go')
end
%asintotas verticales
densol = solve(den == 0);
for i=1:length(densol)
    if isreal(densol(i))
        plot([densol(i) densol(i)],[-100 100],'r--')
    end
end

f1 = diff(f);
criticos = solve(f1==0);
f2 = diff(f,2);
for i=1:length(criticos)
    d2sol = subs(f2,criticos(i));
    if d2sol > 0
        plot(criticos(i),subs(f,criticos(i)),'ro');
        text(criticos(i), subs(f,criticos(i)),'Min');
    else
        if d2sol < 0
            plot(criticos(i),subs(f,criticos(i)),'go');
            text(criticos(i), subs(f,criticos(i)),'Max')
        end
    end
end