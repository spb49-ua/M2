syms x;
f1 = 4-x^2;
f2 = -x;
%puntos de corte de las dos graficas
pcortes = solve(f1==f2);
%Ar es el área buscada
int(pcortes);