num = input('Introduce numero: ');
i=1;
cont=0;
while i<=num
    if mod(num,i)==0
        cont=cont+1;
    end
    i=i+1;
end
if cont>2
    fprintf('El numero no es primo %d %n',num);
else
    fprintf('El numero es primo %d %n', num);
end