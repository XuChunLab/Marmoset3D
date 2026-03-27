

clear


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
load('Envec.mat', 'AllSIsig');b=1./AllSIsig(3,:);clear AllSIsig
load('Rr.mat', 'AllSIsig');a=1./AllSIsig(3,:);clear AllSIsig
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


