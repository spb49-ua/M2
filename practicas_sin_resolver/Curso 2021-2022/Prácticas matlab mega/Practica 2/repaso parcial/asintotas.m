syms x;
num = 2*(x^2-9);
den = x^2-4;
f = num/den;
fplot(f);
hold on;
%asintota horizontal
AH1 = limit(f,inf);
AH2 = limit(f,-inf);
plot([-5 5],[AH1 AH1],'g');
plot([-5 5],[AH2 AH2],'y--');
%asintota vertical
densol = solve(den==0);
for i=1:length(densol)
    if isreal(densol)
        plot([densol(i) densol(i)],[-100 100],'r--')
    end
end
%puntos criticos
f1 = simplify(diff(f));
disp(f1);
criticos = solve(f1==0);
f2 = simplify(diff(f1));
for i=1:length(criticos)
    der2sol = subs(f2,criticos(i));
    if der2sol > 0
        plot(criticos(i),subs(f,criticos(i)),'r*');
        text(criticos(i),subs(f,criticos(i)),"MIN");
    end
    if der2sol < 0
        plot(criticos(i),subs(f,criticos(i)),'b*');
        text(criticos(i),subs(f,criticos(i)),"MAX");
    end
    
end

