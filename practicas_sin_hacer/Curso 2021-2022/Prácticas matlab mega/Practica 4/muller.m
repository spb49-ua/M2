function raiz = muller(f,a,b,epsilon,tolerancia,maxiter)
x3 = (a+b)/2;
c1 = (subs(f,b)-subs(f,a))/(b-a);
i = 1;
h = tolerancia + 1;

while 1
    c2 = (subs(f,x3)-subs(f,b))/(x3-b);
    d = (c2-c1)/(x3-a);
    s = c2+(x3-b)*d;
    c = x3+2*subs(f,x3)/(s+abs(s)*sqrt(s^2-4*subs(f,x3)*d));
    h = abs(c-x3);
    a = b;
    b = x3;
    x3 = c;
    c1 = c2;
    i = i+1;
    if (abs(subs(f,c))<= epsilon) || (abs(h) <= tolerancia) || (i==maxiter)
        break;
    end
end
raiz = c;