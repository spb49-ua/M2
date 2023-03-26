syms x;
f1 = exp(4*x);
f2 = x^5*log10(x);
f3 = cos(sin(x)); %no existe, por eso nos la muestra igual
disp(int(f1));
disp(int(f3));
disp(int(f2));