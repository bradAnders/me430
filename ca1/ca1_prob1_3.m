% Author:   Bradley Anderson
% Date:     Oct-21 2017
% Name:     ME 430 Computer Assignment 1, Problem 1, Part 3
clear, clf, clc

%Settling Time
settleValue = 0.02;

%Transfer Function Coefficients
num = [1 2.1];
dem1 = [1 2];
dem2 = [1 1 5];

Ts = series(tf(num, dem1),tf(1, dem2));

[numerator, demoninator] = tfdata(Ts);

[S, AxH] = transferFunctionPlot(numerator, demoninator, settleValue);

legend(AxH, 'Location', 'southeast')
