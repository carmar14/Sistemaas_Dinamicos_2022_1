clc
clear
close all

R=10e3;
L=5e-3;
C1=1e-6;
C2=200e-6;

h=tf(1,[R*C1*C2*L L*(C1+C2) R*C2 1]);

pzmap(h);

A=[-1/(R*C2) 1/(R*C2) 0;
    1/(R*C1) -1/(R*C1) 1/C1;
    0 -1/L 0];
B=[0 0 1/L]';
C=[1 0 0];
D=[0];

sis=ss(A,B,C,D);

step(sis,'-b')
hold on
step(h,'*r')