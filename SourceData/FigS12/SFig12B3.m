

%% m231128PFCHPCtotalsizeperPC

cd('Y:\weichuanyao\Analyse\3Dmaze230529\M3DPfModelExplaination\m231016ModelPFCHPCcomparing\231021versionForCheck')

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
close all
%boxplot(y,x,'Colors','k','PlotStyle','compact','MedianStyle','line','Widths',0.36)
boxplot(y,x,'Colors','k','PlotStyle','compact','MedianStyle','line','Widths',0.20,'Symbol','k')
hold on
scatter(PFC*0+1+0.15+0.3*rand(length(PFC),1),PFC)
hold on
scatter(HPC*0+2+0.15+0.3*rand(length(HPC),1),HPC)

xlim([0.7 2.7])
%ylim([0 0.5])