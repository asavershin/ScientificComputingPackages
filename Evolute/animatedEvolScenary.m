clear;
a = 1;
b = 0;
c = 0;
t = -50:0.05:50;

x1 = @(p) 2*cos(p);
y1 = @(p) sin(p);
xlim([-5, 5]);
ylim([-5, 5]);
hold on;
[X1, Y1] = animatedEvol(x1, y1, t);
R = norm([1 - 4, 2-6])



