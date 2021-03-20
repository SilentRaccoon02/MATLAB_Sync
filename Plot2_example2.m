%r = sin(phi)/(phi)
phi = (-1:0.02:1);
r = sin(phi)./phi;

plot(phi, r);
grid on;
xlabel ('x');
ylabel ('f(x)');
title ('sin(phi)/phi');
