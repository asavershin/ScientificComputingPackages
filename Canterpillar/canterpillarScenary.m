clear;

y1 = @(p) 30*sin(p);
x1 = @(p) 10*cos(p);

xlim([-50, 50]);
ylim([-50, 50]);
hold on


canterpillar(x1,y1,7,1)

##draw_rectangle(0,0,20,10);

hold off
