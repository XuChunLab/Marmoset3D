


clear
clc
close all
load('Fig4DE.mat')

%% E, pc-pc pc-nonpc nonpc-pc non-non

SourceData=zeros(11,4)*nan;
for i=1:11
    temp1=intersect(find(ConnectionData{i,4}>=95),union(find(ConnectionData{i,2}==11),find(ConnectionData{i,2}==21))); 
    temp2=intersect(find(ConnectionData{i,4} <95),union(find(ConnectionData{i,2}==11),find(ConnectionData{i,2}==21)));  
    if length(temp1)>0
        SourceData(i,1)=sum(sum(~isnan(ConnectionData{i,3}(temp1,temp1))))/(length(temp1)*length(temp1));
    end
    if length(temp2)>0
        SourceData(i,4)=sum(sum(~isnan(ConnectionData{i,3}(temp2,temp2))))/(length(temp2)*length(temp2));
    end
    if length(temp1)>0 & length(temp2)>0
        SourceData(i,2)=sum(sum(~isnan(ConnectionData{i,3}(temp1,temp2))))/(length(temp1)*length(temp2));
        SourceData(i,3)=sum(sum(~isnan(ConnectionData{i,3}(temp2,temp1))))/(length(temp2)*length(temp1));
    end
end

figure('Position',[50 50 200 200])
hold on

scatter(ones(11,1)*1,SourceData(:,1))
scatter(ones(11,1)*2.5,SourceData(:,2))
scatter(ones(11,1)*2.5,SourceData(:,3))
scatter(ones(11,1)*4,SourceData(:,4))

ylim([0 1])

[p,h]=ranksum(SourceData(:,1),SourceData(:,4))                   %  0.0241
[p,h]=ranksum(SourceData(:,1),[SourceData(:,2);SourceData(:,3)]) %   0.0366
[p,h]=ranksum(SourceData(:,4),[SourceData(:,2);SourceData(:,3)]) %    0.2737

%% D, pfc-pfc pfc-hpc hpc-pfc hpc-hpc
SourceData=zeros(11,4)*nan;
for i=1:11
    temp1=find(ConnectionData{i,2}==11); 
    temp2=find(ConnectionData{i,2}==21); 
    if length(temp1)>0
        SourceData(i,1)=sum(sum(~isnan(ConnectionData{i,3}(temp1,temp1))))/(length(temp1)*length(temp1));
    end
    if length(temp2)>0
        SourceData(i,4)=sum(sum(~isnan(ConnectionData{i,3}(temp2,temp2))))/(length(temp2)*length(temp2));
    end
    if length(temp1)>0 & length(temp2)>0
        SourceData(i,2)=sum(sum(~isnan(ConnectionData{i,3}(temp1,temp2))))/(length(temp1)*length(temp2));
        SourceData(i,3)=sum(sum(~isnan(ConnectionData{i,3}(temp2,temp1))))/(length(temp2)*length(temp1));
    end
end

figure('Position',[50 50 200 200])
hold on

scatter(ones(11,1)*1,SourceData(:,1))
scatter(ones(11,1)*2.5,SourceData(:,2))
scatter(ones(11,1)*2.5,SourceData(:,3))
scatter(ones(11,1)*4,SourceData(:,4))
ylim([0 1])

[p,h]=ranksum(SourceData(:,1),SourceData(:,4))%  0.0247
[p,h]=ranksum(SourceData(:,1),[SourceData(:,2);SourceData(:,3)]) %   0.5705
[p,h]=ranksum(SourceData(:,4),[SourceData(:,2);SourceData(:,3)]) %    0.0392


%%
thecell=cell(1,3);
temp=SourceData(:,1);thecell{1} = temp(~isnan(temp));
temp=[SourceData(:,2);SourceData(:,3)];thecell{2} = temp(~isnan(temp));
temp=SourceData(:,4);thecell{3} = temp(~isnan(temp));
figure('Position',[400,400,450,450])
temp=cell(1,3);
y=[];x=[];
for tempi=1:3
    temp{tempi}=sort(thecell{tempi},'descend');
    y=[y;temp{tempi}];
    x=[x;repmat(num2str(tempi),length(temp{tempi}),1)];% length('9') is 1, length('10') is 2
end
boxplot(y,x,'Colors','k','PlotStyle','compact','MedianStyle','line','Widths',0.20,'Symbol','k')
hold on

for tempi=1:3
    windowtofindneardots=(max(temp{tempi})-min(temp{tempi}))/16; %% here 16 is to adjust the smoother
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

widthr=0.20;
scatter(widthfactor.*(widthr*rand(length(temp{tempi}),1)) + tempi*ones(length(temp{tempi}),1) + 0.14,...
temp{tempi},12,'filled','MarkerFaceColor',[0.7 0.7 0.7])   

hold on
end
xlim([0.5 3.8])
ylim([0 1])
%yticks([-1:0.2:1])
box off


