syms x;
num = x^3 - 8*(x-1)^2;
den = (x-1)^2;
f = (num/den);

fplot(f)
hold on
%asintotas
ah = limit(f,inf);
fplot(ah)
roots = solve(den);
fplot(roots);
%puntos ctiticos
f1 = diff(f);
f1simp = simplify(f1);
fplot(f1simp)
criticos = solve(f1simp);
plot(criticos, subs(f,criticos), 'ro')


