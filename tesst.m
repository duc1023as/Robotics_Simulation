hold on;
clear all;
view(-33,36);
syms x y z roll pitch yaw;
xlim([-0.38 0.38])
ylim([-0.38 0.38])
zlim([0 0.4])
xlabel('x');
ylabel('y');
zlabel('z');
Ax = [1 0 0; 0 cos(roll) -sin(roll);0 sin(roll) cos(roll)];
Ay = [cos(pitch) 0 sin(pitch); 0 1 0;-sin(pitch) 0 cos(pitch)];
Az = [cos(yaw) -sin(yaw) 0;sin(yaw) cos(yaw) 0;0 0 1];
P = [x;y;z];
Az * Ay * P;




