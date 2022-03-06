%Sistema de suspension vehicular simplificado
clear
close all
clc

%parametros
b=500;
k1=300;
k2=50;
m1=10;
m2=400;

%h=tf(k1*[m2 b k2 0],[m1*m2 m1*b+m2*b m1*k2+m2*k2+m2*k1 b*k1 k1*k2]);
h=tf(k1*[b k2],[m1*m2 m1*b+m2*b m1*k2+m2*k2+m2*k1 b*k1 k1*k2]);
[p z]=pzmap(h)

step(h)