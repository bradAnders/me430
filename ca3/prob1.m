% File:             ME 430, Computer Assignment 2, Problem 1
% Author:           Bradley Anderson
% Collaborators:    None
% Date Created:     Mon, Nov 27, 2017
% Last Updated:     ^^
%   Update Notes:   n/a

clear, clf, clc

syms s

s = tf('s');

G1 = 10 / ( (s)*(s+1)*(s+2) );

G2 = (50)*(s+0.1) / ( (s)*(s+2)*(s+4) );

G3 = (s+3)*(s+5) / ( (s)*(s+2)*(s+4) );

subplot(1,3,1)
bode(G1)
grid on

subplot(1,3,2)
bode(G2)
grid on

subplot(1,3,3)
bode(G3)
grid on