clear;
x0 = 4.8; #Стартовое значение
e = 1e-10;

f = tic;#начало встроенной функции
root = fzero('f', x0)
toc(f)
s = tic;#начало нашей функции
myRoot = newton(@f, x0, e, 1)
toc(s)
[ans, i] = newtonTest(@f, x0, e, 1);
i# выводим количество итераций
axis([0 10 -10 10])
grid on;

roots([1 0 0 -1]);
