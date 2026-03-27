
load('Fig2G.mat')

temp=intersect(find(allsessionfram(:,4)==11),find(allsessionfram(:,11)>=95));
thecell{1}=allsessionfram(temp,27)';

temp=intersect(find(allsessionfram(:,4)==11),find(allsessionfram(:,11)<95));
thecell{2}=allsessionfram(temp,27)';

temp=intersect(find(allsessionfram(:,4)==21),find(allsessionfram(:,11)>=95));
thecell{3}=allsessionfram(temp,27)';

temp=intersect(find(allsessionfram(:,4)==21),find(allsessionfram(:,11)<95));
thecell{4}=allsessionfram(temp,27)';



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
ylim([0 12])
%yticks([-1:0.2:1])
box off

%%

[p,h]=ranksum(thecell{1},thecell{2}) % p=0.3621         0.05-0.01-0.001
[p,h]=ranksum(thecell{3},thecell{4})  %  0.1958     
[p,h]=ranksum(thecell{1},thecell{3})  %  5.1199e-05