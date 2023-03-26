function [x,v] = caida(t)
g = -9.8;
v0=40;
x0=300;
v = v0 + g*t;
x = x0 + v0*t + 0.5*g*t^2;
