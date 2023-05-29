function retval = canterpillar (k, xt, yt, count,R, top, right)
  min = 1;
  max = right + 5;

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

  d = 1;
  bool = 0;

  while i <= max

    hold on

    [x(1,:),y(1,:)] = drawcircle(xt(i),yt((i)),R);
    set(pls(1,1), 'xdata', x(1,:), 'ydata', y(1,:));
##    pause(0.1)
    drawnow
    hold on


    %Логика
    [bool, d] = contition(xt(i),yt(i),0,0,top,right,R,d);
    if bool != 0
      yt = ricoshet(k,xt(i),yt(i),bool);
      xt = @(p) p;
      k = -k;
    endif
    %Логика

    i = searchCenterMod(xt,yt,i,R, d);




    [x(2,:),y(2,:)] = drawcircle(xt(i),yt((i)),R);

    set(pls(1,2), 'xdata', x(2,:), 'ydata', y(2,:));
##    pause(0.1)
    drawnow
    hold on


    for j = 3:1:count
      %Логика
      [bool, d] = contition(xt(i),yt(i),0,0,top,right,R,d);
      if bool != 0
        yt = ricoshet(k,xt(i),yt(i),bool);
        xt = @(p) p;
        k = -k;
      endif
      %Логика
      i = searchCenterMod(xt,yt,i,R, d);


      [x(j,:),y(j,:)] = drawcircle(xt(i),yt(i),R);
      set(pls(1,j), 'xdata', x(j,:), 'ydata', y(j,:));
##      pause(0.1)
      drawnow
      hold on
    endfor


    %Логика
    [bool, d] = contition(xt(i),yt(i),0,0,top,right,R,d);
    if bool != 0
      yt = ricoshet(k,xt(i),yt(i),bool);
      xt = @(p) p;
      k = -k;
    endif
    %Логика
    i = searchCenterMod(xt,yt,i,R, d);





  endwhile

endfunction
