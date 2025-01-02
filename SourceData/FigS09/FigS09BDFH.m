

%% m240618_sapv_ploting
clear
clc
close all
load('allsessionfram_OtherFunctionCell240721.mat')
allsessionfram=allsessionfram_OtherFunctionCell;
%% HPC Pry PC                                      40/146 0.2740
temp=find(allsessionfram(:,4)==21);
length(temp)
length(intersect(find(allsessionfram(:,11)>=95),temp))
length(intersect(find(allsessionfram(:,11)>=95),temp))/length(temp)
%% PFC Pry PC                                      78/184 0.4239
temp=find(allsessionfram(:,4)==11);
length(temp)
length(intersect(find(allsessionfram(:,11)>=95),temp))
length(intersect(find(allsessionfram(:,11)>=95),temp))/length(temp)
%% HPC inter PC                                    7/89 0.0787
temp=find(allsessionfram(:,4)==22);
length(temp)
length(intersect(find(allsessionfram(:,11)>=95),temp))
length(intersect(find(allsessionfram(:,11)>=95),temp))/length(temp)
%% PFC inter PC                                    14/69 0.2029
temp=find(allsessionfram(:,4)==12);
length(temp)
length(intersect(find(allsessionfram(:,11)>=95),temp))
length(intersect(find(allsessionfram(:,11)>=95),temp))/length(temp)

%% 
thecell=cell(1,4); k=11
temp=find(allsessionfram(:,4)==21);
%length(intersect(find(allsessionfram(:,11)>=95),temp))/length(temp) % HPC % Pry place selective cell/all Pry cell = 74/257 = 28.79%
HPC_Pry_PC_idx=intersect(find(allsessionfram(:,k)>=95),temp);
thecell{3}=allsessionfram(HPC_Pry_PC_idx,k-1)';
HPC_Pry_nonPC_idx=intersect(find(allsessionfram(:,k)<95),temp);
thecell{4}=allsessionfram(HPC_Pry_nonPC_idx,k-1)';
temp=find(allsessionfram(:,4)==11);
%length(intersect(find(allsessionfram(:,11)>=95),temp))/length(temp)% PFC Pry PC % 81/204 39.71
PFC_Pry_PC_idx=intersect(find(allsessionfram(:,k)>=95),temp);
thecell{1}=allsessionfram(PFC_Pry_PC_idx,k-1)';
PFC_Pry_nonPC_idx=intersect(find(allsessionfram(:,k)<95),temp);
thecell{2}=allsessionfram(PFC_Pry_nonPC_idx,k-1)';
%% figure 
figure('Position',[400,400,500,450])
temp=cell(1,4);
y=[];x=[];
for tempi=1:4
    temp{tempi}=sort(thecell{tempi},'descend')';
    y=[y;temp{tempi}];
    x=[x;repmat(num2str(tempi),length(temp{tempi}),1)];% length('9') is 1, length('10') is 2
end
boxplot(y,x,'Colors','k','PlotStyle','compact','MedianStyle','line','Widths',0.20,'Symbol','k')
hold on

for tempi=1:4
    windowtofindneardots=(max(temp{tempi})-min(temp{tempi}))/8; %% here 16 is to adjust the smoother
    widthfactor=zeros(size(temp{tempi}));
for i=1:length(temp{tempi})
    a=find(temp{tempi}>(temp{tempi}(i)-windowtofindneardots/2));
    b=find(temp{tempi}<(temp{tempi}(i)+windowtofindneardots/2));
    widthfactor(i)=length(intersect(a,b))-1;
end

if max(widthfactor)==0
    widthfactor=widthfactor+0.08;
else
    widthfactor=widthfactor/max(widthfactor);
end


if tempi == 1
    widthr=0.2;
scatter(widthfactor.*(widthr*rand(length(temp{tempi}),1)) + tempi*ones(length(temp{tempi}),1) + 0.14,...
    temp{tempi},4,'filled','MarkerFaceColor',[0.4660 0.6740 0.1880])
end

if tempi == 3
    widthr=0.2;
scatter(widthfactor.*(widthr*rand(length(temp{tempi}),1)) + tempi*ones(length(temp{tempi}),1) + 0.14,...
    temp{tempi},4,'filled','MarkerFaceColor',[0.4660 0.6740 0.1880])
end

if tempi == 2
    widthr=0.30;
scatter(widthfactor.*(widthr*rand(length(temp{tempi}),1)) + tempi*ones(length(temp{tempi}),1) + 0.14,...
    temp{tempi},4,'filled','MarkerFaceColor',[0.7 0.7 0.7])   
end

if tempi == 4
    widthr=0.30;
scatter(widthfactor.*(widthr*rand(length(temp{tempi}),1)) + tempi*ones(length(temp{tempi}),1) + 0.14,...
    temp{tempi},4,'filled','MarkerFaceColor',[0.7 0.7 0.7])   
end

hold on
end

xlim([0.5 5])
%ylim([-1 1])
%yticks([-1:0.5:1])
box off
%% ranksum
[p,h]=ranksum(thecell{1},thecell{2})
[p,h]=ranksum(thecell{3},thecell{4})
[p,h]=ranksum(thecell{1},thecell{3})








%% HPC Pry SpeedC                                              74/146 0.5068
temp=find(allsessionfram(:,4)==21);
length(temp)
length(intersect(find(allsessionfram(:,16)>=95),temp))
length(intersect(find(allsessionfram(:,16)>=95),temp))/length(temp)
%% PFC Pry SpeedC                                              94/184 0.5109
temp=find(allsessionfram(:,4)==11);
length(temp)
length(intersect(find(allsessionfram(:,16)>=95),temp))
length(intersect(find(allsessionfram(:,16)>=95),temp))/length(temp)
%% HPC inter SpeedC                                            46/89 0.5169
temp=find(allsessionfram(:,4)==22);
length(temp)
length(intersect(find(allsessionfram(:,16)>=95),temp))
length(intersect(find(allsessionfram(:,16)>=95),temp))/length(temp)
%% PFC interSpeedC                                              53/69 0.7681
temp=find(allsessionfram(:,4)==12);
length(temp)
length(intersect(find(allsessionfram(:,16)>=95),temp))
length(intersect(find(allsessionfram(:,16)>=95),temp))/length(temp)
%% speed cell
thecell=cell(1,4); k=16
temp=find(allsessionfram(:,4)==21);
%length(intersect(find(allsessionfram(:,11)>=95),temp))/length(temp) % HPC % Pry place selective cell/all Pry cell = 74/257 = 28.79%
HPC_Pry_PC_idx=intersect(find(allsessionfram(:,k)>=95),temp);
thecell{3}=allsessionfram(HPC_Pry_PC_idx,k-1)';
HPC_Pry_nonPC_idx=intersect(find(allsessionfram(:,k)<95),temp);
thecell{4}=allsessionfram(HPC_Pry_nonPC_idx,k-1)';
temp=find(allsessionfram(:,4)==11);
%length(intersect(find(allsessionfram(:,11)>=95),temp))/length(temp)% PFC Pry PC % 81/204 39.71
PFC_Pry_PC_idx=intersect(find(allsessionfram(:,k)>=95),temp);
thecell{1}=allsessionfram(PFC_Pry_PC_idx,k-1)';
PFC_Pry_nonPC_idx=intersect(find(allsessionfram(:,k)<95),temp);
thecell{2}=allsessionfram(PFC_Pry_nonPC_idx,k-1)';
% figure 
figure('Position',[400,400,500,450])
temp=cell(1,4);
y=[];x=[];
for tempi=1:4
    temp{tempi}=sort(thecell{tempi},'descend')';
    y=[y;temp{tempi}];
    x=[x;repmat(num2str(tempi),length(temp{tempi}),1)];% length('9') is 1, length('10') is 2
end
boxplot(y,x,'Colors','k','PlotStyle','compact','MedianStyle','line','Widths',0.20,'Symbol','k')
hold on


for tempi=1:4
    windowtofindneardots=(max(temp{tempi})-min(temp{tempi}))/10; %% here 16 is to adjust the smoother
    widthfactor=zeros(size(temp{tempi}));
for i=1:length(temp{tempi})
    a=find(temp{tempi}>(temp{tempi}(i)-windowtofindneardots/2));
    b=find(temp{tempi}<(temp{tempi}(i)+windowtofindneardots/2));
    widthfactor(i)=length(intersect(a,b))-1;
end

if max(widthfactor)==0
    widthfactor=widthfactor+0.08;
else
    widthfactor=widthfactor/max(widthfactor);
end

    widthr=0.2;
    scatter(widthfactor.*(widthr*rand(length(temp{tempi}),1)) + tempi*ones(length(temp{tempi}),1) + 0.14,...
    temp{tempi},5,'filled','MarkerFaceColor',[0.7 0.7 0.7])

hold on
end
xlim([0.5 4.8])
ylim([-0.2 0.3])
%yticks([-1:0.5:1])
box off
%% ranksum
[p,h]=ranksum(thecell{1},thecell{2})   % 3.0560e-31
[p,h]=ranksum(thecell{3},thecell{4})   % 1.2900e-24
[p,h]=ranksum(thecell{1},thecell{3})   %  0.4480


%% azimuth cell
k=18
%% HPC Pry                                                     0.2945
temp=find(allsessionfram(:,4)==21);
length(temp)
length(intersect(find(allsessionfram(:,k)>=95),temp))
length(intersect(find(allsessionfram(:,k)>=95),temp))/length(temp)
%% PFC Pry                                                     0.3804
temp=find(allsessionfram(:,4)==11);
length(temp)
length(intersect(find(allsessionfram(:,k)>=95),temp))
length(intersect(find(allsessionfram(:,k)>=95),temp))/length(temp)
%% HPC inter                                                   0.1573
temp=find(allsessionfram(:,4)==22);
length(temp)
length(intersect(find(allsessionfram(:,k)>=95),temp))
length(intersect(find(allsessionfram(:,k)>=95),temp))/length(temp)
%% PFC inter                                                   0.1594
temp=find(allsessionfram(:,4)==12);
length(temp)
length(intersect(find(allsessionfram(:,k)>=95),temp))
length(intersect(find(allsessionfram(:,k)>=95),temp))/length(temp)
%%
thecell=cell(1,4); k=18
temp=find(allsessionfram(:,4)==21);
%length(intersect(find(allsessionfram(:,11)>=95),temp))/length(temp) % HPC % Pry place selective cell/all Pry cell = 74/257 = 28.79%
HPC_Pry_PC_idx=intersect(find(allsessionfram(:,k)>=95),temp);
thecell{3}=allsessionfram(HPC_Pry_PC_idx,k-1)';
HPC_Pry_nonPC_idx=intersect(find(allsessionfram(:,k)<95),temp);
thecell{4}=allsessionfram(HPC_Pry_nonPC_idx,k-1)';
temp=find(allsessionfram(:,4)==11);
%length(intersect(find(allsessionfram(:,11)>=95),temp))/length(temp)% PFC Pry PC % 81/204 39.71
PFC_Pry_PC_idx=intersect(find(allsessionfram(:,k)>=95),temp);
thecell{1}=allsessionfram(PFC_Pry_PC_idx,k-1)';
PFC_Pry_nonPC_idx=intersect(find(allsessionfram(:,k)<95),temp);
thecell{2}=allsessionfram(PFC_Pry_nonPC_idx,k-1)';
% figure 
figure('Position',[400,400,500,450])
temp=cell(1,4);
y=[];x=[];
for tempi=1:4
    temp{tempi}=sort(thecell{tempi},'descend')';
    y=[y;temp{tempi}];
    x=[x;repmat(num2str(tempi),length(temp{tempi}),1)];% length('9') is 1, length('10') is 2
end
boxplot(y,x,'Colors','k','PlotStyle','compact','MedianStyle','line','Widths',0.20,'Symbol','k')
hold on


for tempi=1:4
    windowtofindneardots=(max(temp{tempi})-min(temp{tempi}))/10; %% here 16 is to adjust the smoother
    widthfactor=zeros(size(temp{tempi}));
for i=1:length(temp{tempi})
    a=find(temp{tempi}>(temp{tempi}(i)-windowtofindneardots/2));
    b=find(temp{tempi}<(temp{tempi}(i)+windowtofindneardots/2));
    widthfactor(i)=length(intersect(a,b))-1;
end

if max(widthfactor)==0
    widthfactor=widthfactor+0.08;
else
    widthfactor=widthfactor/max(widthfactor);
end

    widthr=0.2;
    scatter(widthfactor.*(widthr*rand(length(temp{tempi}),1)) + tempi*ones(length(temp{tempi}),1) + 0.14,...
    temp{tempi},5,'filled','MarkerFaceColor',[0.7 0.7 0.7])

hold on
end
xlim([0.5 4.8])
ylim([0 0.7])
%yticks([-1:0.5:1])
box off
%% ranksum
[p,h]=ranksum(thecell{1},thecell{2}) %1.8774e-24
[p,h]=ranksum(thecell{3},thecell{4}) %2.9859e-14
[p,h]=ranksum(thecell{1},thecell{3}) %0.3021





%% pitch cell
k=20
%% HPC Pry                                                     0.1233
temp=find(allsessionfram(:,4)==21);
length(temp)
length(intersect(find(allsessionfram(:,k)>=95),temp))
length(intersect(find(allsessionfram(:,k)>=95),temp))/length(temp)
%% PFC Pry                                                     0.1413
temp=find(allsessionfram(:,4)==11);
length(temp)
length(intersect(find(allsessionfram(:,k)>=95),temp))
length(intersect(find(allsessionfram(:,k)>=95),temp))/length(temp)
%% HPC inter                                                   0.1124
temp=find(allsessionfram(:,4)==22);
length(temp)
length(intersect(find(allsessionfram(:,k)>=95),temp))
length(intersect(find(allsessionfram(:,k)>=95),temp))/length(temp)
%% PFC inter                                                   0.0870
temp=find(allsessionfram(:,4)==12);
length(temp)
length(intersect(find(allsessionfram(:,k)>=95),temp))
length(intersect(find(allsessionfram(:,k)>=95),temp))/length(temp)

%%
thecell=cell(1,4); k=20
temp=find(allsessionfram(:,4)==21);
%length(intersect(find(allsessionfram(:,11)>=95),temp))/length(temp) % HPC % Pry place selective cell/all Pry cell = 74/257 = 28.79%
HPC_Pry_PC_idx=intersect(find(allsessionfram(:,k)>=95),temp);
thecell{3}=allsessionfram(HPC_Pry_PC_idx,k-1)';
HPC_Pry_nonPC_idx=intersect(find(allsessionfram(:,k)<95),temp);
thecell{4}=allsessionfram(HPC_Pry_nonPC_idx,k-1)';
temp=find(allsessionfram(:,4)==11);
%length(intersect(find(allsessionfram(:,11)>=95),temp))/length(temp)% PFC Pry PC % 81/204 39.71
PFC_Pry_PC_idx=intersect(find(allsessionfram(:,k)>=95),temp);
thecell{1}=allsessionfram(PFC_Pry_PC_idx,k-1)';
PFC_Pry_nonPC_idx=intersect(find(allsessionfram(:,k)<95),temp);
thecell{2}=allsessionfram(PFC_Pry_nonPC_idx,k-1)';

%figure 
figure('Position',[400,400,500,450])
temp=cell(1,4);
y=[];x=[];
for tempi=1:4
    temp{tempi}=sort(thecell{tempi},'descend')';
    y=[y;temp{tempi}];
    x=[x;repmat(num2str(tempi),length(temp{tempi}),1)];% length('9') is 1, length('10') is 2
end
boxplot(y,x,'Colors','k','PlotStyle','compact','MedianStyle','line','Widths',0.20,'Symbol','k')
hold on


for tempi=1:4
    windowtofindneardots=(max(temp{tempi})-min(temp{tempi}))/10; %% here 16 is to adjust the smoother
    widthfactor=zeros(size(temp{tempi}));
for i=1:length(temp{tempi})
    a=find(temp{tempi}>(temp{tempi}(i)-windowtofindneardots/2));
    b=find(temp{tempi}<(temp{tempi}(i)+windowtofindneardots/2));
    widthfactor(i)=length(intersect(a,b))-1;
end

if max(widthfactor)==0
    widthfactor=widthfactor+0.08;
else
    widthfactor=widthfactor/max(widthfactor);
end

    widthr=0.2;
    scatter(widthfactor.*(widthr*rand(length(temp{tempi}),1)) + tempi*ones(length(temp{tempi}),1) + 0.14,...
    temp{tempi},5,'filled','MarkerFaceColor',[0.7 0.7 0.7])

hold on
end
xlim([0.5 4.8])
ylim([1 10])
%yticks([-1:0.5:1])
box off
%% ranksum
[p,h]=ranksum(thecell{1},thecell{2})%3.5954e-16

[p,h]=ranksum(thecell{3},thecell{4})% 1.3249e-11
[p,h]=ranksum(thecell{1},thecell{3})%0.1616





%% view cell
k=22
%% HPC Pry                                                    0.3699
temp=find(allsessionfram(:,4)==21);
length(temp)
length(intersect(find(allsessionfram(:,k)>=95),temp))
length(intersect(find(allsessionfram(:,k)>=95),temp))/length(temp)
%% PFC Pry                                                     0.5000

temp=find(allsessionfram(:,4)==11);
length(temp)
length(intersect(find(allsessionfram(:,k)>=95),temp))
length(intersect(find(allsessionfram(:,k)>=95),temp))/length(temp)
%% HPC inter                                                   0.5281
temp=find(allsessionfram(:,4)==22);
length(temp)
length(intersect(find(allsessionfram(:,k)>=95),temp))
length(intersect(find(allsessionfram(:,k)>=95),temp))/length(temp)
%% PFC inter                                                    0.5362
temp=find(allsessionfram(:,4)==12);
length(temp)
length(intersect(find(allsessionfram(:,k)>=95),temp))
length(intersect(find(allsessionfram(:,k)>=95),temp))/length(temp)
%%
thecell=cell(1,4); k=22
temp=find(allsessionfram(:,4)==21);
%length(intersect(find(allsessionfram(:,11)>=95),temp))/length(temp) % HPC % Pry place selective cell/all Pry cell = 74/257 = 28.79%
HPC_Pry_PC_idx=intersect(find(allsessionfram(:,k)>=95),temp);
thecell{3}=allsessionfram(HPC_Pry_PC_idx,k-1)';
HPC_Pry_nonPC_idx=intersect(find(allsessionfram(:,k)<95),temp);
thecell{4}=allsessionfram(HPC_Pry_nonPC_idx,k-1)';
temp=find(allsessionfram(:,4)==11);
%length(intersect(find(allsessionfram(:,11)>=95),temp))/length(temp)% PFC Pry PC % 81/204 39.71
PFC_Pry_PC_idx=intersect(find(allsessionfram(:,k)>=95),temp);
thecell{1}=allsessionfram(PFC_Pry_PC_idx,k-1)';
PFC_Pry_nonPC_idx=intersect(find(allsessionfram(:,k)<95),temp);
thecell{2}=allsessionfram(PFC_Pry_nonPC_idx,k-1)';
% figure 
figure('Position',[400,400,500,450])
temp=cell(1,4);
y=[];x=[];
for tempi=1:4
    temp{tempi}=sort(thecell{tempi},'descend')';
    y=[y;temp{tempi}];
    x=[x;repmat(num2str(tempi),length(temp{tempi}),1)];% length('9') is 1, length('10') is 2
end
boxplot(y,x,'Colors','k','PlotStyle','compact','MedianStyle','line','Widths',0.20,'Symbol','k')
hold on


for tempi=1:4
    windowtofindneardots=(max(temp{tempi})-min(temp{tempi}))/10; %% here 16 is to adjust the smoother
    widthfactor=zeros(size(temp{tempi}));
for i=1:length(temp{tempi})
    a=find(temp{tempi}>(temp{tempi}(i)-windowtofindneardots/2));
    b=find(temp{tempi}<(temp{tempi}(i)+windowtofindneardots/2));
    widthfactor(i)=length(intersect(a,b))-1;
end

if max(widthfactor)==0
    widthfactor=widthfactor+0.08;
else
    widthfactor=widthfactor/max(widthfactor);
end

    widthr=0.2;
    scatter(widthfactor.*(widthr*rand(length(temp{tempi}),1)) + tempi*ones(length(temp{tempi}),1) + 0.14,...
    temp{tempi},5,'filled','MarkerFaceColor',[0.7 0.7 0.7])

hold on
end
xlim([0.5 4.8])
ylim([0 9])
%yticks([-1:0.5:1])
box off

%% ranksum
[p,h]=ranksum(thecell{1},thecell{2}) %1.4670e-08
[p,h]=ranksum(thecell{3},thecell{4})%1.0616e-05
[p,h]=ranksum(thecell{1},thecell{3}) %0.5127