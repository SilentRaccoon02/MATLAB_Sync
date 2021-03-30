%%
% P(x) = x^5+0.1x^4+0.2x^3-0.2x^2-2x+1
P = [1 0.1 0.2 -0.2 -2 1];
R = roots(P);
disp (R);
M = max(abs(R));
X1 = 0.5*M;
x = (-M-1:0.01:M+1);
y = x.^5+0.1*x.^4+0.2*x.^3-0.2*x.^2-2*x+1;
plot(x,y);
grid on;
hold on;
line([-M-1, M+1], [0, 0]);
%доделать