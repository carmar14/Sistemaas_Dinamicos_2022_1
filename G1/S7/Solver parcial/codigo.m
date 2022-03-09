clc
clear
close all
%---------primer punto-------
tao=1.8/4;
k=-3.1/2.7;
h=tf(k,[tao 1]);
step(-3.6*h)
figure


%------segundo punto---------
R=20;%1e3;
L=10;%10e-3;
C=4e-3;%2e-6;
%------matrices------
A=[0 1/L;
   -1/C -1/(R*C)];
B=[0 1/C]';
Cs=[1 0];
D=0;

h_ele=ss(A,B,Cs,D);
figure
step(h_ele)

%--------tercer punto-------
R1=10e3;
R2=20e3;
h_=tf(R2,[L*C*(R1+R2) R1*R2*C R1+R2]);
figure
step(h_)
