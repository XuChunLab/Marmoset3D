
figure('Position',[100,100,1000,300])

subplot(151)
load('Envec.mat', 'AllSIsig');b=AllSIsig(5,:);clear AllSIsig
load('Rr.mat', 'AllSIsig');a=AllSIsig(5,:);clear AllSIsig
boxplot([a,b]',num2str([a*0+1,b*0+2]'),'Colors','k','PlotStyle','compact','MedianStyle','line','Widths',0.20,'Symbol','k')
xlim([0.5 2.5])
mean(a)
mean(b)
[h,p]=ttest2(a,b)

subplot(152)
load('Envec.mat', 'AllFiledproperties');b=[];
for i=1:size(AllFiledproperties,1)
    b=[b,AllFiledproperties{i,1}];
end
clear AllFiledproperties
load('Rr.mat', 'AllFiledproperties');a=[];
for i=1:size(AllFiledproperties,1)
    a=[a,AllFiledproperties{i,1}];
end
clear AllFiledproperties
% load('Envec.mat', 'AllSIsig');a=AllSIsig(5,:);clear AllSIsig
% load('Rr.mat', 'AllSIsig');b=AllSIsig(5,:);clear AllSIsig
boxplot([a*0.0750*0.0750*0.0750,b*0.0750*0.0750*0.0750]',num2str([a*0+1,b*0+2]'),'Colors','k','PlotStyle','compact','MedianStyle','line','Widths',0.20,'Symbol','k')
xlim([0.5 2.5])


mean(a)
mean(b)

[h,p]=ttest2(a*0.0750*0.0750*0.0750,b*0.0750*0.0750*0.0750)






subplot(153)
load('Rr.mat')
s=[];
for i=1:size(AllFiledproperties,1)
    s=[s,AllFiledproperties{i,1}];
end
s=s*0.0750*0.0750*0.0750;
PFC=[];count=0;
for i=1:691
    temp=0;
    if AllSIsig(5,i)
        temp=sum(s([1:AllSIsig(5,i)]+count));
    end
    PFC=[PFC;temp];
    count=count+AllSIsig(5,i);
end


load('Envec.mat')
s=[];
for i=1:size(AllFiledproperties,1)
    s=[s,AllFiledproperties{i,1}];
end
s=s*0.0750*0.0750*0.0750;
HPC=[];count=0;
for i=1:210
    temp=0;
    if AllSIsig(5,i)
        temp=sum(s([1:AllSIsig(5,i)]+count));
    end
    HPC=[HPC;temp];
    count=count+AllSIsig(5,i);
end


[h,p]=ttest2(PFC,HPC)

mean(PFC)
mean(HPC)


[h,p]=ttest2(HPC,PFC)
    y=[PFC;HPC];
    x=[num2str(PFC*0+1);num2str(HPC*0+2)];

boxplot(y,x,'Colors','k','PlotStyle','compact','MedianStyle','line','Widths',0.20,'Symbol','k')

    
