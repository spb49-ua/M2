function sol = Secant1(f,a,b,tolerancia,errorfun,maxiter)
i = 0;
    salir = false;
    
    %Bucle de iteraciones
    while i < maxiter && salir ~= true 
        
        %Incrementamos la iteración
        i = i + 1;
        
        %Calculamos f(a) y f(b)
        fa = double(subs(f,a));
        fb = double(subs(f,b));
        
        if abs(fa) > abs(fb)
            %Intercambiamos a por b
            auxiliar = a;
            a = b;
            b = auxiliar;
            
            %Calculamos f(a) y f(b)
            fa = double(subs(f,a));
            fb = double(subs(f,b));
        end
        
        h = (fa * (b-a)) / (fb - fa);
        
        %c = a-h;
        c = a-h;
        
        b = c;
        
        %f(c);
        fc = double(subs(f,c));
        
        %Comprobamos que el limite de tolerancia y el error no se traspasa
        if double(abs(fc)) <= errorfun || double(abs(h)) <= tolerancia 
            salir = true;
        end
    end
    
    %Finalizado el bucle guardamos el resultado en la variable de retorno
    sol = c;
end