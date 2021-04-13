%% 1
clear;
syms x;
f = x^5+4*x^4-2*x^3-14*x^2-3*x-18;
result = factor(f);
disp(result);

%% 2
clear;
syms x;
f = tan(x)^(tan(x));
result = limit(f, x, pi/4);
disp(result);

%% 3
clear;
syms x
f = atan(x)/2-x/(2*(1+x^2)^2);
result = simplify(diff(f));
disp(result);

%% 4
clear;
syms x;
f = int(sqrt(1-x^2)/x^2);
result = simplify(vpa(f));
disp(result);

%% 5
clear;
syms x;
syms k;
s = symsum(1/(x^k), k, 0, inf);
disp(s);

%% 6
clear;
syms a;
a = 0;
syms n;
n = 5;
syms x;
f = exp(x);
result = taylor(f, 'ExpansionPoint', a, 'Order', n);
disp(result);

%% 7

%% 8

%% 9
