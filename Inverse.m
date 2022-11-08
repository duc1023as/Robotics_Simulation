function Inverse(handles)
pitch = str2num(get(handles.pitch_inv_txt,'String'))*pi/180;
px = str2num(get(handles.x_inv_txt,'String'));
py = str2num(get(handles.y_inv_txt,'String'));
pz = str2num(get(handles.z_inv_txt,'String'));

%update theta3
a2 = 0.13;
a3 = 0.124;
a4 = 0.126;
d1 = 0.077;
phi = atan2(0.128,0.024);
r4 = sqrt(px^2 + py^2);
z4 = pz-d1;
r3 = r4 - a4 *cos(-1*pitch);
z3 = z4 - a4 *sin(-1*pitch);
ts_th3 = a2^2 + a3^2 -(z3^2+r3^2);
ms_th3 = 2*a2*a3;
arccos_theta3=ts_th3/ms_th3

if(arccos_theta3<-1 || arccos_theta3 > 1)
    f = msgbox('Out of Workspace','Error','error');
else
    %theta3_new = -pi+ phi+ acos(ts_th3/ms_th3);
    theta3_new = (pi+ phi + acos(ts_th3/ms_th3))-2*pi
    
    set(handles.slider_theta3,'Value',theta3_new*180/pi);
    set(handles.theta3_txt,'String',num2str(theta3_new*180/pi));
    
    %update theta1
    theta1_new = atan2(py,px);
    set(handles.slider_theta1,'Value',theta1_new*180/pi);
    set(handles.theta1_txt,'String',num2str(theta1_new*180/pi));

    %update theta2
    % x_th2 = a3 * cos(theta3_new) + a2*cos(phi);
    % y_th2 = a3 * sin(theta3_new) + a2*sin(phi);

    x_th2 = a3 * sin(theta3_new) + a2*sin(phi);
    y_th2 = a3 * cos(theta3_new) + a2*cos(phi);
    theta2_new = atan2(z3*y_th2-r3*x_th2,z3*x_th2+r3*y_th2);
    %theta2_new = atan2(z3*x_th2-r3*y_th2,r3*x_th2+z3*y_th2);

    set(handles.slider_theta2,'Value',theta2_new*180/pi);
    set(handles.theta2_txt,'String',num2str(theta2_new*180/pi));

    %update theta4
    theta4_new =  -theta2_new- theta3_new- pitch;
    %theta4_new = -theta2_new - theta3_new - pitch;

    set(handles.slider_theta4,'Value',theta4_new*180/pi);
    set(handles.theta4_txt,'String',num2str(theta4_new*180/pi));

    plot_Openmanipulator_X(handles);
end
end