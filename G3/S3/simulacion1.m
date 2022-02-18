clc
clear
close all


h=tf(2,[1 3 1]);

step(45*h)

figure
pzmap(h)

[p z]=pzmap(h);
