
function [X, Y] = animatedEvol (xt, yt, t)

  x1 = @(p) derivate(xt, p);#первая производная x(t)
  derx = @(p) derivate(xt, p);
  x2 = @(p) derivate(derx, p);#вторая производная по x(t)

  y1 = @(p) derivate(yt, p); #первая производная по y(t)
  dery = @(p) derivate(yt, p);
  y2 = @(p) derivate(dery, p);#вторая производная по y(t)

  #отдельно оформленная дробь из уравнения эволюты, просто для удобства
  frac = @(p) ( x1(p) .^ 2 + y1(p) .^ 2 )/( x1(p) .* y2(p) - x2(p) .* y1(p));

  shading interp;
  plot(xt(t),yt(t),'LineWidth', 2);
  hold on;



  R = 0;
  a = 0;
  b = 0;

  k = 1;
  A = plot(0,0);
  B = plot(0,0);
  C =  plot(0,0);
  for i = t
    X(k) = xt(i) - y1(i) * frac(i);
    Y(k) = yt(i) + x1(i) * frac(i);
    R = norm([X(k) - xt(i), Y(k) - yt(i)]);

    [c1,c2] = drawcircle(X(k), Y(k), R);
    set(C, 'xdata', X, 'ydata', Y);
    set(A, 'xdata', c1, 'ydata', c2,'LineWidth', 0.5);
    set(B, 'xdata', [xt(i), X(k)], 'ydata', [yt(i), Y(k)],'LineWidth', 0.5);
    pause(0.05)
    k = k + 1;
  endfor

endfunction
