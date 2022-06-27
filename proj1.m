clc 
clear
%----------------------------------------------------------------------------------------------------------------
Chars=char(strcat(char(65:90),char(97:122),char(49:57),",. "))
%-------------------Have user browse for a file, from a specified "starting folder."
%-------------------For convenience in browsing, set a starting folder from which to browse.
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
% for i=1:1:length(text)
%     if (~ismember(text(i),Chars))
%    text(i)=''; 
%     end
% end
j=1;
for i=1:1:length(textnew)
  startIndex = regexp(Chars,textnew(i));
    if sum(startIndex)~=0
 text(j)=textnew(i);
 j=j+1;
    end
end
length(text)
c=unique(text);
disp(length(c));
i=1;
while(i<=length(c))

   rept(i)=length(strfind(text,c(i)));
   result(i)=rept(i)/length(text);
 i=i+1;
end
%---------------------plot showing the probability distribution of the characters in the file------------------

for i=1:length(c)
   characters(1,i)=string(c(1,i));
end
%disp("'""""""""''");
disp(characters);
hFig=figure;
bar(result);
lengthofunique=length(c);
xticks(1:1:lengthofunique);
xticklabels(characters);
set(gca,'xticklabel',characters);
grid on;
%hFig.windowState='maximized';

%----------------------------------------------Entropy of the characters--------------------------------------

Entropy=0;
for i=1:lengthofunique
Entropy=Entropy+(result(i)*log2(1/result(i)));
end
fprintf("Entropy=")
disp(Entropy)

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
fprintf("Relative Entropy=")
disp(RelativeEntropy)

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
%disp(n);
%disp(length(text));
%disp(length(SendingText));
fprintf("Sending text is :")
disp(SendingText);



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
fprintf("array of string in bitss is")
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
 disp(Fin_arr)
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

disp(length(ReceivedText));
fprintf("Sent Text is :")
disp(text);
fprintf("Received Text is :")
disp(ReceivedText);

%------------------------------------------The Joint entropy H(Y,X)--------------------------------------0
i=1;
j=1;
flag=0;
disp(length(text))
while i<=length(text) && j<=length(text)
    if i==1 
dataOfPairs(i).name{1}=text(j);
dataOfPairs(i).name{2}=ReceivedText(j);
Occ_arr(i)=1;
fprintf("DataOfF i=1 is")
%disp(dataOfPairs.name)
i=i+1;
j=j+1;
    else
  %  disp(i)
    dataOfPairs(i).name{1}=text(j);
    dataOfPairs(i).name{2}=ReceivedText(j);
    fprintf("data in else=")
    disp(dataOfPairs(i).name)
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
fprintf("Occ_arr= ")
disp(Occ_arr)
% fprintf("data of pairs= ")
% for i=1:length(dataOfPairs1)
%     disp(dataOfPairs1(i).name)
% end
Prob_Arr=Occ_arr/sum(Occ_arr);
fprintf("Data of pairs length= ")
length(dataOfPairs);
%disp(length(dataOfPairs)-1)
fprintf("probability of ")
disp(Prob_Arr)

%------------------------------------------The Joint entropy H(X,Y)---------
jointentropy=0;
for i=1:length(Prob_Arr)
jointentropy=jointentropy+(Prob_Arr(i)*log2(1/Prob_Arr(i)));
end
fprintf("joint entropy is ")
disp(jointentropy)
%------------------------------------------The conditional entropy H(Y|X)--------------------------------------
for i=1:length(Occ_arr)
for j=1:length(c)
if  dataOfPairs(i).name{1}==c(j)
temp=j;
break;
end
end
condProb(i)=Prob_Arr(i)/result(temp);
disp(condProb);
end
%find()
condentropy=0;
for i=1:length(condProb)
condentropy=condentropy+(Prob_Arr(i)*log2(1/condProb(i))); 
% fprintf("condentropy")
% disp(condentropy)
end
fprintf("condentropy= ")
 disp(condentropy)
%------------------------------------------Verify if H(X, Y ) = H(X) + H(Y |X)------------------------
ver_jointentropy=condentropy+Entropy;
fprintf("entropy= ")
disp(Entropy)
fprintf("joint entropy= ")
disp(jointentropy)
fprintf("Verify if H(X,Y) = H(X) + H(Y|X)=");
disp(ver_jointentropy)