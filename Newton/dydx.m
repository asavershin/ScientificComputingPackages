#вычисление производной
function ans = dydx (f, x, x0)
  ans = (f(x) - f(x0))/(x-x0);
endfunction
