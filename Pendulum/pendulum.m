function dydt = pendulum(t, y, L, g)
  dydt(1) = y(2);
  dydt(2) = -g/L * sin(y(1));
  dydt = dydt';
endfunction
