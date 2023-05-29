

function [x, y] = drawcircle (a, b, R)
  % Create a vector of angles between 0 and 2*pi
  theta = linspace(0, 2*pi, 1000);

  % Compute the circle coordinates
  x = a + R*cos(theta);
  y = b + R*sin(theta);

  % Plot the circle
##  plot(x, y, 'LineWidth', 2); % plot the circle with a line width of 2
  % Set the axis limits to show the entire circle
  ##axis([a-R-1, a+R+1, b-R-1, b+R+1]);
endfunction
