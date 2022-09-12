clc;
clear all ;
close all;
%EF7
hold on;
for i=1:301
    tetha(i)=180/300*(i-1);
S=85e-3;
R=1/0.318;
N=6000;
Uavg=2*S*N/60;
U1(i)=Uavg*pi/2*sind(tetha(i)).*(1+cosd(tetha(i))./sqrt(R.^2-sind(tetha(i)).^2));
%Ebturbo;
S=90.5e-3;
R=115e-3/(S/2);
N=6000;
Uavg=2*S*N/60;
U2(i)=Uavg*pi/2*sind(tetha(i)).*(1+cosd(tetha(i))./sqrt(R.^2-sind(tetha(i)).^2));
end
plot(tetha,U1,'k-','linewidth',2)
plot(tetha,U2,'b-','linewidth',2)
title('6000 RPM')
legend('EF7','EBTurbo');
xlabel('\theta','FontSize', 15)
ylabel('m/s','FontSize', 15)