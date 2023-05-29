function retval = canterpillar (xt, yt, count,R)
  min = -10;
  max = 10;
  k = 1 + count;

  x = zeros(count,1000);
  y = zeros(count, 1000);

  pls = zeros(1,count);
  for i = 1:1:count
    pls(1,i) = plot(0,0);
    hold on
  endfor

  i = min;
  shading interp
  s = min;

  while i <= max

##    xlim([xt(i) - 2*R*count, xt(i) + 2*R*count]);
##    ylim([yt(i) - 2*R*count, yt(i) + 2*R*count]);
    hold on

    [x(1,:),y(1,:)] = drawcircle(xt(i),yt((i)),R);
    set(pls(1,1), 'xdata', x(1,:), 'ydata', y(1,:));
    pause(0.001)
    hold on




    i = searchCenter(xt,yt,i,R);
    [x(2,:),y(2,:)] = drawcircle(xt(i),yt((i)),R);

    set(pls(1,2), 'xdata', x(2,:), 'ydata', y(2,:));
    pause(0.001)
    hold on


    for j = 3:1:count
      i = searchCenter(xt,yt,i,R);
      [x(j,:),y(j,:)] = drawcircle(xt(i),yt((i)),R);
      set(pls(1,j), 'xdata', x(j,:), 'ydata', y(j,:));
      pause(0.001)
      hold on
    endfor

  i = searchCenter(xt,yt,i,R);

  endwhile

endfunction
