function raiz = biseccion1(f, a, b, tolerancia, errorfun, maxIter)
    i = 0;
    salir = false;
    
    %Bucle de iteraciones
    while i < maxIter && salir ~= true 
        
        %Incrementamos la iteración
        i = i + 1;
        
        %Calculamos f(a) y f(b)
        fa = double(subs(f,a));
        fb = double(subs(f,b));
        
        c = (a+b)/2;
        h = (b-a)/2;
       
        %f(c);
        fc = double(subs(f,c));
        
        if sign(fa)*sign(fc) < 0
            b = c;
        else
            a = c;
        end
        
        %Comprobamos que el limite de tolerancia y el error no se traspasa
        if double(abs(fc)) <= errorfun || double(abs(h)) <= tolerancia 
            salir = true;
        end
    end
    
    %Finalizado el bucle guardamos el resultado en la variable de retorno
    raiz = c;
end