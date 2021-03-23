t = (0:0.05:6*pi);
x = sin(t);
y = 3*cos(t);

plot3(x, y, t,'b');
hold on;
line([-1,-1], [-7*pi, (40-7*pi)], [0, 20], 'LineStyle', '--', 'Color', 'b');
plot3(-1, 0, 7*pi/2, 'b*');
hold off;
grid on;
