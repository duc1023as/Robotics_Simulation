function plot_Joint1(handles)
hold on;
opa = str2num(get(handles.opacity_txt,'String'));
x = 0;
y = 0;
h_base = 0.0257; % 1/3 * 0.077
theta_base = 0:pi/100:2*pi;
r = 0.024*4;
a = r*cos(theta_base);
b = r*sin(theta_base);
surf(handles.axes1,[a;a]+x,[b;b]+y,[ones(1,size(theta_base,2))*0;ones(1,size(theta_base,2))*h_base],'FaceColor',[0.3010 0.7450 0.9330],'FaceAlpha',opa,'EdgeColor','none');
fill3(handles.axes1,a , b , 0*ones(1,size(theta_base,2)) ,[0.3010 0.7450 0.9330],'FaceAlpha',opa);
fill3(handles.axes1,a , b , h_base*ones(1,size(theta_base,2)) ,[0.3010 0.7450 0.9330],'FaceAlpha',opa);
end