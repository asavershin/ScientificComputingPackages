
function [xa,ya,ka,da] = trayectoryLogic (xt,yt, k,d,bool)
  %Логика
    if bool == 1
      da = 1;
      ya = ricoshet(k,xt(i),yt(i),bool);
      xa = @(p) p;
      ka = -k;
    elseif bool == 4
      da = 1;
      ya = ricoshet(k,xt(i),yt(i),bool);
      xa = @(p) p;
      ka = -k;
    elseif bool == 3
      da = -1;
      ya = ricoshet(k,xt(i),yt(i),bool);
      xa = @(p) p;
      ka = -k;
    elseif bool == 2
      da = -1;
      ya = ricoshet(k,xt(i),yt(i),bool);
      xa = @(p) p;
      ka = -k;
    endif
    %Логика
endfunction
