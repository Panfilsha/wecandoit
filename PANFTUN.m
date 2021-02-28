
F=26;
A=25;
tmax=0.2;
Fd1=400;
Fd2=90;
F2=F+Fd2;
F1=Fd2-F;
T1=1/Fd1;
t1=(0:T1:tmax);
T2=1/Fd2;
t2=(0:T2:tmax);
Y1=A*cos(2*pi*F*t1);
Y2=A*cos(2*pi*F*t2);

Y3=A*cos(2*pi*F1*t1);
Y4=A*cos(2*pi*F1*t2);

Y5=A*cos(2*pi*F2*t1);
Y6=A*cos(2*pi*F2*t2);
figure

subplot(3,1,1)
plot(t1,Y1,'k')
hold on
plot(t2,Y2)
title('F')

subplot(3,1,2)
plot(t1,Y3,'g')
hold on
plot(t2,Y4)
title('Fd2+F')

subplot(3,1,3)
plot(t1,Y5,'b')
hold on
plot(t2,Y6)
title('Fd2-F')
