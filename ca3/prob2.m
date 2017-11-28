% File:             ME 430, Computer Assignment 2, Problem 2
% Author:           Bradley Anderson
% Collaborators:    None
% Date Created:     Mon, Nov 27, 2017
% Last Updated:     ^^
%   Update Notes:   User prompt is commented out to handle
%                   publshing

clear, clc

%prompt = 'Please enter a value for K: ';
%K=input(prompt);
K = 40;
clf

syms s

s = tf('s');

G1 = K*(s+5) / ( (s)*(s^2 + 4*s + 25) );

G2 = K / ( (s)*(s+3)*(s+12) );

subplot(1,2,1)
bode(G1)
margin(G1)
%[Gm1,Pm1,Wgm1,Wpm1] = margin(G1)
grid on

subplot(1,2,2)
bode(G2)
margin(G2)
%[Gm2,Pm2,Wgm2,Wpm2] = margin(G2)
grid on
