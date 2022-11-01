function plot_Joint5(handles)
opa = str2num(get(handles.opacity_txt,'String'));
x = str2num(get(handles.p4x_txt,'String'));
y= str2num(get(handles.p4y_txt,'String'));
z= str2num(get(handles.p4z_txt,'String'));

pitch = str2num(get(handles.pitch4_txt,'String'));
yaw = str2num(get(handles.yaw4_txt,'String'));

r = 0.016;

P1 = [+r;+r;+r];
P2 = [+r;+r;-r];
P3 = [+r;-r;-r];
P4 = [+r;-r;+r];
P5 = [-r;+r;+r];
P6 = [-r;+r;-r];
P7 = [-r;-r;-r];
P8 = [-r;-r;+r];

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

fill3(handles.axes1,[x+P1_rotate(1),x+P2_rotate(1),x+P6_rotate(1),x+P5_rotate(1)],[y+P1_rotate(2), y+P2_rotate(2), y+P6_rotate(2), y+P5_rotate(2) ],[z+P1_rotate(3), z+P2_rotate(3), z+P6_rotate(3), z+P5_rotate(3)],[0 0.4470 0.7410],'FaceAlpha',opa);
fill3(handles.axes1,[x+P3_rotate(1),x+P4_rotate(1),x+P8_rotate(1),x+P7_rotate(1)],[y+P3_rotate(2), y+P4_rotate(2), y+P8_rotate(2), y+P7_rotate(2) ],[z+P3_rotate(3), z+P4_rotate(3), z+P8_rotate(3), z+P7_rotate(3)],[0 0.4470 0.7410],'FaceAlpha',opa);
fill3(handles.axes1,[x+P5_rotate(1),x+P6_rotate(1),x+P7_rotate(1),x+P8_rotate(1)],[y+P5_rotate(2), y+P6_rotate(2), y+P7_rotate(2), y+P8_rotate(2) ],[z+P5_rotate(3), z+P6_rotate(3), z+P7_rotate(3), z+P8_rotate(3)],[0 0.4470 0.7410],'FaceAlpha',opa);

end