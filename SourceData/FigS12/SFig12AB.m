

%% clear loading and comparing
clear
%(go to Y:\weichuanyao\Analyse\3Dmaze230529\M3DPfModelExplaination\m231016ModelPFCHPCcomparing\231017version)
figure('Position',[100,100,1000,300])
subplot(151)
load('Envec.mat', 'AllSIsig');b=AllSIsig(2,:);clear AllSIsig
load('Rr.mat', 'AllSIsig');a=AllSIsig(2,:);clear AllSIsig
boxplot([a,b]',num2str([a*0+1,b*0+2]'),'Colors','k','PlotStyle','compact','MedianStyle','line','Widths',0.20,'Symbol','k')
hold on
scatter(a*0+1.1,a)
hold on
scatter(b*0+2.1,b)
xlim([0.5 2.5])
mean(a)
mean(b)
[h,p]=ttest2(a,b)


subplot(152)
load('Envec.mat', 'AllSIsig');b=AllSIsig(3,:);clear AllSIsig
load('Rr.mat', 'AllSIsig');a=AllSIsig(3,:);clear AllSIsig
boxplot([a,b]',num2str([a*0+1,b*0+2]'),'Colors','k','PlotStyle','compact','MedianStyle','line','Widths',0.20,'Symbol','k')
hold on
scatter(a*0+1.1,a)
hold on
scatter(b*0+2.1,b)
xlim([0.5 2.5])
mean(a)
mean(b)
[h,p]=ttest2(a,b)

subplot(153)
load('Envec.mat', 'AllSIsig');b=AllSIsig(4,:);clear AllSIsig
load('Rr.mat', 'AllSIsig');a=AllSIsig(4,:);clear AllSIsig
boxplot([a,b]',num2str([a*0+1,b*0+2]'),'Colors','k','PlotStyle','compact','MedianStyle','line','Widths',0.20,'Symbol','k')
hold on
scatter(a*0+1.1,a)
hold on
scatter(b*0+2.1,b)
xlim([0.5 2.5])
mean(a)
mean(b)
[h,p]=ttest2(a,b)

subplot(154)
load('Envec.mat', 'AllSIsig');b=AllSIsig(5,:);clear AllSIsig
load('Rr.mat', 'AllSIsig');a=AllSIsig(5,:);clear AllSIsig
boxplot([a,b]',num2str([a*0+1,b*0+2]'),'Colors','k','PlotStyle','compact','MedianStyle','line','Widths',0.20,'Symbol','k')
hold on
scatter(a*0+1.1,a+(rand(1,length(a))-0.5)*0.18)
hold on
scatter(b*0+2.1,b+(rand(1,length(b))-0.5)*0.18)
xlim([0.5 2.5])
mean(a)
mean(b)
[h,p]=ttest2(a,b)

subplot(155)
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
hold on
scatter(a*0+1.1,a*0.0750*0.0750*0.0750)
hold on
scatter(b*0+2.1,b*0.0750*0.0750*0.0750)
xlim([0.5 2.5])


mean(a)
mean(b)

[h,p]=ttest2(a*0.0750*0.0750*0.0750,b*0.0750*0.0750*0.0750)
