clear
syms x;
num = x+1;
den = sqrt(x-1)-5;
f = num/den;

fplot(f);
hold on;
%asintotas horizontal y vertical
ah = limit(f,inf);
fplot(ah)
roots = solve(den);
fplot(roots)
%puntos criticos
f1 = diff(f);
f1simp = simplify(f1);
criticos = solve(f1simp==0);
plot(criticos,subs(f,criticos),'ro')