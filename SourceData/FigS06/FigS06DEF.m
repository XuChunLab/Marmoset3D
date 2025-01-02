

%% fig2_CDandF_240617
clear
load('allsessionfram.mat')
% for 10 to 14 colunm is SI SIsig Spacity Stability mxfr

%% SI
thecell=cell(1,4);
temp=find(allsessionfram(:,4)==21);
%length(intersect(find(allsessionfram(:,11)>=95),temp))/length(temp) % HPC % Pry place selective cell/all Pry cell = 74/257 = 28.79%
HPC_Pry_PC_idx=intersect(find(allsessionfram(:,11)>=95),temp);
thecell{3}=allsessionfram(HPC_Pry_PC_idx,10)';
HPC_Pry_nonPC_idx=intersect(find(allsessionfram(:,11)<95),temp);
thecell{4}=allsessionfram(HPC_Pry_nonPC_idx,10)';
temp=find(allsessionfram(:,4)==11);
%length(intersect(find(allsessionfram(:,11)>=95),temp))/length(temp)% PFC Pry PC % 81/204 39.71
PFC_Pry_PC_idx=intersect(find(allsessionfram(:,11)>=95),temp);
thecell{1}=allsessionfram(PFC_Pry_PC_idx,10)';
PFC_Pry_nonPC_idx=intersect(find(allsessionfram(:,11)<95),temp);
thecell{2}=allsessionfram(PFC_Pry_nonPC_idx,10)';
% figure 2 C
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


if tempi == 1
    widthr=0.2;
scatter(widthfactor.*(widthr*rand(length(temp{tempi}),1)) + tempi*ones(length(temp{tempi}),1) + 0.14,...
    temp{tempi},5,'filled','MarkerFaceColor',[0.4660 0.6740 0.1880])
end

if tempi == 3
    widthr=0.2;
scatter(widthfactor.*(widthr*rand(length(temp{tempi}),1)) + tempi*ones(length(temp{tempi}),1) + 0.14,...
    temp{tempi},5,'filled','MarkerFaceColor',[0.4660 0.6740 0.1880])
end

if tempi == 2
    widthr=0.30;
scatter(widthfactor.*(widthr*rand(length(temp{tempi}),1)) + tempi*ones(length(temp{tempi}),1) + 0.14,...
    temp{tempi},5,'filled','MarkerFaceColor',[0.7 0.7 0.7])   
end

if tempi == 4
    widthr=0.30;
scatter(widthfactor.*(widthr*rand(length(temp{tempi}),1)) + tempi*ones(length(temp{tempi}),1) + 0.14,...
    temp{tempi},5,'filled','MarkerFaceColor',[0.7 0.7 0.7])   
end

hold on
end

xlim([0.5 4.8])
ylim([0 2])
%yticks([-1:0.2:1])
box off
%% ranksum
[p,h]=ranksum(thecell{1},thecell{2})  %1.3144e-04 
[p,h]=ranksum(thecell{3},thecell{4})  %0.0656
[p,h]=ranksum(thecell{1},thecell{3})  %0.0043





%% Sp  importante thing I added 1./  240620

thecell=cell(1,4);
temp=find(allsessionfram(:,4)==21);
%length(intersect(find(allsessionfram(:,11)>=95),temp))/length(temp) % HPC % Pry place selective cell/all Pry cell = 74/257 = 28.79%
HPC_Pry_PC_idx=intersect(find(allsessionfram(:,11)>=95),temp);
thecell{3}=allsessionfram(HPC_Pry_PC_idx,12)';
HPC_Pry_nonPC_idx=intersect(find(allsessionfram(:,11)<95),temp);
thecell{4}=allsessionfram(HPC_Pry_nonPC_idx,12)';
temp=find(allsessionfram(:,4)==11);
%length(intersect(find(allsessionfram(:,11)>=95),temp))/length(temp)% PFC Pry PC % 81/204 39.71
PFC_Pry_PC_idx=intersect(find(allsessionfram(:,11)>=95),temp);
thecell{1}=allsessionfram(PFC_Pry_PC_idx,12)';
PFC_Pry_nonPC_idx=intersect(find(allsessionfram(:,11)<95),temp);
thecell{2}=allsessionfram(PFC_Pry_nonPC_idx,12)';
% figure 2 D
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


if tempi == 1
    widthr=0.2;
scatter(widthfactor.*(widthr*rand(length(temp{tempi}),1)) + tempi*ones(length(temp{tempi}),1) + 0.14,...
    temp{tempi},5,'filled','MarkerFaceColor',[0.4660 0.6740 0.1880])
end

if tempi == 3
    widthr=0.2;
scatter(widthfactor.*(widthr*rand(length(temp{tempi}),1)) + tempi*ones(length(temp{tempi}),1) + 0.14,...
    temp{tempi},5,'filled','MarkerFaceColor',[0.4660 0.6740 0.1880])
end

if tempi == 2
    widthr=0.30;
scatter(widthfactor.*(widthr*rand(length(temp{tempi}),1)) + tempi*ones(length(temp{tempi}),1) + 0.14,...
    temp{tempi},5,'filled','MarkerFaceColor',[0.7 0.7 0.7])   
end

if tempi == 4
    widthr=0.30;
scatter(widthfactor.*(widthr*rand(length(temp{tempi}),1)) + tempi*ones(length(temp{tempi}),1) + 0.14,...
    temp{tempi},5,'filled','MarkerFaceColor',[0.7 0.7 0.7])   
end

hold on
end

xlim([0.5 4.8])
ylim([0 1])
%yticks([-1:0.2:1])
box off
%% ranksum
[p,h]=ranksum(thecell{1},thecell{2}) %1.2133e-04
[p,h]=ranksum(thecell{3},thecell{4}) % 0.0400
[p,h]=ranksum(thecell{1},thecell{3}) % 0.0025




%% Sta

thecell=cell(1,4);
temp=find(allsessionfram(:,4)==21);
%length(intersect(find(allsessionfram(:,11)>=95),temp))/length(temp) % HPC % Pry place selective cell/all Pry cell = 74/257 = 28.79%
HPC_Pry_PC_idx=intersect(find(allsessionfram(:,11)>=95),temp);
thecell{3}=allsessionfram(HPC_Pry_PC_idx,13)';
HPC_Pry_nonPC_idx=intersect(find(allsessionfram(:,11)<95),temp);
thecell{4}=allsessionfram(HPC_Pry_nonPC_idx,13)';
temp=find(allsessionfram(:,4)==11);
%length(intersect(find(allsessionfram(:,11)>=95),temp))/length(temp)% PFC Pry PC % 81/204 39.71
PFC_Pry_PC_idx=intersect(find(allsessionfram(:,11)>=95),temp);
thecell{1}=allsessionfram(PFC_Pry_PC_idx,13)';
PFC_Pry_nonPC_idx=intersect(find(allsessionfram(:,11)<95),temp);
thecell{2}=allsessionfram(PFC_Pry_nonPC_idx,13)';
% figure 2 F
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


if tempi == 1
    widthr=0.2;
scatter(widthfactor.*(widthr*rand(length(temp{tempi}),1)) + tempi*ones(length(temp{tempi}),1) + 0.14,...
    temp{tempi},5,'filled','MarkerFaceColor',[0.4660 0.6740 0.1880])
end

if tempi == 3
    widthr=0.2;
scatter(widthfactor.*(widthr*rand(length(temp{tempi}),1)) + tempi*ones(length(temp{tempi}),1) + 0.14,...
    temp{tempi},5,'filled','MarkerFaceColor',[0.4660 0.6740 0.1880])
end

if tempi == 2
    widthr=0.30;
scatter(widthfactor.*(widthr*rand(length(temp{tempi}),1)) + tempi*ones(length(temp{tempi}),1) + 0.14,...
    temp{tempi},5,'filled','MarkerFaceColor',[0.7 0.7 0.7])   
end

if tempi == 4
    widthr=0.30;
scatter(widthfactor.*(widthr*rand(length(temp{tempi}),1)) + tempi*ones(length(temp{tempi}),1) + 0.14,...
    temp{tempi},5,'filled','MarkerFaceColor',[0.7 0.7 0.7])   
end

hold on
end

xlim([0.5 4.8])
ylim([-1 1])
yticks([-1:0.5:1])
box off
%% ranksum
[p,h]=ranksum(thecell{1},thecell{2}) % 4.8366e-06
[p,h]=ranksum(thecell{3},thecell{4}) % 0.0021
[p,h]=ranksum(thecell{1},thecell{3}) % 1














%% mxfr

thecell=cell(1,4);
temp=find(allsessionfram(:,4)==21);
%length(intersect(find(allsessionfram(:,11)>=95),temp))/length(temp) % HPC % Pry place selective cell/all Pry cell = 74/257 = 28.79%
HPC_Pry_PC_idx=intersect(find(allsessionfram(:,11)>=95),temp);
thecell{3}=allsessionfram(HPC_Pry_PC_idx,14)';
HPC_Pry_nonPC_idx=intersect(find(allsessionfram(:,11)<95),temp);
thecell{4}=allsessionfram(HPC_Pry_nonPC_idx,14)';
temp=find(allsessionfram(:,4)==11);
%length(intersect(find(allsessionfram(:,11)>=95),temp))/length(temp)% PFC Pry PC % 81/204 39.71
PFC_Pry_PC_idx=intersect(find(allsessionfram(:,11)>=95),temp);
thecell{1}=allsessionfram(PFC_Pry_PC_idx,14)';
PFC_Pry_nonPC_idx=intersect(find(allsessionfram(:,11)<95),temp);
thecell{2}=allsessionfram(PFC_Pry_nonPC_idx,14)';
%% figure 2 F
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

[p,h]=ranksum([thecell{1},thecell{2}],[thecell{3},thecell{4}])
