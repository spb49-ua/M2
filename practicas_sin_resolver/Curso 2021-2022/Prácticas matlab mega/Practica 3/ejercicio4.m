syms x;
f(x)=x;
g(x) = (x+1)^2;

int1 = int(f+g,0,2);
int2a = int(f,0,2);
int2b = int(g,0,2);
int2 = int2a + int2b;
disp(int1);
disp(int2);
