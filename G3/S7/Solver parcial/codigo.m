clc
clear
close all
%---------primer punto-------
tao=1.8/4;
k=-3.1/2.7;
h=tf(k,[tao 1]);
step(-3.6*h)

%------segundo punto---------
R=20;%1e3;
L=10e-3;%10e-3;
C=4e-6;%2e-6;
%------matrices------
A=[-R/L -1/L;
   1/C 0];
B=[1/L 0]';
Cs=[0 1];
D=0;

h_ele=ss(A,B,Cs,D);
figure
step(h_ele)

%--------tercer punto-------
R1=1e3;
R2=2e3;
h_=tf([L 0],[L*C*(R1+R2) R1*R2*C+L R1]);
figure
step(h_)
