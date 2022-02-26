%Ejercicio 7 de taller de sistemas electricos
clear
clc
close all

%Parametros del sistema
R1=10;
R2=20;
C=10e-6;
L=1e-3;

%Polos y ceros
h=tf([R2*C 1],[R2*L*C+R1*L*C R1*R2*C+L R1]); %funcion de transferencia

pzmap(h)
figure
step(h)
grid on