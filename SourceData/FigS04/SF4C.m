%% m230718ScienceBehavioral
clear
load('F1M_ScienceBehaviorFlex.mat')
load('F1M_ScienceBehaviorTetro.mat')

%%
figure('Position',[400,400,100,260])
temp1=sort(F1M_ScienceBehaviorTetro(:,6),'descend');
temp2=sort(F1M_ScienceBehaviorFlex(:,6),'descend');
y=[temp1;temp2];
x={'1';'1';'1';'1';'1';'1';'1';'1';'1';'1';'1';'1';...
    '2';'2';'2';'2';'2';'2';'2';'2';'2';'2';};
boxplot(y,x,'Colors','k','PlotStyle','compact','MedianStyle','line','Widths',0.36)
hold on
%temp1
windowtofindneardots=(max(temp1)-min(temp1))/4; widthr=0.13;
widthfactor=zeros(size(temp1));
for i=1:length(temp1)
    a=find(temp1>(temp1(i)-windowtofindneardots/2));
    b=find(temp1<(temp1(i)+windowtofindneardots/2));
    widthfactor(i)=length(intersect(a,b))-1;
end
widthfactor=widthfactor/max(widthfactor);
scatter(widthfactor.*(widthr*(rand(length(temp1),1)-0.5)*2) + 1*ones(length(temp1),1),...
    temp1)
hold on
%temp2
windowtofindneardots=(max(temp2)-min(temp2))/4; widthr=0.13;
widthfactor=zeros(size(temp2));
for i=1:length(temp2)
    a=find(temp2>(temp2(i)-windowtofindneardots/2));
    b=find(temp2<(temp2(i)+windowtofindneardots/2));
    widthfactor(i)=length(intersect(a,b))-1;
end
widthfactor=widthfactor/max(widthfactor);
scatter(widthfactor.*(widthr*(rand(length(temp2),1)-0.5)*2) + 2*ones(length(temp2),1),...
    temp2)

box off
ttest2(temp1,temp2)
ylabel('Peak speed (m/s)')
%%
figure('Position',[400,400,100,260])
temp1=sort(F1M_ScienceBehaviorTetro(:,5),'descend');
temp2=sort(F1M_ScienceBehaviorFlex(:,5),'descend');
y=[temp1;temp2];
x={'1';'1';'1';'1';'1';'1';'1';'1';'1';'1';'1';'1';...
    '2';'2';'2';'2';'2';'2';'2';'2';'2';'2';};
boxplot(y,x,'Colors','k','PlotStyle','compact','MedianStyle','line','Widths',0.36)
hold on
%temp1
windowtofindneardots=(max(temp1)-min(temp1))/4; widthr=0.13;
widthfactor=zeros(size(temp1));
for i=1:length(temp1)
    a=find(temp1>(temp1(i)-windowtofindneardots/2));
    b=find(temp1<(temp1(i)+windowtofindneardots/2));
    widthfactor(i)=length(intersect(a,b))-1;
end
widthfactor=widthfactor/max(widthfactor);
scatter(widthfactor.*(widthr*(rand(length(temp1),1)-0.5)*2) + 1*ones(length(temp1),1),...
    temp1)
hold on
%temp2
windowtofindneardots=(max(temp2)-min(temp2))/4; widthr=0.13;
widthfactor=zeros(size(temp2));
for i=1:length(temp2)
    a=find(temp2>(temp2(i)-windowtofindneardots/2));
    b=find(temp2<(temp2(i)+windowtofindneardots/2));
    widthfactor(i)=length(intersect(a,b))-1;
end
widthfactor=widthfactor/max(widthfactor);
scatter(widthfactor.*(widthr*(rand(length(temp2),1)-0.5)*2) + 2*ones(length(temp2),1),...
    temp2)

box off
ttest2(temp1,temp2)
%%
figure('Position',[400,400,100,260])
temp1=sort(F1M_ScienceBehaviorTetro(:,4),'descend');
temp2=sort(F1M_ScienceBehaviorFlex(:,4),'descend');
y=[temp1;temp2];
x={'1';'1';'1';'1';'1';'1';'1';'1';'1';'1';'1';'1';...
    '2';'2';'2';'2';'2';'2';'2';'2';'2';'2';};
boxplot(y,x,'Colors','k','PlotStyle','compact','MedianStyle','line','Widths',0.36)
hold on
%temp1
windowtofindneardots=(max(temp1)-min(temp1))/4; widthr=0.13;
widthfactor=zeros(size(temp1));
for i=1:length(temp1)
    a=find(temp1>(temp1(i)-windowtofindneardots/2));
    b=find(temp1<(temp1(i)+windowtofindneardots/2));
    widthfactor(i)=length(intersect(a,b))-1;
end
widthfactor=widthfactor/max(widthfactor);
scatter(widthfactor.*(widthr*(rand(length(temp1),1)-0.5)*2) + 1*ones(length(temp1),1),...
    temp1)
hold on
%temp2
windowtofindneardots=(max(temp2)-min(temp2))/4; widthr=0.13;
widthfactor=zeros(size(temp2));
for i=1:length(temp2)
    a=find(temp2>(temp2(i)-windowtofindneardots/2));
    b=find(temp2<(temp2(i)+windowtofindneardots/2));
    widthfactor(i)=length(intersect(a,b))-1;
end
widthfactor=widthfactor/max(widthfactor);
scatter(widthfactor.*(widthr*(rand(length(temp2),1)-0.5)*2) + 2*ones(length(temp2),1),...
    temp2)

box off
ttest2(temp1,temp2)

%%
figure('Position',[400,400,100,260])
temp1=sort(F1M_ScienceBehaviorTetro(:,3),'descend');
temp2=sort(F1M_ScienceBehaviorFlex(:,3),'descend');
y=[temp1;temp2];
x={'1';'1';'1';'1';'1';'1';'1';'1';'1';'1';'1';'1';...
    '2';'2';'2';'2';'2';'2';'2';'2';'2';'2';};
boxplot(y,x,'Colors','k','PlotStyle','compact','MedianStyle','line','Widths',0.36)
hold on
%temp1
windowtofindneardots=(max(temp1)-min(temp1))/4; widthr=0.13;
widthfactor=zeros(size(temp1));
for i=1:length(temp1)
    a=find(temp1>(temp1(i)-windowtofindneardots/2));
    b=find(temp1<(temp1(i)+windowtofindneardots/2));
    widthfactor(i)=length(intersect(a,b))-1;
end
widthfactor=widthfactor/max(widthfactor);
scatter(widthfactor.*(widthr*(rand(length(temp1),1)-0.5)*2) + 1*ones(length(temp1),1),...
    temp1)
hold on
%temp2
windowtofindneardots=(max(temp2)-min(temp2))/4; widthr=0.13;
widthfactor=zeros(size(temp2));
for i=1:length(temp2)
    a=find(temp2>(temp2(i)-windowtofindneardots/2));
    b=find(temp2<(temp2(i)+windowtofindneardots/2));
    widthfactor(i)=length(intersect(a,b))-1;
end
widthfactor=widthfactor/max(widthfactor);
scatter(widthfactor.*(widthr*(rand(length(temp2),1)-0.5)*2) + 2*ones(length(temp2),1),...
    temp2)

box off
ttest2(temp1,temp2)