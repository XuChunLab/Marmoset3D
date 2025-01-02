%% m230816boxplot %% filed num
close all
clear
clc
load('ReservedPlaceFiledProperties.mat')

figure('Position',[400,400,300,300])
smootherwindowbin=6
temp=cell(1,2);
y=[];x=[];

    temp{1}=sort([all{1}(:,13)',all{2}(:,13)'],'descend')';
    y=[y;temp{1}];
    x=[x;repmat(num2str(1),length(temp{1}),1)];% length('9') is 1, length('10') is 2

    temp{2}=sort([all{3}(:,13)',all{4}(:,13)',all{5}(:,13)',all{6}(:,13)'],'descend')';
    y=[y;temp{2}];
    x=[x;repmat(num2str(2),length(temp{2}),1)];% length('9') is 1, length('10') is 2

%boxplot(y,x,'Colors','k','PlotStyle','compact','MedianStyle','line','Widths',0.36)
boxplot(y,x,'Colors','k','PlotStyle','compact','MedianStyle','line','Widths',0.20,'Symbol','k')
hold on

for tempi=1:2
    widthr=0.5;
    windowtofindneardots=(max(temp{tempi})-min(temp{tempi}))/smootherwindowbin;
    %windowtofindneardots=0.5; 
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


%scatter(widthfactor.*(widthr*(rand(length(temp{tempi}),1)-0.5)*2) + 1*ones(length(temp1),1),...
%    temp{tempi})
if length(intersect(tempi,[1])) == 1
scatter(widthfactor.*(widthr*rand(length(temp{tempi}),1)) + tempi*ones(length(temp{tempi}),1) + 0.14,...
    temp{tempi},18,'filled','MarkerFaceColor',[0.4660 0.6740 0.1880])
end
if length(intersect(tempi,[2])) == 1
scatter(widthfactor.*(widthr*rand(length(temp{tempi}),1)) + tempi*ones(length(temp{tempi}),1) + 0.14,...
    temp{tempi},18,'filled','MarkerFaceColor',[0.4660 0.6740 0.1880]) 
end
if length(intersect(tempi,[3])) == 1
scatter(widthfactor.*(widthr*rand(length(temp{tempi}),1)) + tempi*ones(length(temp{tempi}),1) + 0.14,...
    temp{tempi},18,'filled','MarkerFaceColor',[0.4660 0.6740 0.1880])
end


hold on
end

xlim([0.5 3])
ylim([0 1])
%yticks([1:8])
box off
hold on
plot([1.8 1.8],[0 8])
hold on
plot([2.8 2.8],[0 8])