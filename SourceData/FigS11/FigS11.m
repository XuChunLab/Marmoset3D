
load('FigS11.mat', 'checkPFC')
check=checkPFC;

figure('Position',[300 300 200 350])
y=[check(:,1);check(:,2)]
x=[num2str(check(:,1)*0+1);num2str(check(:,2)*0+2)]
boxplot(y,x,'Colors','k','PlotStyle','compact','MedianStyle','line','Widths',0.20,'Symbol','k')
[a,b]=ttest(check(:,1),check(:,2))




load('FigS11.mat', 'checkHPC')
check=checkHPC;

figure('Position',[300 300 200 350])
y=[check(:,1);check(:,2)]
x=[num2str(check(:,1)*0+1);num2str(check(:,2)*0+2)]
boxplot(y,x,'Colors','k','PlotStyle','compact','MedianStyle','line','Widths',0.20,'Symbol','k')
[a,b]=ttest(check(:,1),check(:,2))


[p,h]=ranksum(checkHPC(:,1)-checkHPC(:,2),checkPFC(:,1)-checkPFC(:,2))
