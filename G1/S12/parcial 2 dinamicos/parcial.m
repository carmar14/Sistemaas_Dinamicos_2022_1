clc
clear
close all

%------------punto 1---------

%---------parametros----

Ra=1;
Da=1;
Kb=1;
Kt=1;
Ja=1;
J=1;
R=2;
fv=1;
N1=10;
N2=20;

i=1; %selección de caso para el if
if i==1
    %----ejemplo con SO% y un Ts en particular----
    SO=15;
    Ts=15;
    %-------se despejan apropiadamente las ecuaciones del SO% y del tiempo de
    %estabilización y se encuentra zeta y omega_n para el caso------------
    u=SO/100;
    u=(log(u))^2;
    e=sqrt(u/(pi^2+u)); %0.2
    wn=4/(Ts*e); %1
    
    %encontrando los parametros de M y K
    M=(6/(e*wn)-5)/4
    K=(5+4*M)*wn^2
else
    %----ejemplo con un Ts en particular----
    Ts=150; %Ts=4tao ---- tao dominante---
    tao1=Ts/4;  %dará el polo dominante
    tao2= tao1/100; % dará el polo despreciable
    %variables a usar cuando se conecta en cascada los dos sistemas de
    %primer orden
    a1= (tao2+tao1)/(tao1*tao2);
    a2= 1/(tao1*tao2);
    %encontrando los parametros de M y K
    M=(12/a1-5)/4
    K=a2*(5+4*M)
end


h=tf(Kt*R/Ra*(N2/N1), [J+Ja*(N2/N1)^2+M*R^2 fv*R^2+Da*(N2/N1)^2+Kt*Kb/Ra*(N2/N1)^2 K]);

h2=tf(4,[5+4*M 12 K]);

step(h)
hold on
step(h2,'.r')



%------------punto 1---------

%------------punto 2---------
M1=2;
M2=3;
J1=0.5;
K1=1000;
R1=0.3;
R2=0.025;
K2=5000;
K3=1200;
B=4500;



%------------punto 2---------

