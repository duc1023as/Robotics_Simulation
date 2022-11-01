function plot_Openmanipulator_X(handles)
%get values
d1 = 0.077;
a2 = 0.13;
a3 = 0.124;
a4 = 0.126;
alpha1 = pi/2;
phi = atan2(0.128,0.024);
theta1 = str2num(get(handles.theta1_txt,'String'))*pi/180;
theta2 = str2num(get(handles.theta2_txt,'String'))*pi/180;
theta3 = str2num(get(handles.theta3_txt,'String'))*pi/180;
theta4 = str2num(get(handles.theta4_txt,'String'))*pi/180;

%Transformation Matrices
A01 = [
cos(theta1) 0 sin(theta1) 0;
sin(theta1) 0 -cos(theta1) 0;
0 1 0 d1;
0 0 0 1;
];
A12 = [
cos(theta2+phi) -sin(theta2+phi) 0 a2*cos(theta2+phi);
sin(theta2+phi) cos(theta2+phi) 0 a2*sin(theta2+phi);
0 0 1 0;
0 0 0 1;
];
A23 = [
cos(theta3-phi) -sin(theta3-phi) 0 a3*cos(theta3-phi);
sin(theta3-phi) cos(theta3-phi) 0 a3*sin(theta3-phi);
0 0 1 0;
0 0 0 1;
];
A34 = [
cos(theta4) -sin(theta4) 0 a4*cos(theta4);
sin(theta4) cos(theta4) 0 a4*sin(theta4);
0 0 1 0;
0 0 0 1;
];

A_center = [
cos(theta2+pi/2) -sin(theta2+pi/2) 0 0.128*cos(theta2+pi/2);
sin(theta2+pi/2) cos(theta2+pi/2) 0 0.128*sin(theta2+pi/2);
0 0 1 0;
0 0 0 1;
];


disp('*******************************')
disp('Display Transformation Matrices')

A01
T0_center = A01 * A_center
T02 = A01 * A12
T03 = A01 * A12 * A23
T04 = A01 *A12 *A23 *A34

disp('Stop displaying')

%Postion and Orientation

%Position
P0 = [0 ; 0 ; 0];
P1 = Position(A01,P0);
P2 = Position(T02,P0);
P3 = Position(T03,P0);
P4 = Position(T04,P0);
P_center = Position(T0_center,P0);

%Orientation
O1 = Orientation(A01);
O2 = Orientation(T02);
O3 = Orientation(T03);
O4 = Orientation(T04);
O_center = Orientation(T0_center);


%Update Position and Orientation

%Center point
set(handles.px_cen_txt,'String',num2str(round(P_center(1,1),4)));
set(handles.py_cen_txt,'String',num2str(round(P_center(2,1),4)));
set(handles.pz_cen_txt,'String',num2str(round(P_center(3,1),4)));
set(handles.roll_cen_txt,'String',num2str(O_center(1,1)));
set(handles.pitch_cen_txt,'String',num2str(O_center(1,2)));
set(handles.yaw_cen_txt,'String',num2str(O_center(1,3)));

%Joint 2
set(handles.p1x_txt,'String',num2str(round(P1(1,1),4)));
set(handles.p1y_txt,'String',num2str(round(P1(2,1),4)));
set(handles.p1z_txt,'String',num2str(round(P1(3,1),4)));
%set(handles.roll1_txt,'String',num2str(round(O1(1,1)*180/pi,4)));
%set(handles.pitch1_txt,'String',num2str(round(O1(1,2)*180/pi,4)));
%set(handles.yaw1_txt,'String',num2str(round(O1(1,3)*180/pi,4)));
set(handles.roll1_txt,'String',num2str(O1(1,1)));
set(handles.pitch1_txt,'String',num2str(O1(1,2)));
set(handles.yaw1_txt,'String',num2str(O1(1,3)));

%Joint 3
set(handles.p2x_txt,'String',num2str(round(P2(1,1),4)));
set(handles.p2y_txt,'String',num2str(round(P2(2,1),4)));
set(handles.p2z_txt,'String',num2str(round(P2(3,1),4)));
%set(handles.roll2_txt,'String',num2str(round(O2(1,1)*180/pi,4)));
%set(handles.pitch2_txt,'String',num2str(round(O2(1,2)*180/pi,4)));
%set(handles.yaw2_txt,'String',num2str(round(O2(1,3)*180/pi,4)));
set(handles.roll2_txt,'String',num2str(O2(1,1)));
set(handles.pitch2_txt,'String',num2str(O2(1,2)));
set(handles.yaw2_txt,'String',num2str(O2(1,3)));

%Joint 4
set(handles.p3x_txt,'String',num2str(round(P3(1,1),4)));
set(handles.p3y_txt,'String',num2str(round(P3(2,1),4)));
set(handles.p3z_txt,'String',num2str(round(P3(3,1),4)));
%set(handles.roll3_txt,'String',num2str(round(O3(1,1)*180/pi,4)));
%set(handles.pitch3_txt,'String',num2str(round(O3(1,2)*180/pi,4)));
%set(handles.yaw3_txt,'String',num2str(round(O3(1,3)*180/pi,4)));
set(handles.roll3_txt,'String',num2str(O3(1,1)));
set(handles.pitch3_txt,'String',num2str(O3(1,2)));
set(handles.yaw3_txt,'String',num2str(O3(1,3)));

%EndEffector
set(handles.p4x_txt,'String',num2str(round(P4(1,1),4)));
set(handles.p4y_txt,'String',num2str(round(P4(2,1),4)));
set(handles.p4z_txt,'String',num2str(round(P4(3,1),4)));
set(handles.roll4_txt_disp,'String',num2str(round(O4(1,1)*180/pi,4)));
set(handles.pitch4_txt_disp,'String',num2str(round(O4(1,2)*180/pi,4)));
set(handles.yaw4_txt_disp,'String',num2str(round(O4(1,3)*180/pi,4)));
set(handles.roll4_txt,'String',num2str(O4(1,1)));
set(handles.pitch4_txt,'String',num2str(O4(1,2)));
set(handles.yaw4_txt,'String',num2str(O4(1,3)));

%Setting Axes1
cla(handles.axes1,'reset');
hold(handles.axes1,'on');
grid(handles.axes1,'on');

xlabel(handles.axes1,'x');
ylabel(handles.axes1,'y');
zlabel(handles.axes1,'z');

xlim(handles.axes1,[-0.38 0.38])
ylim(handles.axes1,[-0.38 0.38])
zlim(handles.axes1,[0 0.4])
view(handles.axes1,-20,12);


%Axes1
%Coordinate

%Joint1 - Base
if handles.Coor0_checkbox0.Value
hold on
line(handles.axes1,[P0(1,1) P0(1,1)+0.024*2],[P0(2,1) P0(2,1)],[P0(3,1) P0(3,1)],'linewidth',1.5,'color', 'red')
text(handles.axes1,P0(1,1)+0.024*2,P0(2,1),P0(3,1),('x0'))

line(handles.axes1,[P0(1,1) P0(1,1)],[P0(2,1) P0(2,1)+0.024*2],[P0(3,1) P0(3,1)],'linewidth',1.5,'color', 'green')
text(handles.axes1,P0(1,1),P0(2,1)+0.024*2,P0(3,1),('y0'))

line(handles.axes1,[P0(1,1) P0(1,1)],[P0(2,1) P0(2,1)],[P0(3,1) P0(3,1)+0.024*2],'linewidth',1.5,'color', 'blue')
text(handles.axes1,P0(1,1),P0(2,1),P0(3,1)+0.024*2,('z0'))
end

%Joint 2 
if handles.Coor1_checkbox1.Value
hold on
line(handles.axes1,[P1(1,1) P1(1,1)+0.024*2],[P1(2,1) P1(2,1)],[P1(3,1) P1(3,1)],'linewidth',1.5,'color', 'red')
text(handles.axes1,P1(1,1)+0.024*2,P1(2,1),P1(3,1),('x1'))

line(handles.axes1,[P1(1,1) P1(1,1)],[P1(2,1) P1(2,1)-0.024*2],[P1(3,1) P1(3,1)],'linewidth',1.5,'color', 'blue')
text(handles.axes1,P1(1,1),P1(2,1)-0.024*2,P1(3,1),('z1'))

line(handles.axes1,[P1(1,1) P1(1,1)],[P1(2,1) P1(2,1)],[P1(3,1) P1(3,1)+0.024*2],'linewidth',1.5,'color', 'green')
text(handles.axes1,P1(1,1),P1(2,1),P1(3,1)+0.024*2,('y1'))
end

%Joint 3
if handles.Coor2_checkbox2.Value
hold on
line(handles.axes1,[P2(1,1) P2(1,1)+cos(phi)*(0.024*2)],[P2(2,1) P2(2,1)],[P2(3,1) P2(3,1)+sin(phi)*(0.024*2)],'linewidth',1.5,'color', 'red')
text(handles.axes1,P2(1,1)+cos(phi)*(0.024*2),P2(2,1),P2(3,1)+sin(phi)*(0.024*2),('x2'))

line(handles.axes1,[P2(1,1) P2(1,1)],[P2(2,1) P2(2,1)-0.024*2],[P2(3,1) P2(3,1)],'linewidth',1.5,'color', 'blue')
text(handles.axes1,P2(1,1),P2(2,1)-0.024*2,P2(3,1),('z2'))

line(handles.axes1,[P2(1,1) P2(1,1)-sin(phi)*(0.024*2)],[P2(2,1) P2(2,1)],[P2(3,1) P2(3,1)+cos(phi)*(0.024*2)],'linewidth',1.5,'color', 'green')
text(handles.axes1,P2(1,1)-sin(phi)*(0.024*2),P2(2,1),P2(3,1)+cos(phi)*(0.024*2),('y2'))
end

%Joint 4
if handles.Coor3_checkbox3.Value
hold on
line(handles.axes1,[P3(1,1) P3(1,1)+0.024*2],[P3(2,1) P3(2,1)],[P3(3,1) P3(3,1)],'linewidth',1.5,'color', 'red')
text(handles.axes1,P3(1,1)+0.024*2,P3(2,1),P3(3,1),('x3'))
 
line(handles.axes1,[P3(1,1) P3(1,1)],[P3(2,1) P3(2,1)-0.024*2],[P3(3,1) P3(3,1)],'linewidth',1.5,'color', 'blue')
text(handles.axes1,P3(1,1),P3(2,1)-0.024*2,P3(3,1),('z3'))
 
line(handles.axes1,[P3(1,1) P3(1,1)],[P3(2,1) P3(2,1)],[P3(3,1) P3(3,1)+0.024*2],'linewidth',1.5,'color', 'green')
text(handles.axes1,P3(1,1),P3(2,1),P3(3,1)+0.024*2,('y3'))
end

%End Effector
if handles.Coor4_checkbox4.Value
hold on
line(handles.axes1,[P4(1,1) P4(1,1)+0.024*2],[P4(2,1) P4(2,1)],[P4(3,1) P4(3,1)],'linewidth',1.5,'color', 'red')
text(handles.axes1,P4(1,1)+0.024*2,P4(2,1),P4(3,1),('x4'))
 
line(handles.axes1,[P4(1,1) P4(1,1)],[P4(2,1) P4(2,1)-0.024*2],[P4(3,1) P4(3,1)],'linewidth',1.5,'color', 'blue')
text(handles.axes1,P4(1,1),P4(2,1)-0.024*2,P4(3,1),('z4'))
 
line(handles.axes1,[P4(1,1) P4(1,1)],[P4(2,1) P4(2,1)],[P4(3,1) P4(3,1)+0.024*2],'linewidth',1.5,'color', 'green')
text(handles.axes1,P4(1,1),P4(2,1),P4(3,1)+0.024*2,('y4'))
end


%plot Link
line(handles.axes1,[P0(1,1) P1(1,1)],[P0(2,1) P1(2,1)],[P0(3,1) P1(3,1)],'linewidth',1.75,'color', 'magenta','LineStyle','--')
line(handles.axes1,[P1(1,1) P_center(1,1)],[P1(2,1) P_center(2,1)],[P1(3,1) P_center(3,1)],'linewidth',1.75,'color', 'magenta','LineStyle','--')
line(handles.axes1,[P_center(1,1) P2(1,1)],[P_center(2,1) P2(2,1)],[P_center(3,1) P2(3,1)],'linewidth',1.75,'color', 'magenta','LineStyle','--')
line(handles.axes1,[P2(1,1) P3(1,1)],[P2(2,1) P3(2,1)],[P2(3,1) P3(3,1)],'linewidth',1.75,'color', 'magenta','LineStyle','--')
line(handles.axes1,[P3(1,1) P4(1,1)],[P3(2,1) P4(2,1)],[P3(3,1) P4(3,1)],'linewidth',1.75,'color', 'magenta','LineStyle','--')

%plot Joint1-Base
plot_Joint1(handles);

%plot Joint2
plot_Joint2(handles);

%plot_link2
Link2(handles);

%plot_link3
Link3(handles);

%plot_link4
Link4(handles);

%plot Joint3
plot_Joint3(handles);

%plot Joint4
plot_Joint4(handles);

%plot Joint5
plot_Joint5(handles);

end