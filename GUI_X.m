function varargout = GUI_X(varargin)
% GUI_X MATLAB code for GUI_X.fig
%      GUI_X, by itself, creates a new GUI_X or raises the existing
%      singleton*.
%
%      H = GUI_X returns the handle to a new GUI_X or the handle to
%      the existing singleton*.
%
%      GUI_X('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in GUI_X.M with the given input arguments.
%
%      GUI_X('Property','Value',...) creates a new GUI_X or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before GUI_X_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to GUI_X_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help GUI_X

% Last Modified by GUIDE v2.5 10-Nov-2022 21:21:09

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @GUI_X_OpeningFcn, ...
                   'gui_OutputFcn',  @GUI_X_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before GUI_X is made visible.
function GUI_X_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to GUI_X (see VARARGIN)

%init theta,plot OpenX
Reset_Param(handles);

% Choose default command line output for GUI_X
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);


% UIWAIT makes GUI_X wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = GUI_X_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;

% --- Executes on slider movement.
function slider_theta1_Callback(hObject, eventdata, handles)
% hObject    handle to slider_theta1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
set(handles.theta1_txt,'String',num2str(get(hObject,'Value')));
plot_Openmanipulator_X(handles);


% --- Executes during object creation, after setting all properties.
function slider_theta1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider_theta1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function slider_theta2_Callback(hObject, eventdata, handles)
% hObject    handle to slider_theta2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
set(handles.theta2_txt,'String',num2str(get(hObject,'Value')));
plot_Openmanipulator_X(handles);

% --- Executes during object creation, after setting all properties.
function slider_theta2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider_theta2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function slider_theta3_Callback(hObject, eventdata, handles)
% hObject    handle to slider_theta3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
set(handles.theta3_txt,'String',num2str(get(hObject,'Value')));
plot_Openmanipulator_X(handles);

% --- Executes during object creation, after setting all properties.
function slider_theta3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider_theta3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function slider_theta4_Callback(hObject, eventdata, handles)
% hObject    handle to slider_theta4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
set(handles.theta4_txt,'String',num2str(get(hObject,'Value')));
plot_Openmanipulator_X(handles);

% --- Executes during object creation, after setting all properties.
function slider_theta4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider_theta4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end



function theta1_txt_Callback(hObject, eventdata, handles)
% hObject    handle to theta1_txt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of theta1_txt as text
%        str2double(get(hObject,'String')) returns contents of theta1_txt as a double
% if(str2num(get(hObject,'String'))<-180 || str2num(get(hObject,'String')) >180)
%     set(handles.slider_theta1,'Value',0);
%     plot_Openmanipulator_X(handles);
% end
if(str2num(get(hObject,'String'))<-90 || str2num(get(hObject,'String'))>90)
    disp('Hi if')
    f = msgbox('Out of Workspace','Error','error');
else
    disp('Hi else')
    set(handles.slider_theta1,'Value',str2num(get(hObject,'String')));
    plot_Openmanipulator_X(handles);
end

% --- Executes during object creation, after setting all properties.
function theta1_txt_CreateFcn(hObject, eventdata, handles)
% hObject    handle to theta1_txt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function theta2_txt_Callback(hObject, eventdata, handles)
% hObject    handle to theta2_txt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of theta2_txt as text
%        str2double(get(hObject,'String')) returns contents of theta2_txt as a double
if(str2num(get(hObject,'String'))<-90|| str2num(get(hObject,'String'))>90)
    disp('Hi if')
    f = msgbox('Out of Workspace','Error','error');
else
    disp('Hi else')
    set(handles.slider_theta2,'Value',str2num(get(hObject,'String')));
    plot_Openmanipulator_X(handles);
end

% --- Executes during object creation, after setting all properties.
function theta2_txt_CreateFcn(hObject, eventdata, handles)
% hObject    handle to theta2_txt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function theta3_txt_Callback(hObject, eventdata, handles)
% hObject    handle to theta3_txt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of theta3_txt as text
%        str2double(get(hObject,'String')) returns contents of theta3_txt as a double
if(str2num(get(hObject,'String'))<-90 || str2num(get(hObject,'String'))>90)
    disp('Hi if')
    f = msgbox('Out of Workspace','Error','error');
else
    disp('Hi else')
    set(handles.slider_theta3,'Value',str2num(get(hObject,'String')));
    plot_Openmanipulator_X(handles);
end

% --- Executes during object creation, after setting all properties.
function theta3_txt_CreateFcn(hObject, eventdata, handles)
% hObject    handle to theta3_txt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function theta4_txt_Callback(hObject, eventdata, handles)
% hObject    handle to theta4_txt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of theta4_txt as text
%        str2double(get(hObject,'String')) returns contents of theta4_txt as a double

if(str2num(get(hObject,'String'))<-90 || str2num(get(hObject,'String'))>90)
    disp('Hi if')
    f = msgbox('Out of Workspace','Error','error');
else
    disp('Hi else')
    set(handles.slider_theta4,'Value',str2num(get(hObject,'String')));
    plot_Openmanipulator_X(handles);
end

% --- Executes during object creation, after setting all properties.
function theta4_txt_CreateFcn(hObject, eventdata, handles)
% hObject    handle to theta4_txt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function d1_txt_Callback(hObject, eventdata, handles)
% hObject    handle to d1_txt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of d1_txt as text
%        str2double(get(hObject,'String')) returns contents of d1_txt as a double


% --- Executes during object creation, after setting all properties.
function d1_txt_CreateFcn(hObject, eventdata, handles)
% hObject    handle to d1_txt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function a3_txt_Callback(hObject, eventdata, handles)
% hObject    handle to a3_txt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of a3_txt as text
%        str2double(get(hObject,'String')) returns contents of a3_txt as a double


% --- Executes during object creation, after setting all properties.
function a3_txt_CreateFcn(hObject, eventdata, handles)
% hObject    handle to a3_txt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function a2_txt_Callback(hObject, eventdata, handles)
% hObject    handle to a2_txt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of a2_txt as text
%        str2double(get(hObject,'String')) returns contents of a2_txt as a double


% --- Executes during object creation, after setting all properties.
function a2_txt_CreateFcn(hObject, eventdata, handles)
% hObject    handle to a2_txt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function a4_txt_Callback(hObject, eventdata, handles)
% hObject    handle to a4_txt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of a4_txt as text
%        str2double(get(hObject,'String')) returns contents of a4_txt as a double


% --- Executes during object creation, after setting all properties.
function a4_txt_CreateFcn(hObject, eventdata, handles)
% hObject    handle to a4_txt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function alpha1_txt_Callback(hObject, eventdata, handles)
% hObject    handle to alpha1_txt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of alpha1_txt as text
%        str2double(get(hObject,'String')) returns contents of alpha1_txt as a double


% --- Executes during object creation, after setting all properties.
function alpha1_txt_CreateFcn(hObject, eventdata, handles)
% hObject    handle to alpha1_txt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function test_Callback(hObject, eventdata, handles)
% hObject    handle to test (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of test as text
%        str2double(get(hObject,'String')) returns contents of test as a double


% --- Executes during object creation, after setting all properties.
function test_CreateFcn(hObject, eventdata, handles)
% hObject    handle to test (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function p1x_txt_Callback(hObject, eventdata, handles)
% hObject    handle to p1x_txt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of p1x_txt as text
%        str2double(get(hObject,'String')) returns contents of p1x_txt as a double


% --- Executes during object creation, after setting all properties.
function p1x_txt_CreateFcn(hObject, eventdata, handles)
% hObject    handle to p1x_txt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function p1y_txt_Callback(hObject, eventdata, handles)
% hObject    handle to p1y_txt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of p1y_txt as text
%        str2double(get(hObject,'String')) returns contents of p1y_txt as a double


% --- Executes during object creation, after setting all properties.
function p1y_txt_CreateFcn(hObject, eventdata, handles)
% hObject    handle to p1y_txt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function p1z_txt_Callback(hObject, eventdata, handles)
% hObject    handle to p1z_txt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of p1z_txt as text
%        str2double(get(hObject,'String')) returns contents of p1z_txt as a double


% --- Executes during object creation, after setting all properties.
function p1z_txt_CreateFcn(hObject, eventdata, handles)
% hObject    handle to p1z_txt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function p2x_txt_Callback(hObject, eventdata, handles)
% hObject    handle to p2x_txt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of p2x_txt as text
%        str2double(get(hObject,'String')) returns contents of p2x_txt as a double


% --- Executes during object creation, after setting all properties.
function p2x_txt_CreateFcn(hObject, eventdata, handles)
% hObject    handle to p2x_txt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function p2y_txt_Callback(hObject, eventdata, handles)
% hObject    handle to p2y_txt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of p2y_txt as text
%        str2double(get(hObject,'String')) returns contents of p2y_txt as a double


% --- Executes during object creation, after setting all properties.
function p2y_txt_CreateFcn(hObject, eventdata, handles)
% hObject    handle to p2y_txt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function p2z_txt_Callback(hObject, eventdata, handles)
% hObject    handle to p2z_txt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of p2z_txt as text
%        str2double(get(hObject,'String')) returns contents of p2z_txt as a double


% --- Executes during object creation, after setting all properties.
function p2z_txt_CreateFcn(hObject, eventdata, handles)
% hObject    handle to p2z_txt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function p3x_txt_Callback(hObject, eventdata, handles)
% hObject    handle to p3x_txt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of p3x_txt as text
%        str2double(get(hObject,'String')) returns contents of p3x_txt as a double


% --- Executes during object creation, after setting all properties.
function p3x_txt_CreateFcn(hObject, eventdata, handles)
% hObject    handle to p3x_txt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function p3y_txt_Callback(hObject, eventdata, handles)
% hObject    handle to p3y_txt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of p3y_txt as text
%        str2double(get(hObject,'String')) returns contents of p3y_txt as a double


% --- Executes during object creation, after setting all properties.
function p3y_txt_CreateFcn(hObject, eventdata, handles)
% hObject    handle to p3y_txt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function p3z_txt_Callback(hObject, eventdata, handles)
% hObject    handle to p3z_txt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of p3z_txt as text
%        str2double(get(hObject,'String')) returns contents of p3z_txt as a double


% --- Executes during object creation, after setting all properties.
function p3z_txt_CreateFcn(hObject, eventdata, handles)
% hObject    handle to p3z_txt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function p4x_txt_Callback(hObject, eventdata, handles)
% hObject    handle to p4x_txt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of p4x_txt as text
%        str2double(get(hObject,'String')) returns contents of p4x_txt as a double


% --- Executes during object creation, after setting all properties.
function p4x_txt_CreateFcn(hObject, eventdata, handles)
% hObject    handle to p4x_txt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function p4y_txt_Callback(hObject, eventdata, handles)
% hObject    handle to p4y_txt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of p4y_txt as text
%        str2double(get(hObject,'String')) returns contents of p4y_txt as a double


% --- Executes during object creation, after setting all properties.
function p4y_txt_CreateFcn(hObject, eventdata, handles)
% hObject    handle to p4y_txt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function p4z_txt_Callback(hObject, eventdata, handles)
% hObject    handle to p4z_txt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of p4z_txt as text
%        str2double(get(hObject,'String')) returns contents of p4z_txt as a double


% --- Executes during object creation, after setting all properties.
function p4z_txt_CreateFcn(hObject, eventdata, handles)
% hObject    handle to p4z_txt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function roll1_txt_Callback(hObject, eventdata, handles)
% hObject    handle to roll1_txt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of roll1_txt as text
%        str2double(get(hObject,'String')) returns contents of roll1_txt as a double


% --- Executes during object creation, after setting all properties.
function roll1_txt_CreateFcn(hObject, eventdata, handles)
% hObject    handle to roll1_txt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function pitch1_txt_Callback(hObject, eventdata, handles)
% hObject    handle to pitch1_txt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of pitch1_txt as text
%        str2double(get(hObject,'String')) returns contents of pitch1_txt as a double


% --- Executes during object creation, after setting all properties.
function pitch1_txt_CreateFcn(hObject, eventdata, handles)
% hObject    handle to pitch1_txt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function yaw1_txt_Callback(hObject, eventdata, handles)
% hObject    handle to yaw1_txt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of yaw1_txt as text
%        str2double(get(hObject,'String')) returns contents of yaw1_txt as a double


% --- Executes during object creation, after setting all properties.
function yaw1_txt_CreateFcn(hObject, eventdata, handles)
% hObject    handle to yaw1_txt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function roll2_txt_Callback(hObject, eventdata, handles)
% hObject    handle to roll2_txt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of roll2_txt as text
%        str2double(get(hObject,'String')) returns contents of roll2_txt as a double


% --- Executes during object creation, after setting all properties.
function roll2_txt_CreateFcn(hObject, eventdata, handles)
% hObject    handle to roll2_txt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function pitch2_txt_Callback(hObject, eventdata, handles)
% hObject    handle to pitch2_txt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of pitch2_txt as text
%        str2double(get(hObject,'String')) returns contents of pitch2_txt as a double


% --- Executes during object creation, after setting all properties.
function pitch2_txt_CreateFcn(hObject, eventdata, handles)
% hObject    handle to pitch2_txt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function yaw2_txt_Callback(hObject, eventdata, handles)
% hObject    handle to yaw2_txt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of yaw2_txt as text
%        str2double(get(hObject,'String')) returns contents of yaw2_txt as a double


% --- Executes during object creation, after setting all properties.
function yaw2_txt_CreateFcn(hObject, eventdata, handles)
% hObject    handle to yaw2_txt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function roll3_txt_Callback(hObject, eventdata, handles)
% hObject    handle to roll3_txt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of roll3_txt as text
%        str2double(get(hObject,'String')) returns contents of roll3_txt as a double


% --- Executes during object creation, after setting all properties.
function roll3_txt_CreateFcn(hObject, eventdata, handles)
% hObject    handle to roll3_txt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function pitch3_txt_Callback(hObject, eventdata, handles)
% hObject    handle to pitch3_txt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of pitch3_txt as text
%        str2double(get(hObject,'String')) returns contents of pitch3_txt as a double


% --- Executes during object creation, after setting all properties.
function pitch3_txt_CreateFcn(hObject, eventdata, handles)
% hObject    handle to pitch3_txt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function yaw3_txt_Callback(hObject, eventdata, handles)
% hObject    handle to yaw3_txt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of yaw3_txt as text
%        str2double(get(hObject,'String')) returns contents of yaw3_txt as a double


% --- Executes during object creation, after setting all properties.
function yaw3_txt_CreateFcn(hObject, eventdata, handles)
% hObject    handle to yaw3_txt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function roll4_txt_disp_Callback(hObject, eventdata, handles)
% hObject    handle to roll4_txt_disp (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of roll4_txt_disp as text
%        str2double(get(hObject,'String')) returns contents of roll4_txt_disp as a double


% --- Executes during object creation, after setting all properties.
function roll4_txt_disp_CreateFcn(hObject, eventdata, handles)
% hObject    handle to roll4_txt_disp (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function pitch4_txt_disp_Callback(hObject, eventdata, handles)
% hObject    handle to pitch4_txt_disp (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of pitch4_txt_disp as text
%        str2double(get(hObject,'String')) returns contents of pitch4_txt_disp as a double


% --- Executes during object creation, after setting all properties.
function pitch4_txt_disp_CreateFcn(hObject, eventdata, handles)
% hObject    handle to pitch4_txt_disp (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function yaw4_txt_disp_Callback(hObject, eventdata, handles)
% hObject    handle to yaw4_txt_disp (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of yaw4_txt_disp as text
%        str2double(get(hObject,'String')) returns contents of yaw4_txt_disp as a double


% --- Executes during object creation, after setting all properties.
function yaw4_txt_disp_CreateFcn(hObject, eventdata, handles)
% hObject    handle to yaw4_txt_disp (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in Coor0_checkbox0.
function Coor0_checkbox0_Callback(hObject, eventdata, handles)
% hObject    handle to Coor0_checkbox0 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of Coor0_checkbox0
plot_Openmanipulator_X(handles);


% --- Executes on button press in Coor1_checkbox1.
function Coor1_checkbox1_Callback(hObject, eventdata, handles)
% hObject    handle to Coor1_checkbox1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of Coor1_checkbox1
plot_Openmanipulator_X(handles);


% --- Executes on button press in Coor2_checkbox2.
function Coor2_checkbox2_Callback(hObject, eventdata, handles)
% hObject    handle to Coor2_checkbox2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of Coor2_checkbox2
plot_Openmanipulator_X(handles);


% --- Executes on button press in Coor3_checkbox3.
function Coor3_checkbox3_Callback(hObject, eventdata, handles)
% hObject    handle to Coor3_checkbox3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of Coor3_checkbox3
plot_Openmanipulator_X(handles);


% --- Executes on button press in Coor4_checkbox4.
function Coor4_checkbox4_Callback(hObject, eventdata, handles)
% hObject    handle to Coor4_checkbox4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of Coor4_checkbox4
plot_Openmanipulator_X(handles);


% --- Executes on slider movement.
function slider_opacity_Callback(hObject, eventdata, handles)
% hObject    handle to slider_opacity (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
set(handles.opacity_txt,'String',num2str(get(hObject,'Value')));
plot_Openmanipulator_X(handles);


% --- Executes during object creation, after setting all properties.
function slider_opacity_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider_opacity (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end



function opacity_txt_Callback(hObject, eventdata, handles)
% hObject    handle to opacity_txt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of opacity_txt as text
%        str2double(get(hObject,'String')) returns contents of opacity_txt as a double
set(handles.slider_opacity,'Value',str2num(get(hObject,'String')));
plot_Openmanipulator_X(handles);


% --- Executes during object creation, after setting all properties.
function opacity_txt_CreateFcn(hObject, eventdata, handles)
% hObject    handle to opacity_txt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function roll4_txt_Callback(hObject, eventdata, handles)
% hObject    handle to roll4_txt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of roll4_txt as text
%        str2double(get(hObject,'String')) returns contents of roll4_txt as a double


% --- Executes during object creation, after setting all properties.
function roll4_txt_CreateFcn(hObject, eventdata, handles)
% hObject    handle to roll4_txt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function pitch4_txt_Callback(hObject, eventdata, handles)
% hObject    handle to pitch4_txt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of pitch4_txt as text
%        str2double(get(hObject,'String')) returns contents of pitch4_txt as a double


% --- Executes during object creation, after setting all properties.
function pitch4_txt_CreateFcn(hObject, eventdata, handles)
% hObject    handle to pitch4_txt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function yaw4_txt_Callback(hObject, eventdata, handles)
% hObject    handle to yaw4_txt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of yaw4_txt as text
%        str2double(get(hObject,'String')) returns contents of yaw4_txt as a double


% --- Executes during object creation, after setting all properties.
function yaw4_txt_CreateFcn(hObject, eventdata, handles)
% hObject    handle to yaw4_txt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function px_cen_txt_Callback(hObject, eventdata, handles)
% hObject    handle to px_cen_txt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of px_cen_txt as text
%        str2double(get(hObject,'String')) returns contents of px_cen_txt as a double


% --- Executes during object creation, after setting all properties.
function px_cen_txt_CreateFcn(hObject, eventdata, handles)
% hObject    handle to px_cen_txt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function py_cen_txt_Callback(hObject, eventdata, handles)
% hObject    handle to py_cen_txt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of py_cen_txt as text
%        str2double(get(hObject,'String')) returns contents of py_cen_txt as a double


% --- Executes during object creation, after setting all properties.
function py_cen_txt_CreateFcn(hObject, eventdata, handles)
% hObject    handle to py_cen_txt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function pz_cen_txt_Callback(hObject, eventdata, handles)
% hObject    handle to pz_cen_txt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of pz_cen_txt as text
%        str2double(get(hObject,'String')) returns contents of pz_cen_txt as a double


% --- Executes during object creation, after setting all properties.
function pz_cen_txt_CreateFcn(hObject, eventdata, handles)
% hObject    handle to pz_cen_txt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function roll_cen_txt_Callback(hObject, eventdata, handles)
% hObject    handle to roll_cen_txt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of roll_cen_txt as text
%        str2double(get(hObject,'String')) returns contents of roll_cen_txt as a double


% --- Executes during object creation, after setting all properties.
function roll_cen_txt_CreateFcn(hObject, eventdata, handles)
% hObject    handle to roll_cen_txt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function pitch_cen_txt_Callback(hObject, eventdata, handles)
% hObject    handle to pitch_cen_txt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of pitch_cen_txt as text
%        str2double(get(hObject,'String')) returns contents of pitch_cen_txt as a double


% --- Executes during object creation, after setting all properties.
function pitch_cen_txt_CreateFcn(hObject, eventdata, handles)
% hObject    handle to pitch_cen_txt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function yaw_cen_txt_Callback(hObject, eventdata, handles)
% hObject    handle to yaw_cen_txt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of yaw_cen_txt as text
%        str2double(get(hObject,'String')) returns contents of yaw_cen_txt as a double


% --- Executes during object creation, after setting all properties.
function yaw_cen_txt_CreateFcn(hObject, eventdata, handles)
% hObject    handle to yaw_cen_txt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function x_inv_txt_Callback(hObject, eventdata, handles)
% hObject    handle to x_inv_txt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of x_inv_txt as text
%        str2double(get(hObject,'String')) returns contents of x_inv_txt as a double


% --- Executes during object creation, after setting all properties.
function x_inv_txt_CreateFcn(hObject, eventdata, handles)
% hObject    handle to x_inv_txt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function y_inv_txt_Callback(hObject, eventdata, handles)
% hObject    handle to y_inv_txt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of y_inv_txt as text
%        str2double(get(hObject,'String')) returns contents of y_inv_txt as a double


% --- Executes during object creation, after setting all properties.
function y_inv_txt_CreateFcn(hObject, eventdata, handles)
% hObject    handle to y_inv_txt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function z_inv_txt_Callback(hObject, eventdata, handles)
% hObject    handle to z_inv_txt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of z_inv_txt as text
%        str2double(get(hObject,'String')) returns contents of z_inv_txt as a double


% --- Executes during object creation, after setting all properties.
function z_inv_txt_CreateFcn(hObject, eventdata, handles)
% hObject    handle to z_inv_txt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function pitch_inv_txt_Callback(hObject, eventdata, handles)
% hObject    handle to pitch_inv_txt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of pitch_inv_txt as text
%        str2double(get(hObject,'String')) returns contents of pitch_inv_txt as a double


% --- Executes during object creation, after setting all properties.
function pitch_inv_txt_CreateFcn(hObject, eventdata, handles)
% hObject    handle to pitch_inv_txt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in btn_inv.
function btn_inv_Callback(hObject, eventdata, handles)
% hObject    handle to btn_inv (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%Inverse(handles);
plot_p_v_a(handles);


% --- Executes on button press in btn_reset.
function btn_reset_Callback(hObject, eventdata, handles)
% hObject    handle to btn_reset (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
Reset_Param(handles);



function vmax_txt_Callback(hObject, eventdata, handles)
% hObject    handle to vmax_txt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of vmax_txt as text
%        str2double(get(hObject,'String')) returns contents of vmax_txt as a double


% --- Executes during object creation, after setting all properties.
function vmax_txt_CreateFcn(hObject, eventdata, handles)
% hObject    handle to vmax_txt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function amax_txt_Callback(hObject, eventdata, handles)
% hObject    handle to amax_txt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of amax_txt as text
%        str2double(get(hObject,'String')) returns contents of amax_txt as a double


% --- Executes during object creation, after setting all properties.
function amax_txt_CreateFcn(hObject, eventdata, handles)
% hObject    handle to amax_txt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
