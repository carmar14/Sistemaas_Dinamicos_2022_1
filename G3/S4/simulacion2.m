clc
clear
close all

h=tf(1,[1 4 19 49 144]);


figure
pzmap(h)

A=[0 1 0 0;
   0 0 1 0;
   0 0 0 1;
   -144 -49 -19 -4];
B=[0 0 0 1]';
C=[1 0 0 0];
D=0;
h2=ss(A,B,C,D);
figure
step(h,'--k')
hold on
step(h2,'.r')

figure
pzmap(h2)

eig(A);


[As Bs Cs Ds]=tf2ss(1,[1 4 19 49 144]);

h3=ss(As,Bs,Cs,Ds);
figure
step(h,'--k')
hold on
step(h2,'.r')
step(h3,'*b')

[num den]=ss2tf(A,B,C,D);
h4=tf(num,den)

[num2 den2]=ss2tf(As,Bs,Cs,Ds);
h5=tf(num2,den2)
