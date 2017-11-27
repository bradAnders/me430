% File:             ME 430, Computer Assignment 2
% Author:           Bradley Anderson
% Collaborators:    None
% Date Created:     Mon, Nov 27, 2017
% Last Updated:     ^^
%   Update Notes:   n/a

clear, clc

prompt = 'Please enter a value for K: ';
K=input(prompt);
clf

syms s

s = tf('s');

G1 = K*(s+5) / ( (s)*(s^2 + 4*s + 25) );

G2 = K / ( (s)*(s+3)*(s+12) );

subplot(1,2,1)
bode(G1)
grid on

subplot(1,2,2)
bode(G2)
grid on

%% Gain & Phase Margin Here