function reset(handles)

set(handles.theta1_txt,'String',num2str(0));
set(handles.slider_theta1,'Value',0);

set(handles.theta2_txt,'String',num2str(0));
set(handles.slider_theta2,'Value',0);

set(handles.theta3_txt,'String',num2str(0));
set(handles.slider_theta3,'Value',0);

set(handles.theta4_txt,'String',num2str(0));
set(handles.slider_theta4,'Value',0);

set(handles.opacity_txt,'String',num2str(1));
set(handles.slider_opacity,'Value',1);

plot_Openmanipulator_X(handles);

end