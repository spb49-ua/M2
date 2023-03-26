syms x h;
num = x^2+3;
den = 2*x^2;
f = (num/den); 

formula = subs(f,x+h);
resultado = (formula-f)/h;
limit(resultado,h,0)

%asintota horizontal
AV1 = limit(f,inf);
AV2 = limit(f,-inf);
plot([-5 5],[AV1 AV1],'r--')
plot([-5 5],[AV2 AV2],'r--')
%asintotas verticales
densol = solve(den==0);
for i=1:length(densol)
    if isreal(densol(i))
        plot([densol(i) densol(i)],[-100 100],'b')
    end
end
