syms x;
f = @(x) sqrt(x);
ini = 1;
fin = 2;
ezplot(f,[1,2]);
hold on;
%numero de sumas o rectangulos que vamos a representar
n = 4;
xi = linspace(ini,fin,n+1);
for i=1:n
    Ll(i)=plot([xi(i),xi(i)],double([0,f(xi(i))]),'g');
    Lt(i)=plot([xi(i) xi(i+1)], double([f(xi(i)) f(xi(i))]),'g');
    Lr(i)=plot([xi(i+1) xi(i+1)], double([0 f(xi(i+1))]),'g');
    Rl(i)=plot([xi(i) xi(i)], double([0 f(xi(i+1))]),'r');
    Rt(i)=plot([xi(i) xi(i+1)], double([f(xi(i+1)) f(xi(i+1))]),'r');
    Rr(i)=plot([xi(i+1) xi(i+1)], double([0 f(xi(i+1))]),'r');
end

%valor exacto de la integral
int(f,x,1,2);
%porcentaje error
