num = input('Numero: ');
i = 1;
if mod(num,2)==0 && num~=2
    disp('El numero no es primo');
cont=cont+1;
else
   for i = 2:num-1
       if mod(num,i)==0
        cont=cont+1;
       end
   end
end
if num-1==i && cont==0
   disp('El numero es primo');
else
   disp('El numero no es primo');
end