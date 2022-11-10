function plot_Joint4(handles)
opa = str2num(get(handles.opacity_txt,'String'));
x = str2num(get(handles.p3x_txt,'String'));
y= str2num(get(handles.p3y_txt,'String'));
z= str2num(get(handles.p3z_txt,'String'));

phi = atan2(0.128,0.024);
pitch = str2num(get(handles.pitch3_txt,'String'));
yaw = str2num(get(handles.yaw3_txt,'String'));

r = 0.016;

x1 =  x+0*cos(pitch)*cos(yaw) - r*sin(yaw) + 0*cos(yaw)*sin(pitch);
x2 =  x+0*cos(pitch)*cos(yaw) + r*sin(yaw) + 0*cos(yaw)*sin(pitch);
 
y1 =  y+r*cos(yaw) + 0*cos(pitch)*sin(yaw) + 0*sin(pitch)*sin(yaw);
y2 =  y-r*cos(yaw) + 0*cos(pitch)*sin(yaw) + 0*sin(pitch)*sin(yaw);
 
z1 =  z+0*cos(pitch) - 0*sin(pitch);
z2 =  z+0*cos(pitch) - 0*sin(pitch);

X1_Cy=[x1 y1 z1];
X2_Cy=[x2 y2 z2];
n=30;
closed=1;
lines=0;
[Cylinder3,EndPlate1,EndPlate2]= Cylinder(handles,X1_Cy,X2_Cy,r,n,[0 0.4470 0.7410],closed,lines,opa);

end