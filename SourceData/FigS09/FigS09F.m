

load('FigS09F.mat')
figure
temp1=corrlationMat(find(corrlationMat(:,1)>=95),10);
temp2=corrlationMat(find(corrlationMat(:,1)<95),2);
boxplot([temp1;temp2],[temp1*0+1;temp2*0+2],'Colors','k','PlotStyle','compact','MedianStyle','line','Widths',0.20,'Symbol','k')
ylim([-1,1])
yticks([-1:0.5:1])
ranksum(temp1,temp2)