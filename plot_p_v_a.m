function plot_p_v_a(handles)
disp('Hi')
x_cur = str2num(get(handles.p4x_txt,'String'));
y_cur = str2num(get(handles.p4y_txt,'String'));
z_cur = str2num(get(handles.p4z_txt,'String'));
pitch_cur = str2num(get(handles.pitch4_txt,'String'));


x_next = str2num(get(handles.x_inv_txt,'String'));
y_next = str2num(get(handles.y_inv_txt,'String'));
z_next = str2num(get(handles.z_inv_txt,'String'));
pitch_next = str2num(get(handles.pitch_inv_txt,'String'))*pi/180;

Np = 50;

X = linspace(x_cur,x_next,Np);
Y = linspace(y_cur,y_next,Np);
Z = linspace(z_cur,z_next,Np);
PITCH = linspace(pitch_cur,pitch_next,Np);

pmax = sqrt((x_next-x_cur)^2 + (y_next-y_cur)^2 + (z_next-z_cur)^2);
vmax = str2num(get(handles.vmax_txt,'String'));
amax = str2num(get(handles.amax_txt,'String'));
p0 = 0;
tc = vmax/amax;
tf = ((pmax-(amax/2)*tc^2-p0)/vmax) + 1.5*tc;
v_max_update = ((2*abs(pmax-p0)/tf) +(abs(pmax-p0)/tf))/2 

% pmax = 3;
% vmax = 4;
% amax = 20;
% p0 = 0.5;
% tc = vmax/amax
% tf = ((pmax-(amax/2)*tc^2-p0)/vmax) + 1.5*tc


if( abs(vmax) <= (2*abs(pmax-p0)/tf) && abs(vmax) > (abs(pmax-p0)/tf))
    disp('Hi if')
    p_2dot =[];
    p_dot = [];
    p = [];
    time = [];
    time_cur = 0;
    N = Np;
    t = linspace(0,tf,N);
    for i = 1:N
        if(t(i) < tc)
             p_t = p0 + amax * (t(i)^2) /2;
             p_dot_t = amax*t(i);
             p_2dot_t = amax;
        elseif(t(i)>= tc && t(i)<= (tf-tc))
             p_t = p0 + vmax*(t(i)-(tc/2));
             p_dot_t = vmax;
             p_2dot_t = 0;
        elseif(t(i)> (tf-tc) && t(i)<=tf)
             p_t = pmax - amax*(t(i)-tf)^2/2;
             p_dot_t = amax*(tf-t(i));
             p_2dot_t = -amax;
        end
            %Update
        p_2dot =[p_2dot ; p_2dot_t];
        p_dot =[p_dot ; p_dot_t];
        p =[p ; p_t];
        time  = [time ; time_cur];
        time_cur = time_cur + tf/N;
        
        %dynamic Inverse
        set(handles.px_tempt_txt,'String',num2str(X(i)));
        set(handles.py_tempt_txt,'String',num2str(Y(i)));
        set(handles.pz_tempt_txt,'String',num2str(Z(i)));
        set(handles.pitch_tempt_txt,'String',num2str(PITCH(i)*180/pi));
        
        
        cla(handles.axes_p,'reset');
        grid(handles.axes_p,'on'); 
        hold(handles.axes_p,'on'); 
        xlabel(handles.axes_p,'time');
        ylabel(handles.axes_p,'p');
        plot(handles.axes_p,time,p,'r','linewidth',2);

        cla(handles.axes_v,'reset');
        grid(handles.axes_v,'on'); 
        hold(handles.axes_v,'on');
        xlabel(handles.axes_v,'time');
        ylabel(handles.axes_v,'p-dot');
        plot(handles.axes_v,time,p_dot,'r','linewidth',2);

        cla(handles.axes_a,'reset');
        grid(handles.axes_a,'on'); 
        hold(handles.axes_a,'on');
        xlabel(handles.axes_a,'time');
        ylabel(handles.axes_a,'p-2dot');
        plot(handles.axes_a,time,p_2dot,'r','linewidth',2);
        
        Inverse(handles)
        pause(tf/N);
    end
else
    
    %f = msgbox(['Please enter new velocity value',num2str(v_max_update)]);
    set(handles.vmax_txt,'string',num2str(v_max_update));
    f = msgbox('Invalid velocity, new velocity value is updated');
    %Trajectory2(handles)
end
end