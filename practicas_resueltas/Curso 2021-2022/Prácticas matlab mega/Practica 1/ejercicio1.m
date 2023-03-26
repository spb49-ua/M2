r = input('radio de la base: ');
h = input('altura del cono: ');

area = pi * r * sqrt(r^2 + h^2) + pi*r^2;
disp('El area es: ');
disp(area);
volumen = (1/3)*pi*r^2*h;
disp('El volumen es: ');
disp(volumen);