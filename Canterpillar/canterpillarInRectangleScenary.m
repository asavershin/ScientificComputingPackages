clear;

k = 3

top = 100;
right = 80;

y1 = @(p) 3*p;
x1 = @(p) p;

xlim([0, right]);
ylim([0, top]);
hold on
draw_rectangle(0,0,right, top);

canterpillarRec(3,x1,y1,10,0.5,top,right)

##f = ricoshet(3,5,5);
##f(6)



##hold off
