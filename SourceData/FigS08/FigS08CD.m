

%% m240620SIonAxisPlot

% cite S7_A_240617

clear

load('Y:\weichuanyao\Analyse\3Dmaze240523\ThreeDSelectiveCell\allsessionfram.mat')
temp=find(allsessionfram(:,4)==11);
%length(intersect(find(allsessionfram(:,11)>=95),temp))/length(temp)% PFC Pry PC % 81/204 39.71
PFC_Pry_PC_idx=intersect(find(allsessionfram(:,11)>=95),temp);

temp=find(allsessionfram(:,4)==21);
HPC_Pry_PC_idx=intersect(find(allsessionfram(:,11)>=95),temp);


thecell{1}=allsessionfram(PFC_Pry_PC_idx,15)';
thecell{2}=allsessionfram(PFC_Pry_PC_idx,16)';
thecell{3}=allsessionfram(PFC_Pry_PC_idx,17)';

thecell{4}=allsessionfram(HPC_Pry_PC_idx,15)';
thecell{5}=allsessionfram(HPC_Pry_PC_idx,16)';
thecell{6}=allsessionfram(HPC_Pry_PC_idx,17)';

figure('Position',[400,400,900,450])
temp=cell(1,6);
y=[];x=[];
for tempi=1:6
    temp{tempi}=sort(thecell{tempi},'descend')';
    y=[y;temp{tempi}];
    x=[x;repmat(num2str(tempi),length(temp{tempi}),1)];% length('9') is 1, length('10') is 2
end
boxplot(y,x,'Colors','k','PlotStyle','compact','MedianStyle','line','Widths',0.20,'Symbol','k')
hold on

for tempi=1:6
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
    temp{tempi},5,'filled','MarkerFaceColor',[0.4660 0.6740 0.1880])

end

xlim([0.5 6.8])
ylim([0 0.9])
%yticks([-1:0.2:1])
box off

[p1,h1]=signrank(thecell{1},thecell{2})
[p2,h2]=signrank(thecell{1},thecell{3})
[p3,h3]=signrank(thecell{2},thecell{3})


[p1,h1]=signrank(thecell{4},thecell{5})
[p2,h2]=signrank(thecell{5},thecell{6})
[p3,h3]=signrank(thecell{4},thecell{6})


[p1,h1]=ranksum(thecell{1},thecell{2})% 0.3695
[p2,h2]=ranksum(thecell{1},thecell{3})% 0.5732
[p3,h3]=ranksum(thecell{2},thecell{3})% 0.1388


[p1,h1]=ranksum(thecell{4},thecell{5})%0.1446
[p2,h2]=ranksum(thecell{5},thecell{6})% 0.0317
[p3,h3]=ranksum(thecell{4},thecell{6})%0.2753
%% m240620SIonAxisPlot

% cite S7_A_240617

clear

load('Y:\weichuanyao\Analyse\3Dmaze240523\ThreeDSelectiveCell\allsessionfram.mat')
temp=find(allsessionfram(:,4)==11);
%length(intersect(find(allsessionfram(:,11)>=95),temp))/length(temp)% PFC Pry PC % 81/204 39.71
PFC_Pry_PC_idx=intersect(find(allsessionfram(:,11)>=95),temp);

temp=find(allsessionfram(:,4)==21);
HPC_Pry_PC_idx=intersect(find(allsessionfram(:,11)>=95),temp);


thecell{1}=allsessionfram(PFC_Pry_PC_idx,21)';
thecell{2}=allsessionfram(PFC_Pry_PC_idx,22)';
thecell{3}=allsessionfram(PFC_Pry_PC_idx,23)';

thecell{4}=allsessionfram(HPC_Pry_PC_idx,21)';
thecell{5}=allsessionfram(HPC_Pry_PC_idx,22)';
thecell{6}=allsessionfram(HPC_Pry_PC_idx,23)';

figure('Position',[400,400,900,450])
temp=cell(1,6);
y=[];x=[];
for tempi=1:6
    temp{tempi}=sort(thecell{tempi},'descend')';
    y=[y;temp{tempi}];
    x=[x;repmat(num2str(tempi),length(temp{tempi}),1)];% length('9') is 1, length('10') is 2
end
boxplot(y,x,'Colors','k','PlotStyle','compact','MedianStyle','line','Widths',0.20,'Symbol','k')
hold on

for tempi=1:6
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
    temp{tempi},5,'filled','MarkerFaceColor',[0.4660 0.6740 0.1880])

end

xlim([0.5 6.8])
ylim([0.3 1])
%yticks([-1:0.2:1])
box off

[p1,h1]=signrank(thecell{1},thecell{2})
[p2,h2]=signrank(thecell{1},thecell{3})
[p3,h3]=signrank(thecell{2},thecell{3})


[p1,h1]=signrank(thecell{4},thecell{5})
[p2,h2]=signrank(thecell{5},thecell{6})
[p3,h3]=signrank(thecell{4},thecell{6})

[p1,h1]=ranksum(thecell{1},thecell{2})  %%0.7654
[p2,h2]=ranksum(thecell{1},thecell{3})  % 6.0981e-04
[p3,h3]=ranksum(thecell{2},thecell{3}) % 0.0017

[p1,h1]=ranksum(thecell{4},thecell{5})  %0.8148
[p2,h2]=ranksum(thecell{5},thecell{6})   %0.2415
[p3,h3]=ranksum(thecell{4},thecell{6})  %0.3879