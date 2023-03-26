tam = input('Tamaño de la pizza: ');
ing = input('Numero de ingredientes: ');
dineros = 1.5;

if tam == 1
    precio = 5+ dineros*ing;
else
    if tam == 2
        precio = 8 + dineros*ing;
    else
        if tam == 3
            precio = 12 + dineros*ing;
        end
    end
end
disp('El precio total es: ');
disp(precio);