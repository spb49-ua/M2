%calculamos el polinomio de taylor de orden 7
syms x;
f = exp(x);
pol=taylor(f,'order',7);
disp(pol);