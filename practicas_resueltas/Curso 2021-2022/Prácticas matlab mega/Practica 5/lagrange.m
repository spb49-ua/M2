function yp = lagrange(x, pointx, pointy)
n = length(pointx) -1;      %tamaño del bucle
xp = x;                     %punto en el que nos fijamos para interpolar

sm = 0;
if (length(pointx)~=length(pointy))
   fprintf(1,'\nERROR!\n pointX y pointY no tienen el mismo tamaño\n');
   yp = NaN;
else
    for i=1 : n+1
        pr = 1;
        for j=1 : n+1
            if j ~= i
                pr = pr * (xp - pointx(j))/(pointx(i) - pointx(j));
            end
        end
        sm = sm + pointy(i) *pr;
    end
    yp = sm;
end
