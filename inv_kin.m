% clear;
% clc;
function inv_kin(EE,alpha,beta)
l = 255.9;
l1 = 100;
l2 = 280;
epsi = 120;
d= 263.1100;

x_ee = EE(1) ;y_ee=EE(2); z_ee=EE(3); 
x1 = 0;
x2 = x_ee + d*cosd(beta)/2;
x3 = x_ee - d*cosd(beta)/2;
y1 = y_ee - d*cosd(alpha)/sqrt(3);
y2 = -y1/2 + 3*y_ee/2; %equals y3
y3 = y2;
z1 = z_ee + d*(sind(beta)+sind(alpha)/sqrt(3))/2;
z2 = z_ee + d*(-sind(beta)+sind(alpha)/sqrt(3))/2;
z3 = z_ee - d*sind(alpha)/sqrt(3);

theta_1_0 = 0;
theta_2_0 = 0;
theta_3_0 = 0;

max_i = 1000;
tol = 0.001;

f1 = @(theta_1)(-l/sqrt(3) - l1 * sind(theta_1) + l2 * cosd(asind((z1 - l1 * cosd(theta_1)) / l2)) - y1);
f2 = @(theta_2)(l/(2*sqrt(3)) - l1 * sind(theta_2)*cosd(epsi) + l2 * cosd(asind((z2 - l1 * cosd(theta_2))/l2)) * cosd(epsi) - y2);
f3 = @(theta_3)(l/(2*sqrt(3)) - l1 * sind(theta_3)*cosd(2*epsi) + l2 * cosd(asind((z3 - l1 * cosd(theta_3)) / l2)) * cosd(2*epsi) - y3);


theta(1) = fsolve(f1, theta_1_0);
theta(2) = fsolve(f2, theta_2_0);
theta(3) = fsolve(f3, theta_3_0);

Robot_Forward_Kinematics(theta);

end