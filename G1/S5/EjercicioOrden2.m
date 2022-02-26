clc
clear
close all

R1=10e3;
R2=4e3;
C=10e-6;
L=10e-3;

A=[-R2*R1/(L*(R2+R1)) -R1/(L*(R2+R1));
   R1/(C*(R2+R1)) -1/((R2+R1)*C)];
B=[1/L 0]';
C=[0 1];
D=[0];

sis=ss(A,B,C,D)

step(sis)

figure
pzmap(sis)