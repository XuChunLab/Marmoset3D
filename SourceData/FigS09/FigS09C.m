



load('FigS09C.mat')
figure
ranksum(corrlationMat(find(corrlationMat(:,4)>=95),3),corrlationMat(find(corrlationMat(:,4)<95),3))
temp1=corrlationMat(find(corrlationMat(:,4)>=95),3);
temp2=corrlationMat(find(corrlationMat(:,4)<95),3);
boxplot([temp1;temp2],[temp1*0+1;temp2*0+2],'Colors','k','PlotStyle','compact','MedianStyle','line','Widths',0.20,'Symbol','k')
ylim([-1,1])
yticks([-1:0.5:1])