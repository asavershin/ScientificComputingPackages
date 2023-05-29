function ans = newton (f, x0, e, nh)
  # задаем окрестности поиска
  a = x0 - nh;
  b = x0 + nh;
  # возмущение для производной
  x = x0 + e;

  der = 0;
  while(abs(f(x0)) > e)
    der = dydx(@f, x, x0);# берем производную
    prev = x0; # точка с предыдущего шага
    x0 = x0 - f(x0)/(der);#вычисляем точку пересечения касательной с абсциссой
    while(x0 < a || x0 > b)#если улетели далеко, возвращаем методом половинного деления
      x0 = (x0 + prev) / 2;
    endwhile
    x = x0 + e;
  endwhile;

  ans = x0;
endfunction
