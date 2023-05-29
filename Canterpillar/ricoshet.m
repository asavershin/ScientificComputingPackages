function y = ricoshet (k, x0, y0,bool)

   b = y0 + k*x0;
   y = @(x) -k*x + b;


endfunction
