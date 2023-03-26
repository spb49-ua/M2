syms x;
f = cos(x);
%apartado 1
int1 = int(f,-pi,pi);
disp(int1);
%apartado 2
int2 = k*int(f,-pi,0) + k*int(f,0,pi);
disp(int2);