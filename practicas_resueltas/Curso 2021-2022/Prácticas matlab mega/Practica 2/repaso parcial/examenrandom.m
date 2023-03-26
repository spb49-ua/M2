syms x;
num = x^2 + 1;
den = x - 3;
f = num/den;
%1. Representacion de f en los intervalos [-20 20] y [-40 40]
ezplot(f,[-20 20 -40 40])
hold on
grid on
%2. Calculo de la saintota vertical y mostrar en rojo y trazo discontinuo
densol = solve(den==0);
for i=1:length(densol)
    disp(densol(i));
    if isreal(densol(i))
       plot([densol(i) densol(i)], [-100 100],'r--')
    end
end
%3. Calculo de los puntos de corte de f y g = -10, mostrar en color azul
raices = solve(f==0);
for i=1:length(raices)
    plot(raices(i),subs(f,raices(i)),'k*')
end

%4. Calculo de la derivada
f1 = diff(f);
%5 codigo para que calcule los puntos criticos
criticos = solve(f==0);
%6 codigo para comprobar utilizando el criterio de la segunda derivada los
%si son maximos o minimos y representarlos en color rojo
f2 = diff(f,2);
crit = solve(f1==0);
for i=1:length(crit)
    der2sol = subs(f2,crit(i));
    if der2sol > 0
        plot(crit(i),subs(f,crit(i)),'ro')
        text(crit(i),subs(f,crit(i)),"Minimo")
    end
    if der2sol < 0
        plot(crit(i),subs(f,crit(i)),'ro')
        text(crit(i),subs(f,crit(i)),"Maximo")
    end
end
%7. puntos de inflexion de la funcion
inflexion = solve(f2==0);
for i=1:length(inflexion)
    if isreal(inflexion(i))
        plot(inflexion(i),subs(f,inlexion(i)),'y*');
        text(inflexion(i),subs(f,infelcion(i)),"punto inflexion");
    end
end
%8. calculo de minimos y maximos locales con fminbnd
fprintf('EXTREMOS LOCALES CALCULADOS CON fminbnd: \n\n')
f_a1=@(x)(x^2+1)/(x-3);
[x,fval]=fminbnd(f_a1,0,40);
fprintf('x            : %f \n',x)
fprintf('Mínimo local : %f \n',fval)

f_a2=@(x)-(x^2+1)/(x-3);
[x,fval]=fminbnd(f_a2,-20,10);
fprintf('x            : %f \n',x)
fprintf('Máximo local : %f \n',-fval)
