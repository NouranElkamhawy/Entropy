function varargout = GuiTest(varargin)
% GUITEST MATLAB code for GuiTest.fig
%      GUITEST, by itself, creates a new GUITEST or raises the existing
%      singleton*.
%
%      H = GUITEST returns the handle to a new GUITEST or the handle to
%      the existing singleton*.
%
%      GUITEST('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in GUITEST.M with the given input arguments.
%
%      GUITEST('Property','Value',...) creates a new GUITEST or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before GuiTest_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to GuiTest_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help GuiTest

% Last Modified by GUIDE v2.5 02-Apr-2022 14:53:30

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @GuiTest_OpeningFcn, ...
                   'gui_OutputFcn',  @GuiTest_OutputFcn, ...
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


% --- Executes just before GuiTest is made visible.
function GuiTest_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to GuiTest (see VARARGIN)

% Choose default command line output for GuiTest
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes GuiTest wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = GuiTest_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function Entropy_Callback(hObject, eventdata, handles)
% hObject    handle to Entropy (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Entropy as text
%        str2double(get(hObject,'String')) returns contents of Entropy as a double


% --- Executes during object creation, after setting all properties.
function Entropy_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Entropy (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Path_Callback(hObject, eventdata, handles)
% hObject    handle to Path (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Path as text
%        str2double(get(hObject,'String')) returns contents of Path as a double


% --- Executes during object creation, after setting all properties.
function Path_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Path (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function ConditionalEntropy_Callback(hObject, eventdata, handles)
% hObject    handle to ConditionalEntropy (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ConditionalEntropy as text
%        str2double(get(hObject,'String')) returns contents of ConditionalEntropy as a double


% --- Executes during object creation, after setting all properties.
function ConditionalEntropy_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ConditionalEntropy (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function JointEntropy_Callback(hObject, eventdata, handles)
% hObject    handle to JointEntropy (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of JointEntropy as text
%        str2double(get(hObject,'String')) returns contents of JointEntropy as a double


% --- Executes during object creation, after setting all properties.
function JointEntropy_CreateFcn(hObject, eventdata, handles)
% hObject    handle to JointEntropy (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Ver_Ch_Callback(hObject, eventdata, handles)
% hObject    handle to Ver_Ch (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Ver_Ch as text
%        str2double(get(hObject,'String')) returns contents of Ver_Ch as a double


% --- Executes during object creation, after setting all properties.
function Ver_Ch_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Ver_Ch (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function RelativeEntropy_Callback(hObject, eventdata, handles)
% hObject    handle to RelativeEntropy (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of RelativeEntropy as text
%        str2double(get(hObject,'String')) returns contents of RelativeEntropy as a double


% --- Executes during object creation, after setting all properties.
function RelativeEntropy_CreateFcn(hObject, eventdata, handles)
% hObject    handle to RelativeEntropy (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function SentText_Callback(hObject, eventdata, handles)
% hObject    handle to SentText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of SentText as text
%        str2double(get(hObject,'String')) returns contents of SentText as a double


% --- Executes during object creation, after setting all properties.
function SentText_CreateFcn(hObject, eventdata, handles)
% hObject    handle to SentText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit9_Callback(hObject, eventdata, handles)
% hObject    handle to edit9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit9 as text
%        str2double(get(hObject,'String')) returns contents of edit9 as a double


% --- Executes during object creation, after setting all properties.
function edit9_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Chars_Callback(hObject, eventdata, handles)
% hObject    handle to Chars (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Chars as text
%        str2double(get(hObject,'String')) returns contents of Chars as a double


% --- Executes during object creation, after setting all properties.
function Chars_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Chars (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function PMF_Callback(hObject, eventdata, handles)
% hObject    handle to PMF (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of PMF as text
%        str2double(get(hObject,'String')) returns contents of PMF as a double


% --- Executes during object creation, after setting all properties.
function PMF_CreateFcn(hObject, eventdata, handles)
% hObject    handle to PMF (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in Browse.
function Browse_Callback(hObject, eventdata, handles)
startingFolder = 'C:\Program Files\MATLAB';  % Whatever you want....could be pwd if you want.
if ~exist(startingFolder, 'dir')
  % If that folder doesn't exist, just start in the current folder.
  startingFolder = pwd;
end
% Get the name of the file that the user wants to use.
defaultFileName = fullfile(startingFolder, '.');
[baseFileName, folder] = uigetfile(defaultFileName, 'Select a file');
if baseFileName == 0
  % User clicked the Cancel button.
  return;
end
fullFileName = fullfile(folder, baseFileName);
fid = fopen(fullFileName, 'rt');
textnew = fileread(fullFileName);
Chars=char(strcat(char(65:90),char(97:122),char(49:57),",. "));
j=1;
for i=1:1:length(textnew)
  startIndex = regexp(Chars,textnew(i));
    if sum(startIndex)~=0
 text(j)=textnew(i);
 j=j+1;
    end
end
%     end
% end
length(text)
disp(length(text))
c=unique(text);
i=1;
while(i<=length(c))

   rept(i)=length(strfind(text,c(i)));
   result(i)=rept(i)/length(text);
 i=i+1;
end
%---------------------plot showing the probability distribution of the characters in the file------------------

% for i=1:length(c)
%    characters(1,i)=string(c(1,i));
% end
% %disp("'""""""""''");
% disp(characters);
% hFig=figure;
% bar(result);
% xticks(1:1:lengthofunique);
% xticklabels(characters);
% set(gca,'xticklabel',characters);
% grid on;
% hFig.windowState='maximized';

%----------------------------------------------Entropy of the characters--------------------------------------
lengthofunique=length(c);

Entropy=0;
for i=1:lengthofunique
Entropy=Entropy+(result(i)*log2(1/result(i)));
end

%------------------------------------------Relative Entropy of the characters----------------------------------

i=1;
while(i<=length(c))
   result2(i)=1.00/length(c);
 i=i+1;
end

%disp(result2)
RelativeEntropy=0;
for i=1:lengthofunique
RelativeEntropy=RelativeEntropy+(result(i)*(log2(result(i)/result2(i))));
end
%fprintf("Relative Entropy=")
%disp(RelativeEntropy)

%--------------------------------------------Binary Sequence-----------------------------------------
for i=1:length(Chars)
binStr = dec2bin(i-1,6);
str(i) = string(binStr);
end
for i=1:length(Chars)    
data(i).name{2}=str(i);
data(i).name{1}=Chars(i);
end
%--------------------------------------------Sending Text---------------
n=1;
for i=1:length(text)
for j=1:length(Chars)
    if text(i)==data(j).name{1}
        SendingText(n)=data(j).name{2};
        n=n+1;
        break;
    end
end
end
n=n-1;

%--------------------------------------------add errors in text Text due to passing through channel---------------
 onestring = strjoin(SendingText, '');
ArrayOfString= num2cell(char(onestring));
%disp(ArrayOfString)
% disp(length(ArrayOfString))
% cell(1)={'1'};
% for i=1:length(ArrayOfString)
% error=rand(1,1);
% disp(error);
% if error <= 0.05
%     if strcmp(ArrayOfString(i),'0')
% ArrayOfString(i)=cell;
%     end
% end
% end

ArrayOfString=str2num(char(ArrayOfString));
%fprintf("array of string in bitss is")
% disp(length(ArrayOfString))
% disp(ArrayOfString)
[m,n]=size(ArrayOfString);
Error_arr = randsrc(m,n,[0 1; 0.95 0.05]);
% disp(Error_arr);
% disp(length(Error_arr));
Send_Arr_After_error=xor(Error_arr,ArrayOfString);
% disp(Send_Arr_After_error);
% disp(Send_Arr_After_error);
% %--------------------------------------------Recieving Text----------------
%C = reshape(char(Send_Arr_After_error + '0'),length(text),6);
%disp(c)


%disp(rejoint)
%disp(length(rejoint))
k=1;
reJ=double(Send_Arr_After_error);
%disp(reJ)
%reJo=
 rejoint=string(reJ);
% disp(length(rejoint));

% REJoint= strjoin(strRej, '');
% disp(REJoint);
% rejoint=split(REJoint," ",6)
% disp(rejoint);
% disp(length(rejoint))
 for i = 1:6:length(rejoint)
   %  display(rejoint(i))
 Rec_arr=strcat(char(rejoint(i)),char(rejoint(i+1)),char(rejoint(i+2)),char(rejoint(i+3)),char(rejoint(i+4)),char(rejoint(i+5)));
 Fin_arr(k)= string(Rec_arr);
 k=k+1;
 end
% disp(Fin_arr)
n1=1;
for i=1:length(Fin_arr)
for j=1:length(Chars)
    if Fin_arr(i)==data(j).name{2}
        ReceivedText(n1)=data(j).name{1};
        n1=n1+1;
        break;
    end
end
end
%------------------------------------------The Joint entropy H(Y,X)--------------------------------------0
i=1;
j=1;
flag=0;
while i<=length(text) && j<=length(text)
    if i==1 
dataOfPairs(i).name{1}=text(j);
dataOfPairs(i).name{2}=ReceivedText(j);
Occ_arr(i)=1;
i=i+1;
j=j+1;
    else
    dataOfPairs(i).name{1}=text(j);
    dataOfPairs(i).name{2}=ReceivedText(j);
    Occ_arr(i)=1;
    
    for n=1:1:i-1
        if dataOfPairs(n).name{1}==dataOfPairs(i).name{1} && dataOfPairs(n).name{2}==dataOfPairs(i).name{2}  
            ind=n;
           % if ind()
            %fprintf("the index=")
           % disp(ind)
           
            
         if j==length(text)
             %i=i-1;
             flag=1;
             Occ_arr(ind)=Occ_arr(ind)+1;
         else
             Occ_arr(ind)=Occ_arr(ind)+1;
             i=i-1;
         end
         break;
        end
    end
    i=i+1;
    j=j+1;
    end
end
if flag==1
Occ_arr(end)=[];
%  for i=1:length(Occ_arr)
%  dataOfPairs(i).name=dataOfPairs(i).name;
%  end
end
%fprintf("Occ_arr= ")
%disp(Occ_arr)
% fprintf("data of pairs= ")
% for i=1:length(dataOfPairs1)
%     disp(dataOfPairs1(i).name)
% end
Prob_Arr=Occ_arr/sum(Occ_arr);
%fprintf("Data of pairs length= ")
length(dataOfPairs);
%disp(length(dataOfPairs)-1)
%fprintf("probability of ")
%disp(Prob_Arr)

%------------------------------------------The Joint entropy H(X,Y)---------
jointentropy=0;
for i=1:length(Prob_Arr)
jointentropy=jointentropy+(Prob_Arr(i)*log2(1/Prob_Arr(i)));
end
%fprintf("joint entropy is ")
%disp(jointentropy)
%------------------------------------------The conditional entropy H(Y|X)--------------------------------------
for i=1:length(Occ_arr)
for j=1:length(c)
if  dataOfPairs(i).name{1}==c(j)
temp=j;
break;
end
end
condProb(i)=Prob_Arr(i)/result(temp);
%disp(condProb);
end
%find()
condentropy=0;
for i=1:length(condProb)
condentropy=condentropy+(Prob_Arr(i)*log2(1/condProb(i))); 
% fprintf("condentropy")
% disp(condentropy)
end
%fprintf("condentropy= ")
% disp(condentropy)
%------------------------------------------Verify if H(X, Y ) = H(X) + H(Y |X)------------------------
ver_jointentropy=condentropy+Entropy;
set(handles.Entropy,'string',Entropy);
set(handles.JointEntropy,'string',jointentropy);
set(handles.RelativeEntropy,'string',RelativeEntropy);
set(handles.ConditionalEntropy,'string',condentropy);
set(handles.Ver_Ch,'string',ver_jointentropy);
set(handles.SentText,'string',text);
set(handles.edit9,'string',ReceivedText);
Result_stream=num2str(result);
set(handles.Chars,'string',c);
set(handles.PMF,'string',Result_stream);


% for i=1:length(c)
%    characters(1,i)=string(c(1,i));
% end
%  hFig=figure;
%  bar(result);
%  lengthofunique=length(c);
%  xticks(1:1:lengthofunique);
%  xticklabels(characters);
%  set(gca,'xticklabel',characters);
%  grid on;
                %Print Unique Characters on x-axis label%
              axes(handles.axes1);
plot(handles.axes1,result,"g");
Ch=transpose(c);
                bar(result);
                %Print Unique Characters on x-axis label%
                xticks = 1:1:lengthofunique;
                set(gca,'xtick',xticks);
                set(gca,'xticklabel',Ch);
                %xtickLabels(Ch);
 %imshow('hFig');
% hFig.windowState='maximized';
%  set(handles.Table1,'data',c);
%  set(handles.Table1,'data',result);
% grid on;
% hObject    handle to Browse (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
