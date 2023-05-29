clear;

L = 5;

func = @(t, theta) pendulum(t, theta, L, 9.8);

[t, theta] = ode45(func, 0:0.05:1000, [0, 1]);

x = [0 L*sin(theta(1,1))];
y = [0 -L*cos(theta(1,1))];
h = plot(x, y, 'o-', 'LineWidth', 2, 'MarkerSize', 10, 'MarkerFaceColor', 'r');
##line(x,y,'LineWidth',2,'Marker','o','MarkerFaceColor','r');

% Устанавливаем границы рисунка
xlim([-L-0.5 L+0.5]);
ylim([-L-0.5 L+0.5]);

% Устанавливаем заголовок
title('Движение маятника');

% Отображаем рисунок
pause(0.01);

% Перерисовываем рисунок на каждой итерации цикла
for i = 2:1000
    x = [0 L*sin(theta(i,1))];
    y = [0 -L*cos(theta(i,1))];

    set(h, 'xdata',x, 'ydata', y);

    pause(0.01); % Задержка для создания эффекта анимации
end


##plot(t, y);
hold on

legend;
