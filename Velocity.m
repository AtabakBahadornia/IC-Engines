function [ ]=Velocity( )
clear();
N=2000; %rev/min
s = 0.080; % stroke (m)
len= 0.120; %connecting rod length (m)
R=1/(s/(2*len));
theta=0:0.1:pi; %crankangle theta vector
Uavg=2*N*s/60;
Up=Uavg*pi/2*sin(theta).*(1+cos(theta)./sqrt(R.^2 -sin(theta).^2));
%plot results
theta=theta/pi*180;
plot(theta,Up,'linewidth',2);

end