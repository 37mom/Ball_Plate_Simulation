function EE =plot_robo_1(theta,phi ,lengths,ball_point,ball_size)
  L1 =lengths(1) ; L2=lengths(2);d=lengths(3);d=lengths(4);
  phi=phi-90 ;
%  theta(1)=90 ;theta(2)=90 ; theta(3) =90 ; L1 =50 ;
%  phi(1)=0  ;phi(2)=0  ; phi(3)=0   ; L2 =50 ;
%% Base points
x_t=[0 ,d/2 ,-d/2];
y_t=[-d/sqrt(3) ,d/(2*sqrt(3)) ,d/(2*sqrt(3))];
z_t=[0 ,0 ,0];

plot3(x_t,y_t,z_t,'.y','markersize',50); hold on
patch(x_t,y_t,z_t,'r'); hold on
plot3(sum(x_t)/3,sum(y_t)/3,sum(z_t)/3,'.k','markersize',30); hold on
%% first Links Points
x_1=[x_t(1)                           ,x_t(2)+L1*sind(theta(2))*cosd(30)  , x_t(3)-L1*sind(theta(3))*cosd(30)];
y_1=[y_t(1)-L1*sind(theta(3))         ,y_t(2)+L1*sind(theta(2))*sind(30)  , y_t(3)+L1*sind(theta(3))*sind(30)];
z_1=[z_t(1)+L1*cosd(theta(1))         ,z_t(2)+L1*cosd(theta(2))           , z_t(3)+L1*cosd(theta(3))];

plot3(x_1,y_1,z_1,'.b','markersize',50); hold on

plot3([x_t(1) x_1(1)],[y_t(1) y_1(1)],[z_t(1) z_1(1)],'k','LINEWIDTH',6);hold on
plot3([x_t(2) x_1(2)],[y_t(2) y_1(2)],[z_t(2) z_1(2)],'k','LINEWIDTH',6);hold on
plot3([x_t(3) x_1(3)],[y_t(3) y_1(3)],[z_t(3) z_1(3)],'k','LINEWIDTH',6);hold on

%% second Links points
x_2=[x_1(1)                           ,x_1(2)+L2*sind(phi(2))*cosd(30)  , x_1(3)-L2*sind(phi(3))*cosd(30)];
y_2=[y_1(1)-L2*sind(phi(3))           ,y_1(2)+L2*sind(phi(2))*sind(30)  , y_1(3)+L2*sind(phi(3))*sind(30)];
z_2=[z_1(1)+L2*cosd(phi(1))           ,z_1(2)+L2*cosd(phi(2))           , z_1(3)+L2*cosd(phi(3))];

plot3(x_2,y_2,z_2,'.b','markersize',50); hold on

plot3([x_1(1) x_2(1)],[y_1(1) y_2(1)],[z_1(1) z_2(1)],'k','LINEWIDTH',6);hold on
plot3([x_1(2) x_2(2)],[y_1(2) y_2(2)],[z_1(2) z_2(2)],'k','LINEWIDTH',6);hold on
plot3([x_1(3) x_2(3)],[y_1(3) y_2(3)],[z_1(3) z_2(3)],'k','LINEWIDTH',6);hold on

plot3(sum(x_2)/3,sum(y_2)/3,sum(z_2)/3,'.k','markersize',30); hold on
patch(x_2,y_2,z_2,'r'); hold on
plot_line([x_2(1) y_2(1) z_2(1)],[x_2(2) y_2(2) z_2(2)],[x_2(3) y_2(3) z_2(3)]);

%% plot sphere
% plot_ball(2,2,331,15);
 plot_ball(ball_point(1),ball_point(2),ball_point(3),ball_size);
%% extra
xlabel('x');
ylabel('y');
zlabel('z');
axis([-250 230 -250 150 -100 400]);
grid minor
view([150,35]);
pause(0.01);
hold off
% EE =[sum(x_2)/3,sum(y_2)/3,sum(z_2)/3];
X1 = [x_2(1) y_2(1) z_2(1) ;x_2(3) y_2(3) z_2(3)] ;
X2 = [x_2(3) y_2(3) z_2(3) ;x_2(2) y_2(2) z_2(2)] ;
X3 = [x_2(1) y_2(1) z_2(1) ;x_2(2) y_2(2) z_2(2)] ;
x12=pdist(X1,'euclidean');
x13=pdist(X2,'euclidean');
x23=pdist(X3,'euclidean');
XX=[x12 x13 x23];

alpha = asind((((z_2(3)+z_2(2))/2)-z_2(1))/(d*sqrt(3)/2));
beta  = asind((z_2(3)-z_2(2))/d);
disp(alpha);
disp(beta);
plot_ball(ball_point(1),ball_point(2),ball_point(3),ball_size);
% x_3=[x_2(2),x_2(2) , x_2(3), x_2(1)-d*cosd(beta)/2];
% y_3=[y_2(1),y_2(2)+(d-sqrt(3)*d/2)*cosd(alpha) , y_2(2)+(d-sqrt(3)*d/2)*cosd(alpha),y_2(1) ];
% z_3=[(z_2(1)+d*(sind(beta))/2) ,(z_2(1)-d*(sind(beta))/2+(2*cosd(alpha)/sqrt(3)) ),(z_2(1)-d*(sind(beta))/2+(2*cosd(alpha)/sqrt(3))),( z_2(1)+d*(sind(beta))/2)];
% patch(x_3,y_3,z_3,'r');
% disp(x_3);
% disp(y_3);
% disp(z_3);
%  disp(XX);

% x1 = 0;
% x2 = EE(1) + d*cosd(beta)/2;
% x3 = EE(1) - d*cosd(beta)/2;
% y1 = EE(2) - d*cosd(alpha)/sqrt(3);
% y2 = -y1/2 + 3*EE(2)/2; %equals y3
% y3 = y2;
% z1 = EE(3) + d*(sind(beta)+sind(alpha)/sqrt(3))/2;
% z2 = EE(3)+ d*(-sind(beta)+sind(alpha)/sqrt(3))/2;
% z3 = EE(3) - d*sind(alpha)/sqrt(3);

% point_1=[x1 y1 z1];
% point_2=[x2 y2 z2];
% point_3=[x3 y3 z3];
% 
% disp(point_1);
% disp(point_2);
% disp(point_3);
end