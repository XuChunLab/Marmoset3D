

%% load data
clear
clc
close all
load('SFig13BCEF.mat')
allsessionfram_filed(allsessionfram_filed(:,4)<10,:)=[];
allsessionfram_filed(isnan(allsessionfram_filed(:,4)),:)=[];
allsessionfram_filed(find(allsessionfram_filed(:,10)==0),:)=[];

%% B and E
close all

temp=allsessionfram_filed(find(allsessionfram_filed(:,4)==21),[26 27]);
figure
scatter(temp(:,2),temp(:,1))
temp1=temp(find(temp(:,2)>=95),1);
temp2=temp(find(temp(:,2)<95),1);
[p h]=ranksum(temp1,temp2) 

% 25/(25+139)=15.24%
% 14/(14+75)=15.73%


pfc_pry_PC=allsessionfram_filed(find(allsessionfram_filed(:,4)==11),[26]);
hpc_pry_PC=allsessionfram_filed(find(allsessionfram_filed(:,4)==21),[26]);

thecell=cell(1,2);
thecell{1}=pfc_pry_PC;
thecell{2}=hpc_pry_PC;
[p h]=ranksum(thecell{1},thecell{2})
figure('Position',[400,400,380,450])
temp=cell(1,2);
y=[];x=[];
for tempi=1:2
    temp{tempi}=sort(thecell{tempi},'descend');
    y=[y;temp{tempi}];
    x=[x;repmat(num2str(tempi),length(temp{tempi}),1)];% length('9') is 1, length('10') is 2
end
boxplot(y,x,'Colors','k','PlotStyle','compact','MedianStyle','line','Widths',0.20,'Symbol','k')
hold on

for tempi=1:2
    windowtofindneardots=(max(temp{tempi})-min(temp{tempi}))/12; %% here 16 is to adjust the smoother
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
temp{tempi},8,'filled','MarkerFaceColor',[0.7 0.7 0.7])   

hold on
end
xlim([0.5 2.8])
ylim([1 7])
box off
%% C F
close all

temp=allsessionfram_filed(find(allsessionfram_filed(:,4)==21),[28 29]);
figure
scatter(temp(:,2),temp(:,1))
temp1=temp(find(temp(:,2)>=95),1);
temp2=temp(find(temp(:,2)<95),1);
[p h]=ranksum(temp1,temp2) 

%23/(23+141)=14.02%
%17/(17+72)=19.10%


pfc_pry_PC=allsessionfram_filed(find(allsessionfram_filed(:,4)==11),[28]);
hpc_pry_PC=allsessionfram_filed(find(allsessionfram_filed(:,4)==21),[28]);


thecell=cell(1,2);
thecell{1}=pfc_pry_PC;
thecell{2}=hpc_pry_PC;
[p h]=ranksum(thecell{1},thecell{2})
figure('Position',[400,400,380,450])
temp=cell(1,2);
y=[];x=[];
for tempi=1:2
    temp{tempi}=sort(thecell{tempi},'descend');
    y=[y;temp{tempi}];
    x=[x;repmat(num2str(tempi),length(temp{tempi}),1)];% length('9') is 1, length('10') is 2
end
boxplot(y,x,'Colors','k','PlotStyle','compact','MedianStyle','line','Widths',0.20,'Symbol','k')
hold on

for tempi=1:2
    windowtofindneardots=(max(temp{tempi})-min(temp{tempi}))/12; %% here 16 is to adjust the smoother
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

widthr=0.16;
scatter(widthfactor.*(widthr*rand(length(temp{tempi}),1)) + tempi*ones(length(temp{tempi}),1) + 0.14,...
temp{tempi},8,'filled','MarkerFaceColor',[0.7 0.7 0.7])   

hold on
end
xlim([0.5 2.8])
ylim([0 1])
box off

