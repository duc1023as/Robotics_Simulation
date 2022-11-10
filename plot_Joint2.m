function plot_Joint2(handles)
%get data
opa = str2num(get(handles.opacity_txt,'String'));
x = str2num(get(handles.p1x_txt,'String'));
y = str2num(get(handles.p1y_txt,'String'));
z = str2num(get(handles.p1z_txt,'String'));
yaw = str2num(get(handles.yaw1_txt,'String'));

%plot_Link1
r = 0.014*1.4; % r - Joint 2
r1 = 0.01; % r1 - Link1
h = 0.0513;% height of Link1
h_high = 0.014*1.2;  % Base to Link 1

P1 = [+r1;+r1;-h_high ];
P2 = [+r1;+r1;-h];
P3 = [+r1;-r1;-h];
P4 = [+r1;-r1;-h_high ];
P5 = [-r1;+r1;-h_high ];
P6 = [-r1;+r1;-h];
P7 = [-r1;-r1;-h];
P8 = [-r1;-r1;-h_high ];

Az = [cos(yaw) -sin(yaw) 0;sin(yaw) cos(yaw) 0;0 0 1]; % Rotate Matrix

P1_rotate = Az * P1;
P2_rotate = Az * P2;
P3_rotate = Az * P3;
P4_rotate = Az * P4;
P5_rotate = Az * P5;
P6_rotate = Az * P6;
P7_rotate = Az * P7;
P8_rotate = Az * P8;

fill3(handles.axes1,[x+P1_rotate(1),x+P2_rotate(1),x+P6_rotate(1),x+P5_rotate(1)],[y+P1_rotate(2), y+P2_rotate(2), y+P6_rotate(2), y+P5_rotate(2) ],[z+P1_rotate(3), z+P2_rotate(3), z+P6_rotate(3), z+P5_rotate(3)],	[1 0 0],'FaceAlpha',opa);
fill3(handles.axes1,[x+P3_rotate(1),x+P4_rotate(1),x+P8_rotate(1),x+P7_rotate(1)],[y+P3_rotate(2), y+P4_rotate(2), y+P8_rotate(2), y+P7_rotate(2) ],[z+P3_rotate(3), z+P4_rotate(3), z+P8_rotate(3), z+P7_rotate(3)],	[1 0 0],'FaceAlpha',opa);
fill3(handles.axes1,[x+P5_rotate(1),x+P6_rotate(1),x+P7_rotate(1),x+P8_rotate(1)],[y+P5_rotate(2), y+P6_rotate(2), y+P7_rotate(2), y+P8_rotate(2) ],[z+P5_rotate(3), z+P6_rotate(3), z+P7_rotate(3), z+P8_rotate(3)],	[1 0 0],'FaceAlpha',opa);
fill3(handles.axes1,[x+P1_rotate(1),x+P2_rotate(1),x+P3_rotate(1),x+P4_rotate(1)],[y+P1_rotate(2), y+P2_rotate(2), y+P3_rotate(2), y+P4_rotate(2) ],[z+P1_rotate(3), z+P2_rotate(3), z+P3_rotate(3), z+P4_rotate(3)],	[1 0 0],'FaceAlpha',opa);

%plot Joint2
x1 = x+0*cos(yaw)-r*sin(yaw);
x2 = x+0*cos(yaw)+r*sin(yaw);

y1 = y+0*sin(yaw)+r*cos(yaw);
y2 = y+0*sin(yaw)-r*cos(yaw);

X1_Cy=[x1 y1 z];
X2_Cy=[x2 y2 z];
n=30;
closed=1;
lines=0;
[Cylinder1,EndPlate1,EndPlate2]= Cylinder(handles,X1_Cy,X2_Cy,r,n,[0 0.4470 0.7410],closed,lines,opa);
end