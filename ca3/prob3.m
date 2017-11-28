% File:             ME 430, Computer Assignment 2, Problem 3
% Author:           Bradley Anderson
% Collaborators:    None
% Date Created:     Mon, Nov 27, 2017
% Last Updated:     ^^
%   Update Notes:   n/a

clear, clf, clc

syms s

s = tf('s');

G = 50*(s+3)*(s+5) / ( (s)*(s+2)*(s+4)*(s+6) );

subplot(1,2,1)
bode(G)
grid on

subplot(1,2,2)
step(G/(1+G))
grid on