clc
close all
clear 

m=10;
b=4;
k=2;

h=tf(1,[m b k]);

step(-3*h);

figure
pzmap(h);
[p z]= pzmap(h);