syms x;
f = cos(x);
t1 = taylor(f, x, pi/6, 'order', 1);
t2 = taylor(f, x, pi/6, 'order', 2);
t5 = taylor(f, x, pi/6, 'order', 5);
t8 = taylor(f, x, pi/6, 'order', 8);

subplot(1,4,1)
fplot(t1)
hold on
fplot(f)

subplot(1,4,2)
fplot(t2, [0 2*pi])
hold on
fplot(f)

subplot(1,4,3)
fplot(t5, [0 2*pi])
hold on
fplot(f)

subplot(1,4,4)
fplot(t8, [0 2*pi])
hold on
fplot(f)