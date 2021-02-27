clc
close all
clear all

data = readtable('nlfit.csv');
column1 = data{:,1}';
column2 = data{:,2}';
[fit, error] = polyfit(data{:,1}, data{:,2}, 1);
fprintf("The best linear fit is %dx + %d\n", fit(1), fit(2));
subplot(2, 1, 1);
hold on
title('Linear Fit');
plot(column1, column2, 'o');
plot(0:100, polyval(fit, 0:100));
hold off
% [correlation, p_val] = corrcoef(data{:,:}) 
% Not sure how to add the correlation and the p-value aspect of the code
[logfit, error2] = polyfit(log(data{2:end, 1}), log(data{2:end,2}), 1);
fprintf('Power Law is I = e^(%d) + v^(%d)\n', logfit(2), logfit(1));
subplot(2, 1, 2);
I = exp(logfit(2)) * (0:100).^(logfit(1));
title('Log Fit');
hold on
plot(0:100, I);
plot(column1, column2, 'o');
hold off
%[correlation2, P_val2] - corrcoef(I);
% Not sure how to add the correlation and the p-value aspect of the code
