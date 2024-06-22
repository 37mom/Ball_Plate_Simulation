clc 
clear
close all

L = [100 280 255.9 263.11];  %L1= 100, L2= 280, L= 255.9, d= 263.11
phi_init = [80; 80; 80];        %passive angles initial conditions
% theta = [54.0000; 45.0000; 63.0000];
%  for theta = 0:2:90 
%      [EE_pos,phi,points,l,alpha,beta]=Robot_Forward_Kinematics(phi_init,theta,L);
%  end

%% section 2

EE_pos = [0.0409   -0.5146  327.5020];
% points =[
%    0       -152.4196  328.2031;
%   130.7237   75.4734  342.4508;
%  -130.6010   75.4025  311.8520];
% alpha =5.9133;
% beta =-3.1042;
% alpha= -0.2644;
% beta = -6.6784;
% x= [0:10    ,  9:-1:0, -1:-1:-10,  -9:0];
% x1=[0:-1:-10 ,   -9:0 , 1:10   9:-1:0];
% x= [1:10        ,  9:-1:1          , zeros(1,11) ,   zeros(1,9)...
%     -1:-1:-10     ,  -9:-1          , zeros(1,11) ,   zeros(1,9)];
% x1=[zeros(1,10) ,   zeros(1,9)     , 1:10        ,  9:-1:1 ...
%     zeros(1,10) ,   zeros(1,9)     , 1:-1:-10        ,  -9:1];
sim('ballplate')
x=inp(:,1);
x1=inp(:,2);
 %% implemntation
while 1==1
for ii=1:length(x)
    beta= x(ii);
    alpha=x1(ii);
    [theta,phi]=Robot_Inverse_Kinematics(alpha,beta,EE_pos,L,[0 10 0]);
%     plot_ball(82,-69,331,15);
    plot_robo_1(theta,phi,L,[out(ii,1)*100,out(ii,2)*100,331],10);
end
end