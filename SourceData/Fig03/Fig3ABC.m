 

%% load data
clear
clc
close all
load('Fig3ABCIJFHD.mat')
allsessionfram_filed(allsessionfram_filed(:,4)<10,:)=[];
allsessionfram_filed(isnan(allsessionfram_filed(:,4)),:)=[];

%% fig A

k=ones(308,1);
for i=1:307
    if sum(allsessionfram_filed(i+1,5:9)-allsessionfram_filed(i,5:9))==0
        k(i)=0;
    end
end
temp=allsessionfram_filed(k==1,[4,10,12]);
pfc_pry_PC_filednumber=temp(find(temp(:,1)==11),2);
hpc_pry_PC_filednumber=temp(find(temp(:,1)==21),2);

thecell=cell(1,2);
thecell{1}=pfc_pry_PC_filednumber;
thecell{2}=hpc_pry_PC_filednumber;
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
    windowtofindneardots=(max(temp{tempi})-min(temp{tempi}))/16; 
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

widthr=0.30;
scatter(widthfactor.*(widthr*rand(length(temp{tempi}),1)) + tempi*ones(length(temp{tempi}),1) + 0.14,...
temp{tempi},8,'filled','MarkerFaceColor',[0.7 0.7 0.7])   

hold on
end
xlim([0.5 2.8])
ylim([0 6])
yticks([0:1:6])
box off

%% C

temp=allsessionfram_filed(k==1,[4,10,12]);
pfc_pry_PC=temp(find(temp(:,1)==11),3);
hpc_pry_PC=temp(find(temp(:,1)==21),3);

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
    x=[x;repmat(num2str(tempi),length(temp{tempi}),1)]; % length('9') is 1, length('10') is 2
end
boxplot(y,x,'Colors','k','PlotStyle','compact','MedianStyle','line','Widths',0.20,'Symbol','k')
hold on

for tempi=1:2
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

widthr=0.15;
scatter(widthfactor.*(widthr*rand(length(temp{tempi}),1)) + tempi*ones(length(temp{tempi}),1) + 0.14,...
temp{tempi},8,'filled','MarkerFaceColor',[0.7 0.7 0.7])   

hold on
end
xlim([0.5 2.8])
ylim([0 0.4])
%yticks([0:1:6])
box off



%% B
allsessionfram_filed(find(allsessionfram_filed(:,10)==0),:)=[];%% need to to exclude the vol-size=0 filed

pfc_pry_PC=allsessionfram_filed(find(allsessionfram_filed(:,4)==11),11);
hpc_pry_PC=allsessionfram_filed(find(allsessionfram_filed(:,4)==21),11);

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
    windowtofindneardots=(max(temp{tempi})-min(temp{tempi}))/18; %% here 16 is to adjust the smoother
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

widthr=0.26;
scatter(widthfactor.*(widthr*rand(length(temp{tempi}),1)) + tempi*ones(length(temp{tempi}),1) + 0.14,...
temp{tempi},8,'filled','MarkerFaceColor',[0.7 0.7 0.7])   

hold on
end
xlim([0.5 2.8])
ylim([0 0.4])
%yticks([0:1:6])
box off


