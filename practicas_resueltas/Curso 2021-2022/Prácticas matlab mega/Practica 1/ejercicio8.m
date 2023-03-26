c = @(a,b)sqrt(a^2+b^2);

for i=1:20
   for j=i:20 % comenzamos desde i para evitar numeros duplicados
       result = c(i,j);
       if fix(result) == result % comprobamos si el numero es entero
           fprintf('%d\t %d\t %d\t \n', i, j, result);     
       end
   end
end