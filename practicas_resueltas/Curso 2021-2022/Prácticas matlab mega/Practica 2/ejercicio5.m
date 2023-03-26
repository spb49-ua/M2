syms x h;
f = sin(x);
%Calculamos el limite cuando h tiende a cero
% sustituimos la x por x+h y restamos la f(x)
limit((sin(x+h)-sin(x))/h,h,0)
