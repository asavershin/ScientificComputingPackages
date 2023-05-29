
function t0 = searchCenter (xt, yt, t0, R)

  a = xt(t0);
  b = yt(t0);

  f = @(p) norm([xt(p) - a,yt(p) - b]) - 2*R;

  t0 = fzero(f, [t0, t0 + 2*R]);

endfunction
