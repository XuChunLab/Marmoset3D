
%temp=[center,vol*(0.075^3),EquivDiameter,max_xyz*0.075,min_xyz*0.075,elongationindex,sphericity,stats.Orientation];
% elong 12 spher 13       % elongSig 17 spherSig 18


close all
clear
clc
load('ReservedPlaceFiledProperties.mat')

figure('Position',[400,400,300,300])

temp=cell(1,2);
y=[];x=[];

    temp{1}=sort([all{1}(:,12)',all{2}(:,12)'],'descend')';
    [a,b]=sort([all{1}(:,12)',all{2}(:,12)'],'descend');
    y=[y;a'];
    tempp=[all{1}(:,17)',all{2}(:,17)'];
    PFCsig=tempp(b);
    x=[x;repmat(num2str(1),length(temp{1}),1)];% length('9') is 1, length('10') is 2

    temp{2}=sort([all{3}(:,12)',all{4}(:,12)',all{5}(:,12)',all{6}(:,12)'],'descend')';
    y=[y;temp{2}];
    x=[x;repmat(num2str(2),length(temp{2}),1)];% length('9') is 1, length('10') is 2

%boxplot(y,x,'Colors','k','PlotStyle','compact','MedianStyle','line','Widths',0.36)
boxplot(y,x,'Colors','k','PlotStyle','compact','MedianStyle','line','Widths',0.20,'Symbol','k')
hold on

for tempi=1:2
    widthr=0.5;
    %windowtofindneardots=(max(temp{tempi})-min(temp{tempi}))/smootherwindowbin;
    windowtofindneardots=0.5; 
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
    tempp=temp{tempi};
    tempp=tempp(find(PFCsig==1));
scatter(widthfactor(find(PFCsig==1)).*(widthr*rand(length(tempp),1)) + tempi*ones(length(tempp),1) + 0.14,...
    tempp,18,'filled','MarkerFaceColor',[0.4660 0.6740 0.1880])

    tempp=temp{tempi};
    tempp=tempp(setdiff(1:length(PFCsig),find(PFCsig==1)));
scatter(widthfactor(setdiff(1:length(PFCsig),find(PFCsig==1))).*(widthr*rand(length(tempp),1)) + tempi*ones(length(tempp),1) + 0.14,...
    tempp,18,'filled','MarkerFaceColor',[0.4660 0.6740 0.1880])


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
%ylim([0 7])
%yticks([1:8])
box off
hold on
plot([1.8 1.8],[0 8])
hold on
plot([2.8 2.8],[0 8])



