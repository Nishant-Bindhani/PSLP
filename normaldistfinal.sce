clear; disp("Nipun Baryah\\ Class:IT-B \\ Roll Number:74")
x = [462, 480, 498, 516, 534, 552, 570, 588, 606, 624];
f = [98, 75, 56, 42, 30, 21, 15, 11, 6, 2];
xf = x .* f;
xx = x .* x;
xxf = xx .* f;
mu = sum(xf) / sum(f);
sigma = sqrt((sum(xxf) / sum(f)) - mu^2);
mprintf("Mean is equal to %f \n", mu)
mprintf("Standard deviation is equal to %f ", sigma)
//random_numbers = rand(1, 1000, "normal") * sigma + mu;
x = linspace(300,700, 100);
pdf = exp(-(x - mu).^2 / (2 * sigma^2)) / (sigma * sqrt(2 * %pi));
plot(x, pdf);
xlabel("x");
ylabel("PDF");
title("Normal Distribution - Probability Density Function");
