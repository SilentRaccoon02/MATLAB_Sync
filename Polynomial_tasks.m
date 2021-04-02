%%
clear;
x = -10:0.01:10;
y = x.^3 - 3.55.*x.^2+5.1.*x-3.1;
yP = [1 -3.55 5.1 -3.1];
plot(x, y, 'LineWidth', 1.2);
hold on;
R = roots(yP);
L = real(R) == R;
R = R(L);
plot(R, 0, '.', 'MarkerSize', 20);
grid on;

%%
clear;
yP = [1 0.1 0.2 -0.2 -2 1];
Roots = roots(yP);
Max = max(abs(Roots));
x = -Max-1:0.01:Max+1;
y = x.^5+0.1*x.^4+0.2*x.^3-0.2*x.^2-2*x+1;
L = real(Roots) == Roots;
Real = Roots(L);
X1 = 1/2*Max;
Diff = polyder(yP);
k = polyvalm(Diff, X1);
y0 = polyval(yP, X1);
y1 = k*(x-X1)+y0;
%тут должна быть нормаль
Re = real(Roots);
Im = imag(Roots);

subplot(1, 2, 1);
plot(x, y, 'b', 'LineWidth', 1.2);
hold on;
plot(Real, 0, '.r', 'MarkerSize', 20);
plot(x, y1, 'g');
plot(X1, y0, '.g', 'MarkerSize', 20);
hold off;
grid on;

subplot(1, 2, 2);
hold on;
for i = 1:size(Roots)
    plot([0 Re(i)], [0 Im(i)], 'b', 'LineWidth', 1.2);
end
plot(Re, Im, '.r', 'MarkerSize', 20);
hold off;
grid on;

%%

