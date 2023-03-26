syms x;
ancho = x
largo = 3*ancho
volumen = 50
altura = volumen/(largo*ancho)
costo_base_tapa = 2*largo*ancho*10;
costo_costado = 2*altura*largo*6 + 2*altura*ancho*6
costo_minimo = costo_base_tapa + costo_costado
dif_costo_minimo = diff(costo_minimo)
X = double(solve(dif_costo_minimo));
U = find(real(X)==X);
x=X(U)