
r=1; l=40; x1=0 ; y1=5 ;
alpha = 89 ;
beta = 89 ;
x2=x1+l*cosd(alpha);
y2=y1+l*sind(alpha);
x3=x2+l*sind(beta);
y3=y1+l*cosd(beta);
for ii=0:40
%    x2=x1+l*cosd(alpha);
%    y2=y1+l*sind(alpha);
   x_c=ii*(cosd(alpha) ;
   y_c=(((y2-y1)/(x2-x1))*x_c + y1 +();
%    surf(X+ii*cosd(alpha), Y+y_c, Z+0)
   plot_ball(x_c,y_c,0,5);
   hold on
   plot3([x1 x2 x3],[y1 y2 y3],[0 0 0]);
   
   axis([-50 50 -50 50 -50 50]);
   xlabel('x');
   ylabel('y');
   zlabel('z');
   pause(.2);
   hold off

end