function [boolean,d] = contition (x0, y0,bot,left,top,right,R,d)
  cof = 2.1;
  boolean = 0;
  if x0 + cof*R >= right
    boolean = 3;
    boolean = 3
    d = -1;
  endif
  if x0 - cof*R <= left
    boolean = 4;
    boolean = 4
    d = 1;
  endif
  if y0 + cof*R >= top
    boolean = 1
  endif
  if y0 - cof*R <= bot
    boolean = 2;
  endif
endfunction
