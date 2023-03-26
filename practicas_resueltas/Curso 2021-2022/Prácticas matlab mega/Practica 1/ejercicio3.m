num = input('Numero: ');
i = 1;
cont = 0;
while cont == 0
   if mod(num,2)==0 && num~=2
    disp('El numero no es primo');
    cont=cont+1;
   else
       for i = 2:num-1
           if mod(num,i)==0
            disp('El numero no es primo');
            cont=cont+1;
           end
       end
   end
   if num-1==i && cont==0
       disp('El numero es primo');
       cont=cont+1;
   end
end