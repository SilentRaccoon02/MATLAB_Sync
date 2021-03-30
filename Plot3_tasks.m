%% 0_1
clear;
t = (0:0.05:6*pi);
x = sin(t);
y = 3*cos(t);
plot3(x, y, t,'b');
hold on;
line([-1,-1], [-7*pi, (40-7*pi)], [0, 20], 'LineStyle', '--', 'Color', 'b');
plot3(-1, 0, 7*pi/2, 'b*');
hold off;
grid on;

%% 0_2
clear;
n = input('n = ');
t1 = pi*(-n:5:n)/n;
t2 = (pi/2)*(-n:5:n)'/n;
X = cos(t2)*cos(t1);
Y = cos(t2)*sin(t1);
E = ones(size(t1));
Z = sin(t2)*E;
plot3(X, Y, Z, 'b');
grid on;
title('Сфера');

%% 0_3
clear;
Lx = linspace(-pi, pi, 40);
Ly = linspace(-pi, pi, 50);
[X, Y] = meshgrid(Lx, Ly);
Z = F(X, Y);
surf(X, Y, Z);

%% 1
% ???

%% 2_ab
clear;
x = -10:0.01:10;
y = -10:0.01:10;
a = 1;
[X, Y] = meshgrid(x,y);
Z = a*sin(sqrt(X.^2+Y.^2))./sqrt(X.^2+Y.^2);
subplot(2, 1, 1);
plot3(X, Y, Z);
subplot(2, 1, 2);
mesh(X, Y, Z);

%% 3a
clear;
x = -5:0.1:5;
y = -5:0.1:5;
a = 1;
[X, Y] = meshgrid(x,y);
Z = a.*X.*exp(1).^(-X.^2-Y.^2);
subplot(2, 2, 1);
mesh(X, Y, Z);
subplot(2, 2, 2);
surf(X, Y, Z);
subplot(2, 2, 3);
surfc(X, Y, Z);

%%
clear;
u = 0:0.1:2*pi;
v = -1/2:0.1:1/2;
[U, V] = meshgrid(u, v);
X = (1+V.*cos(U./2)).*cos(U);
Y = (1+V.*cos(U./2)).*sin(U);
Z = V.*sin(U./2);
mesh(X, Y, Z);

%%
function F = F(x,y)
F = 20-x.^2-y.^2;
end

