clear;

e = 1e-3;

Roots = roots([1 0 0 -1])
grid on;
hold on;

for x = -2:0.1:2
  for y = -2:0.1:2
    x0 = x + i * y; #Стартовое значение
    ans = classicNewton(@polyNome, x0);
    if abs(ans - Roots(1)) < e
      plot(x,y,'color', [1 0 0]);
      hold on;
    endif
    if abs(ans - Roots(2)) < e
      plot(x,y,"g");
      hold on;
    endif
    if abs(ans - Roots(3)) < e
      plot(x,y,"b");
      hold on;
    endif
  endfor
endfor

axis([-2 2 -2 2]);
