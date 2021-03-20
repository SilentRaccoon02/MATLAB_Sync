%y = ln(sin(pi/x))
x = (0:0.001:0.1);
y = log(sin(pi./x));

plot(x,y);
grid on;
xlabel ('x');
ylabel ('f(x)');
title ('ln(sin(pi/x))');
