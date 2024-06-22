function plot_ball(x_1,y_1,z_1,ball_size)
[x y z] = sphere;
a=[x_1 y_1 z_1 ball_size];
s1=surf(x*a(1,4)+a(1,1),y*a(1,4)+a(1,2),z*a(1,4)+a(1,3));
% hold off
end