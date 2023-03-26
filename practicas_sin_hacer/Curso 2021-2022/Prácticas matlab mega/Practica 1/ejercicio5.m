tam = input('Tamaño de la pizza: ');
ing = input('Numero de ingredientes: ');
dineros = 1.5;

switch tam
    case 1
        precio = 5 + dineros*ing;
    case 2
        precio = 8 + dineros*ing;
    case 3
        precio = 12 + dineros*ing;
    otherwise 
        disp("El tamaño seleccionado no existe");
end

disp("El precio total es: ");
disp(precio);
        
        