clear;

[x,y] = meshgrid(-pi:0.1:pi, -pi:0.1:pi);
z = 20 - x.^2 - y.^2;
surfc(x,y,z);
hold on;

vec0 = [0, -1, 19];
vec = [0, -2, -1];
vec1 = vec0 - 5*vec;
vec2 = vec0;
##figure;
plot3([vec1(1), vec2(1)], [vec1(2), vec2(2)], [vec1(3), vec2(3)]);
axis equal;
xlabel('x');
ylabel('y');
zlabel('z');
