syms x;
f = -x^2 + 6*x;
g = x^2-2*x;
%resolucion de sistema
A = solve(f==g);
d = int(f);
disp("Solucion del sistema: ");
disp(A);
disp("Integral definida: ");
disp(d);
