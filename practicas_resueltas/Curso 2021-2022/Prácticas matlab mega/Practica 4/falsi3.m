function sol = falsi3(f,a,b,tolerancia,errorfun,maxiter)
%x^2-sin(x)-0.5
i=0;

while i <= maxiter
    if abs(subs(f,a)) > abs(subs(f,b))
        aux = a;
        a = b;
        b = aux;
    end
    h = (subs(f,a)*(b-a))/(subs(f,b)-subs(f,a));
    c = a-h;
    %
    X(i,:)=double([i a b c h subs(f,a) subs(f,b) subs(f,c)]);
    %
    if subs(f,a)*subs(f,c)<0
        b=c;
    else
        a=c;
    end
    if (abs(subs(f,c))<=errorfun) || (abs(h)<= tolerancia) || (i==maxiter)
        break
    end
    i = i+1;
end
sol = c;
    
    