num = input('Introduce numero: ');
base = input('Introduce la nueva base: ');

while num > base
   x = mod(num,base);   %obtenemos el valor del numero en su bases
   y = fix(num/base);   %obtenemos el numero de vueltas que da para llegar al numero
   
   num = base;
end
   disp("Valor numero: ");
   disp(x);
   disp("Numero de vueltas: ");
   disp(y);
   
