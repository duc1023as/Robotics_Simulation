function plot_p_v_a(handles)
disp('Hi')

d1 = 0.077;
a2 = 0.13;
a3 = 0.124;
a4 = 0.126;
alpha1 = pi/2;
phi = atan2(0.128,0.024);

x_cur = str2num(get(handles.p4x_txt,'String'));
y_cur = str2num(get(handles.p4y_txt,'String'));
z_cur = str2num(get(handles.p4z_txt,'String'));
pitch_cur = str2num(get(handles.pitch4_txt,'String'));


x_next = str2num(get(handles.x_inv_txt,'String'));
y_next = str2num(get(handles.y_inv_txt,'String'));
z_next = str2num(get(handles.z_inv_txt,'String'));
pitch_next = str2num(get(handles.pitch_inv_txt,'String'))*pi/180;

Np = 60;

X = linspace(x_cur,x_next,Np);
Y = linspace(y_cur,y_next,Np);
Z = linspace(z_cur,z_next,Np);
PITCH = linspace(pitch_cur,pitch_next,Np);

pmax = sqrt((x_next-x_cur)^2 + (y_next-y_cur)^2 + (z_next-z_cur)^2);
vmax = str2num(get(handles.vmax_txt,'String'));
amax = str2num(get(handles.amax_txt,'String'));
p0 = 0;
t1 = vmax/amax;
t2 = ((pmax-(amax/2)*t1^2-p0)/vmax) + 1.5*t1;
%v_max_update = ((2*abs(pmax-p0)/t2) +(abs(pmax-p0)/t2))/2 
v_max_update = 2*abs(pmax-p0)/t2

if( abs(vmax) <= (2*abs(pmax-p0)/t2) && abs(vmax) > (abs(pmax-p0)/t2))
    disp('Hi if')
    a =[];
    v = [];
    p = [];
    time = [];
    
    theta1=[];
    theta2=[];
    theta3=[];
    theta4=[];
    
    theta1_dot=[];
    theta2_dot=[];
    theta3_dot=[];
    theta4_dot=[];
    
    time_cur = 0;
    N = Np;
    t = linspace(0,t2,N);
    for i = 1:N
        if(t(i) >= 0 && t(i) < t1)
             p_t = p0 + amax * (t(i)^2) /2;
             v_t = amax*t(i);
             a_t = amax;
        elseif(t(i)>= t1 && t(i)<= (t2-t1))
             p_t = p0 + vmax*(t(i)-(t1/2));
             v_t = vmax;
             a_t = 0;
        elseif(t(i)> (t2-t1) && t(i)<=t2)
             p_t = pmax - amax*(t(i)-t2)^2/2;
             v_t = amax*(t2-t(i));
             a_t = -amax;
        end
        
        %dynamic Inverse
        set(handles.px_tempt_txt,'String',num2str(X(i)));
        set(handles.py_tempt_txt,'String',num2str(Y(i)));
        set(handles.pz_tempt_txt,'String',num2str(Z(i)));
        set(handles.pitch_tempt_txt,'String',num2str(PITCH(i)*180/pi));
        
        %Inverse
        Inverse(handles);
        
        theta1_J = str2num(get(handles.theta1_txt,'String'))*pi/180;
        theta2_J = str2num(get(handles.theta2_txt,'String'))*pi/180;
        theta3_J = str2num(get(handles.theta3_txt,'String'))*pi/180;
        theta4_J = str2num(get(handles.theta4_txt,'String'))*pi/180;
          
        theta1_t = str2num(get(handles.theta1_txt,'String'));
        theta2_t = str2num(get(handles.theta2_txt,'String'));
        theta3_t = str2num(get(handles.theta3_txt,'String'));
        theta4_t = str2num(get(handles.theta4_txt,'String'));

Jacobian =[ 0, -sin(theta1_J)*(a2*sin(phi + theta2_J) + a3*sin(theta2_J + theta3_J) + a4*sin(theta2_J + theta3_J + theta4_J)), -sin(theta1_J)*(a3*sin(theta2_J + theta3_J) + a4*sin(theta2_J + theta3_J + theta4_J)), -a4*sin(theta2_J + theta3_J + theta4_J)*sin(theta1_J);
            0,                  a2*cos(phi + theta2_J) + a3*cos(theta2_J + theta3_J) + a4*cos(theta2_J + theta3_J + theta4_J),                  a3*cos(theta2_J + theta3_J) + a4*cos(theta2_J + theta3_J + theta4_J),                a4*cos(theta2_J + theta3_J + theta4_J);
            0,                                                                                                  sin(theta1_J),                                                                         sin(theta1_J),                                         sin(theta1_J);
            1,                                                                                                              0,                                                                                     0,                                                     0];

        vx = v_t/sqrt(3);
        vy = v_t/sqrt(3);
        vz = v_t/sqrt(3);
        
        if(i == 1)
            w_pitch = 0;
%             vx = 0;
%             vy = 0;
%             vz = 0;
        else
%             vx =(X(i)-X(i-1))/ (t(i)-t(i-1));
%             vy =(Y(i)-Y(i-1))/ (t(i)-t(i-1));
%             vz =(Z(i)-Z(i-1))/ (t(i)-t(i-1));
            w_pitch =(PITCH(i)-PITCH(i-1))/ (t(i)-t(i-1));
        end
        
        Vel = [vx;vy;vz;w_pitch];
        theta_dot = Jacobian\Vel
        
        
            %Update
        a =[a ; a_t];
        v =[v ; v_t];
        p =[p ; p_t];
        time  = [time ; time_cur];
        
        theta1=[theta1;theta1_t];
        theta2=[theta2;theta2_t];
        theta3=[theta3;theta3_t];
        theta4=[theta4;theta4_t];
        
        theta1_dot=[theta1_dot;theta_dot(1)];
        theta2_dot=[theta2_dot;theta_dot(2)];
        theta3_dot=[theta3_dot;theta_dot(3)];
        theta4_dot=[theta4_dot;theta_dot(4)];
        
        time_cur = time_cur + t2/N;     
        
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
        ylabel(handles.axes_v,'v');
        plot(handles.axes_v,time,v,'r','linewidth',2);

        cla(handles.axes_a,'reset');
        grid(handles.axes_a,'on'); 
        hold(handles.axes_a,'on');
        xlabel(handles.axes_a,'time');
        ylabel(handles.axes_a,'a');
        plot(handles.axes_a,time,a,'r','linewidth',2);
        
        cla(handles.axes_theta1,'reset');
        grid(handles.axes_theta1,'on'); 
        hold(handles.axes_theta1,'on');
        xlabel(handles.axes_theta1,'time');
        ylabel(handles.axes_theta1,'theta1');
        plot(handles.axes_theta1,time,theta1,'r','linewidth',2);
        
        
        cla(handles.axes_theta2,'reset');
        grid(handles.axes_theta2,'on'); 
        hold(handles.axes_theta2,'on');
        xlabel(handles.axes_theta2,'time');
        ylabel(handles.axes_theta2,'theta2');
        plot(handles.axes_theta2,time,theta2,'r','linewidth',2);
        
        cla(handles.axes_theta3,'reset');
        grid(handles.axes_theta3,'on'); 
        hold(handles.axes_theta3,'on');
        xlabel(handles.axes_theta3,'time');
        ylabel(handles.axes_theta3,'theta3');
        plot(handles.axes_theta3,time,theta3,'r','linewidth',2);
        
        
        cla(handles.axes_theta4,'reset');
        grid(handles.axes_theta4,'on'); 
        hold(handles.axes_theta4,'on');
        xlabel(handles.axes_theta4,'time');
        ylabel(handles.axes_theta4,'theta4');
        plot(handles.axes_theta4,time,theta4,'r','linewidth',2);
        
        cla(handles.axes_theta1_dot,'reset');
        grid(handles.axes_theta1_dot,'on'); 
        hold(handles.axes_theta1_dot,'on');
        xlabel(handles.axes_theta1_dot,'time');
        ylabel(handles.axes_theta1_dot,'theta1-dot');
        plot(handles.axes_theta1_dot,time,round(theta1_dot,3),'r','linewidth',2);
        
        cla(handles.axes_theta2_dot,'reset');
        grid(handles.axes_theta2_dot,'on'); 
        hold(handles.axes_theta2_dot,'on');
        xlabel(handles.axes_theta2_dot,'time');
        ylabel(handles.axes_theta2_dot,'theta2-dot');
        plot(handles.axes_theta2_dot,time,theta2_dot,'r','linewidth',2);
        
        cla(handles.axes_theta3_dot,'reset');
        grid(handles.axes_theta3_dot,'on'); 
        hold(handles.axes_theta3_dot,'on');
        xlabel(handles.axes_theta3_dot,'time');
        ylabel(handles.axes_theta3_dot,'theta3-dot');
        plot(handles.axes_theta3_dot,time,theta3_dot,'r','linewidth',2);
        
        cla(handles.axes_theta4_dot,'reset');
        grid(handles.axes_theta4_dot,'on'); 
        hold(handles.axes_theta4_dot,'on');
        xlabel(handles.axes_theta4_dot,'time');
        ylabel(handles.axes_theta4_dot,'theta4-dot');
        plot(handles.axes_theta4_dot,time,theta4_dot,'r','linewidth',2);

        pause(t2/N);
    end
else
    
    %f = msgbox(['Please enter new velocity value',num2str(v_max_update)]);
    set(handles.vmax_txt,'string',num2str(v_max_update));
    f = msgbox('Invalid velocity, new velocity value is updated');
    %Trajectory2(handles)
end
end