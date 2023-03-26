clear
syms x;
num = log(x);
den = x;
f = num/den;

raices = solve(num==0);
len = length (raices);
fplot(f);
hold on;
for i=1:len
    plot(raices(i),subs(f,raices(i)),'bo')
end

AH = limit(f,inf);
if AH == inf
    x = [-10 10];
    y = [AH AH];
    plot(x,y);
end
AV = solve(den);
if imag(AV)==0
    x = [AV AV];
    y = [-10 10];
    plot(x,y);
end

der = diff(f);
crit = solve(der == 0);
der2 = diff(f,2);
len2 = length(crit);
vder2 = subs(der2,crit);
for i=1:len2
    if vder2(i)>0
        plot(crit(i),subs(f,crit(i)),'ro')
        text(crit(i),subs(f,crit(i)),'MIN')
    end
    if vder2(i)<0
        plot(crit(i),subs(f,crit(i)),'go')
        text(crit(i),subs(f,crit(i)),'MAX')
    end
end
