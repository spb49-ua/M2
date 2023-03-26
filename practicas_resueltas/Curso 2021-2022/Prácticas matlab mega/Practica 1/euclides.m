function y = euclides(a, b)
if (a==0)
    y=b;
else
    if (b==0)
        y=a;
    else
        while b ~= 0
            resto = mod(a,b);
            a = b;
            b = resto;
        end
        y = a;
    end
    
end

