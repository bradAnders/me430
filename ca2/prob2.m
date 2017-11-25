% Author:   Bradley Anderson
% Date:     Nov-11 2017
% Name:     ME 430, Computer Assignment 2, Problem 2
% Purpose:  Takes a transfer function and plots its root-locus.
%           Prompts the user to choose a value from the plot,
%           and then asks the user to choose a value of K from
%           the information learned. Plots the step response
%           with that K value.

clear, clf, clc

s = tf('s');

A = 1/(s*(s+3)*(s+7)*(s+8));
B = (s+30)/(s^2+20*s+200);

sys = A/(1+A*B);

subplot(2,2,1)
rlocus(sys)

subplot(2,2,2)
rlocus(sys)
title('Root Locus Close-Up')
hold on
axis( [-2 2  -2 2] )
sgrid(0.707,0)
rlocfind(sys)

%prompt = 'Please enter a value for K: ';
%K=input(prompt);
K = 135;
fprintf('\n')

subplot(2,1,2)
sys2 = K*A/(1+K*A*B);
step(sys2)