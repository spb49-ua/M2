function[x,v] = posixvel(t)
g=-9.8;
vi=40;
xi=300;
v=vi+g*t;
x=xi+vi*t+(1/2)*g*t^2;
end