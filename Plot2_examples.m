%%
x = (0:0.001:0.1);
y = log(sin(pi./x));

plot(x,y);
grid on;
xlabel ('x');
ylabel ('f(x)');
title ('ln(sin(pi/x))');

%%
phi = (-1:0.02:1);
r = sin(phi)./phi;

plot(phi, r);
grid on;
xlabel ('x');
ylabel ('f(x)');
title ('sin(phi)/phi');
