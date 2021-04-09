%% 1_a
clear;
u = 0.1;
a = 0;
b = 2*pi;
x = linspace(a, b, 100);
F = @(x)exp(-u*x.*x).*cos(x.*x);
y = F(x);
plot(x, y);
hold on;
grid on;
xr = ginput(2);
[x_min, y_min] = fminbnd(F, xr(1, 1), xr(2, 1));
plot(x_min, y_min, 'r.', 'MarkerSize', 20);
plot(xr(1, 1), xr(1, 2), 'k.', 'MarkerSize', 10);
plot(xr(2, 1), xr(2, 2), 'k.', 'MarkerSize', 10);
line([xr(1, 1) xr(2, 1)], [xr(1, 2)  xr(2, 2)], 'Color', 'Black')

%% 1_b
clear;
a = 0;
b = 2*pi/3;
a1 = 1;
b1 = 2;
x = linspace(a, b, 100);
F = @(x)1./((a1.*cos(x)+b1.*sin(x)).^2);
y = F(x);
plot(x, y);
hold on;
grid on;
xr = ginput(2);
[x_min, y_min] = fminbnd(F, xr(1, 1), xr(2, 1));
plot(x_min, y_min, 'r.', 'MarkerSize', 20);
plot(xr(1, 1), xr(1, 2), 'k.', 'MarkerSize', 10);
plot(xr(2, 1), xr(2, 2), 'k.', 'MarkerSize', 10);
line([xr(1, 1) xr(2, 1)], [xr(1, 2)  xr(2, 2)], 'Color', 'Black')

%% 1_c
clear;
a = 0;
b = 4;
x = linspace(a, b, 100);
F = @(x)2-abs(x).*exp(1).^(-abs(x-1));
y = F(x);
plot(x, y);
hold on;
grid on;
xr = ginput(2);
[x_min, y_min] = fminbnd(F, xr(1, 1), xr(2, 1));
plot(x_min, y_min, 'r.', 'MarkerSize', 20);
plot(xr(1, 1), xr(1, 2), 'k.', 'MarkerSize', 10);
plot(xr(2, 1), xr(2, 2), 'k.', 'MarkerSize', 10);
line([xr(1, 1) xr(2, 1)], [xr(1, 2)  xr(2, 2)], 'Color', 'Black')

%% 1_d

%% 1_e

%% 2
clear;
xr = [0 -0.2; 1 -0.2];
global par
hold on;
grid on;
for par = 1:1:10
x = linspace(0, 1, 100);
y = fun(x);
plot(x, y);
[x_min, y_min] = fminbnd(@fun, xr(1, 1), xr(2, 1));
plot(x_min, y_min, 'r.', 'MarkerSize', 20);
end
plot(xr(1, 1), xr(1, 2), 'k.', 'MarkerSize', 10);
plot(xr(2, 1), xr(2, 2), 'k.', 'MarkerSize', 10);
line([xr(1, 1) xr(2, 1)], [xr(1, 2)  xr(2, 2)], 'Color', 'Black');

%%
function f = fun(x)
global par
f = (x.^par).*log(x);
end
