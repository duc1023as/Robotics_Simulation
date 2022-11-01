function Link2(handles)

opa = str2num(get(handles.opacity_txt,'String'));
x = str2num(get(handles.px_cen_txt,'String'));
y= str2num(get(handles.py_cen_txt,'String'));
z= str2num(get(handles.pz_cen_txt,'String'));

pitch = str2num(get(handles.pitch_cen_txt,'String'));
yaw = str2num(get(handles.yaw_cen_txt,'String'));

%plot Link2 ||

rx_high = 0.008;
rx_low = 0.128 - 0.014*1.3;
ry = 0.01;
rz = 0.004;

P1 = [+rx_high;+ry;+rz];  % x = z
P2 = [+rx_high;+ry;-rz];
P3 = [+rx_high;-ry;-rz];
P4 = [+rx_high;-ry;+rz];
P5 = [-rx_low;+ry;+rz];
P6 = [-rx_low;+ry;-rz];
P7 = [-rx_low;-ry;-rz];
P8 = [-rx_low;-ry;+rz];

Ay = [cos(pitch) 0 sin(pitch); 0 1 0;-sin(pitch) 0 cos(pitch)];
Az = [cos(yaw) -sin(yaw) 0;sin(yaw) cos(yaw) 0;0 0 1];

P1_rotate = Az * Ay * P1;
P2_rotate = Az * Ay * P2;
P3_rotate = Az * Ay * P3;
P4_rotate = Az * Ay * P4;
P5_rotate = Az * Ay * P5;
P6_rotate = Az * Ay * P6;
P7_rotate = Az * Ay * P7;
P8_rotate = Az * Ay * P8;

%behind - front - top - bottom
fill3(handles.axes1,[x+P1_rotate(1),x+P2_rotate(1),x+P6_rotate(1),x+P5_rotate(1)],[y+P1_rotate(2), y+P2_rotate(2), y+P6_rotate(2), y+P5_rotate(2) ],[z+P1_rotate(3), z+P2_rotate(3), z+P6_rotate(3), z+P5_rotate(3)],	[1 0 0],'FaceAlpha',opa);
fill3(handles.axes1,[x+P3_rotate(1),x+P4_rotate(1),x+P8_rotate(1),x+P7_rotate(1)],[y+P3_rotate(2), y+P4_rotate(2), y+P8_rotate(2), y+P7_rotate(2) ],[z+P3_rotate(3), z+P4_rotate(3), z+P8_rotate(3), z+P7_rotate(3)],	[1 0 0],'FaceAlpha',opa);
fill3(handles.axes1,[x+P1_rotate(1),x+P2_rotate(1),x+P3_rotate(1),x+P4_rotate(1)],[y+P1_rotate(2), y+P2_rotate(2), y+P3_rotate(2), y+P4_rotate(2) ],[z+P1_rotate(3), z+P2_rotate(3), z+P3_rotate(3), z+P4_rotate(3)],	[1 0 0],'FaceAlpha',opa);
fill3(handles.axes1,[x+P5_rotate(1),x+P6_rotate(1),x+P7_rotate(1),x+P8_rotate(1)],[y+P5_rotate(2), y+P6_rotate(2), y+P7_rotate(2), y+P8_rotate(2) ],[z+P5_rotate(3), z+P6_rotate(3), z+P7_rotate(3), z+P8_rotate(3)],	[1 0 0],'FaceAlpha',opa);
fill3(handles.axes1,[x+P1_rotate(1),x+P4_rotate(1),x+P8_rotate(1),x+P5_rotate(1)],[y+P1_rotate(2), y+P4_rotate(2), y+P8_rotate(2), y+P5_rotate(2) ],[z+P1_rotate(3), z+P4_rotate(3), z+P8_rotate(3), z+P5_rotate(3)],	[1 0 0],'FaceAlpha',opa);
fill3(handles.axes1,[x+P2_rotate(1),x+P3_rotate(1),x+P7_rotate(1),x+P6_rotate(1)],[y+P2_rotate(2), y+P3_rotate(2), y+P7_rotate(2), y+P6_rotate(2) ],[z+P2_rotate(3), z+P3_rotate(3), z+P7_rotate(3), z+P6_rotate(3)],	[1 0 0],'FaceAlpha',opa);
%plot Link2  ==

rx_high_1 = 0.008;
rx_low_1 = 0.008;
ry_1 = 0.01;
rz_high_1 = 0.008; % direct to right
rz_low_1 =  -0.01;

P1_1 = [+rx_high_1;+ry_1;+rz_high_1];  % x = z
P2_1 = [+rx_high_1;+ry_1;rz_low_1];
P3_1 = [+rx_high_1;-ry_1;rz_low_1];
P4_1 = [+rx_high_1;-ry_1;+rz_high_1];
P5_1 = [-rx_low_1;+ry_1;+rz_high_1];
P6_1 = [-rx_low_1;+ry_1;rz_low_1];
P7_1 = [-rx_low_1;-ry_1;rz_low_1];
P8_1 = [-rx_low_1;-ry_1;+rz_high_1];

Ay = [cos(pitch) 0 sin(pitch); 0 1 0;-sin(pitch) 0 cos(pitch)];
Az = [cos(yaw) -sin(yaw) 0;sin(yaw) cos(yaw) 0;0 0 1];

P1_rotate_1 = Az * Ay * P1_1;
P2_rotate_1 = Az * Ay * P2_1;
P3_rotate_1 = Az * Ay * P3_1;
P4_rotate_1 = Az * Ay * P4_1;
P5_rotate_1 = Az * Ay * P5_1;
P6_rotate_1 = Az * Ay * P6_1;
P7_rotate_1 = Az * Ay * P7_1;
P8_rotate_1 = Az * Ay * P8_1;

%behind - front - top - bottom
fill3(handles.axes1,[x+P1_rotate_1(1),x+P2_rotate_1(1),x+P6_rotate_1(1),x+P5_rotate_1(1)],[y+P1_rotate_1(2), y+P2_rotate_1(2), y+P6_rotate_1(2), y+P5_rotate_1(2) ],[z+P1_rotate_1(3), z+P2_rotate_1(3), z+P6_rotate_1(3), z+P5_rotate_1(3)],[1 0 0],'FaceAlpha',opa);
fill3(handles.axes1,[x+P3_rotate_1(1),x+P4_rotate_1(1),x+P8_rotate_1(1),x+P7_rotate_1(1)],[y+P3_rotate_1(2), y+P4_rotate_1(2), y+P8_rotate_1(2), y+P7_rotate_1(2) ],[z+P3_rotate_1(3), z+P4_rotate_1(3), z+P8_rotate_1(3), z+P7_rotate_1(3)],[1 0 0],'FaceAlpha',opa);
fill3(handles.axes1,[x+P1_rotate_1(1),x+P2_rotate_1(1),x+P3_rotate_1(1),x+P4_rotate_1(1)],[y+P1_rotate_1(2), y+P2_rotate_1(2), y+P3_rotate_1(2), y+P4_rotate_1(2) ],[z+P1_rotate_1(3), z+P2_rotate_1(3), z+P3_rotate_1(3), z+P4_rotate_1(3)],[1 0 0],'FaceAlpha',opa);
fill3(handles.axes1,[x+P5_rotate_1(1),x+P6_rotate_1(1),x+P7_rotate_1(1),x+P8_rotate_1(1)],[y+P5_rotate_1(2), y+P6_rotate_1(2), y+P7_rotate_1(2), y+P8_rotate_1(2) ],[z+P5_rotate_1(3), z+P6_rotate_1(3), z+P7_rotate_1(3), z+P8_rotate_1(3)],[1 0 0],'FaceAlpha',opa);
fill3(handles.axes1,[x+P1_rotate_1(1),x+P4_rotate_1(1),x+P8_rotate_1(1),x+P5_rotate_1(1)],[y+P1_rotate_1(2), y+P4_rotate_1(2), y+P8_rotate_1(2), y+P5_rotate_1(2) ],[z+P1_rotate_1(3), z+P4_rotate_1(3), z+P8_rotate_1(3), z+P5_rotate_1(3)],[1 0 0],'FaceAlpha',opa);
fill3(handles.axes1,[x+P2_rotate_1(1),x+P3_rotate_1(1),x+P7_rotate_1(1),x+P6_rotate_1(1)],[y+P2_rotate_1(2), y+P3_rotate_1(2), y+P7_rotate_1(2), y+P6_rotate_1(2) ],[z+P2_rotate_1(3), z+P3_rotate_1(3), z+P7_rotate_1(3), z+P6_rotate_1(3)],[1 0 0],'FaceAlpha',opa);
end