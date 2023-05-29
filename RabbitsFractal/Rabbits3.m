##clear;
d = 0.0:0.01:4;
n = 1000;
m = max(size(d));
Xn = zeros(n, m);
Xn(1,:) = 0.6;


for i=2:n
    Xn(i,:) = Xn(i-1, : ) .* d .* (1 - Xn(i-1, : ));
end
plot(d(1:m),Xn(2:n,1:m))
hold off;

