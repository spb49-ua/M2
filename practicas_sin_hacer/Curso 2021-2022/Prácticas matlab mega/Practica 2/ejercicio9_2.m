clear
syms x;
num = log(x);
den = x;
f = num/den;

ezplot(f);
grid on;
hold on;
raices = solve(f==0);
%añadimos un bucle con length(raices)para 
plot(raices, subs(f,raices),'bo')
disp(raices);
ezplot(limit(f,inf));
denSol = solve(den == 0);

for i=1:length(denSol)
    disp(denSol(i));
    if isreal(denSol(i))
        plot([denSol(i), denSol(i)],[-100 100]);
    end
end
d1 = diff(f,1);
puntosCriticos = solve(d1 == 0);
d2 = diff(f,2);
for i=1:length(puntosCriticos)

    d2sol = subs(d2,puntosCriticos(i));
    if d2sol > 0
        plot(puntosCriticos(i),subs(f,puntosCriticos(i)),'ro');
        text(puntosCriticos(i), subs(f,puntosCriticos(i)),'Min');
    else
        if d2sol < 0
            plot(puntosCriticos(i),subs(f,puntosCriticos(i)),'go');
            text(puntosCriticos(i), subs(f,puntosCriticos(i)),'Max')
        end
    end
end
%
%hold off;
%figure();
%ezplot(sign(d2), [-5, 5]);
%title('Concavidad de la funcion');

    
