syms x;
f(x) = sin(x);
k = 5;

int1 = int(k*f,-pi/2,pi);
int2 = k*int(f,-pi/2,pi);
disp(int1);
disp(int2);