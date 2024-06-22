for xx=1:0.5:90
plot_ball(xx,xx*sin(15),5,5);
axis([-50 50 -50 50 -50 50]);
xlabel('x');
ylabel('y');
zlabel('z');
pause(0.1)
end