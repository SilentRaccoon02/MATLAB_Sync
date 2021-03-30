%% 1
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

%% 2
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
