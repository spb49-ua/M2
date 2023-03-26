syms x;
f = (1/(x-0.3)^2)+(1/((x-0.9)^2)+0.04)-20;
options = optimset( 'display' , 'iter' );
[x fval exitflag output] = fzero(f,0, options);