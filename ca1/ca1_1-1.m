clear, clf, clc

numerator = [16];
demoninator = [1 3 16];

T = tf(numerator, demoninator);

step(T)