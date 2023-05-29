
function ans = classicNewton (f, x0)
  e = 1e-6;
  # возмущение для производной
  der = 0;
  while(abs(f(x0)) > e)
    der = dzdydx(x0);# берем производную
    x0 = x0 - f(x0)/(der);#вычисляем точку пересечения касательной с абсциссой
  endwhile;
  ans = x0;
endfunction
