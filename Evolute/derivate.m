function ans = derivate (f, x)
  e = 1e-3;
  ans = (f(x) - f(x + e))/(-e);
endfunction
