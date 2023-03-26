syms x;
n=10;
f=x^2+1;
X = linspace(0,2,n);
F = subs(f,x,X);
plot(X,F,'-*')
set(gca,'Xtick',X);
set(gca,'Ytick',double(F));
grid on