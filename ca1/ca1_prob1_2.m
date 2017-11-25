% Author:   Bradley Anderson
% Date:     Oct-21 2017
% Name:     ME 430 Computer Assignment 1, Problem 1, Part 2
clear, clf, clc

numerator = 0.04;
demoninator = [1 0.02 0.04];
settleValue = 0.02;

[S, AxH] = transferFunctionPlot(numerator, demoninator, settleValue);

legend(AxH, 'Location', 'northeast')