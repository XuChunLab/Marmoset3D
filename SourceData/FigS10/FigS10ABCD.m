


clear
close all
clc

load('FigS10ABC.mat')

A6_PC=  intersect(   intersect(find(allsessionfram(:,2)<=3),find(allsessionfram(:,4)==11))     ,find(allsessionfram(:,11)>=95))
A8_PC=  intersect(   intersect(find(allsessionfram(:,2)==5),find(allsessionfram(:,4)==11))     ,find(allsessionfram(:,11)>=95))
A910_PC=intersect(   intersect(find(allsessionfram(:,2)==4),find(allsessionfram(:,4)==11))     ,find(allsessionfram(:,11)>=95))
CA1_PC= intersect(   intersect(find(allsessionfram(:,2)>=5),find(allsessionfram(:,4)==21))     ,find(allsessionfram(:,11)>=95))
CA23_PC=intersect(   intersect(find(allsessionfram(:,2)<=4),find(allsessionfram(:,4)==21))     ,find(allsessionfram(:,11)>=95))

A6_nonPC=  intersect(   intersect(find(allsessionfram(:,2)<=3),find(allsessionfram(:,4)==11))     ,find(allsessionfram(:,11)<95))
A8_nonPC=  intersect(   intersect(find(allsessionfram(:,2)==5),find(allsessionfram(:,4)==11))     ,find(allsessionfram(:,11)<95))
A910_nonPC=intersect(   intersect(find(allsessionfram(:,2)==4),find(allsessionfram(:,4)==11))     ,find(allsessionfram(:,11)<95))
CA1_nonPC= intersect(   intersect(find(allsessionfram(:,2)>=5),find(allsessionfram(:,4)==21))     ,find(allsessionfram(:,11)<95))
CA23_nonPC=intersect(   intersect(find(allsessionfram(:,2)<=4),find(allsessionfram(:,4)==21))     ,find(allsessionfram(:,11)<95))


figure('Position',[400,400,1200,400])  
%% A

coli=10;subplot(141)

y=[allsessionfram(A6_PC,coli);allsessionfram(A8_PC,coli);allsessionfram(A910_PC,coli);allsessionfram(CA1_PC,coli);allsessionfram(CA23_PC,coli)];
x=[allsessionfram(A6_PC,coli)*0+1;allsessionfram(A8_PC,coli)*0+2;allsessionfram(A910_PC,coli)*0+3;allsessionfram(CA1_PC,coli)*0+4;allsessionfram(CA23_PC,coli)*0+5];
boxplot(y,x,'Colors','k','PlotStyle','compact','MedianStyle','line','Widths',0.20,'Symbol','k')
ylim([0 1.2])
box off

ranksum(allsessionfram(A6_PC,coli),allsessionfram(A8_PC,coli))
ranksum(allsessionfram(A910_PC,coli),allsessionfram(A8_PC,coli))
ranksum(allsessionfram(A6_PC,coli),allsessionfram(A910_PC,coli))

ranksum(allsessionfram(CA1_PC,coli),allsessionfram(CA23_PC,coli))

%% B

coli=12;subplot(142)

y=[allsessionfram(A6_PC,coli);allsessionfram(A8_PC,coli);allsessionfram(A910_PC,coli);allsessionfram(CA1_PC,coli);allsessionfram(CA23_PC,coli)];
x=[allsessionfram(A6_PC,coli)*0+1;allsessionfram(A8_PC,coli)*0+2;allsessionfram(A910_PC,coli)*0+3;allsessionfram(CA1_PC,coli)*0+4;allsessionfram(CA23_PC,coli)*0+5];
boxplot(y,x,'Colors','k','PlotStyle','compact','MedianStyle','line','Widths',0.20,'Symbol','k')
ylim([0.2 1.2])
box off

ranksum(allsessionfram(A6_PC,coli),allsessionfram(A8_PC,coli))
ranksum(allsessionfram(A910_PC,coli),allsessionfram(A8_PC,coli))
ranksum(allsessionfram(A6_PC,coli),allsessionfram(A910_PC,coli))

ranksum(allsessionfram(CA1_PC,coli),allsessionfram(CA23_PC,coli))


%% C

coli=13;subplot(143)

y=[allsessionfram(A6_PC,coli);allsessionfram(A8_PC,coli);allsessionfram(A910_PC,coli);allsessionfram(CA1_PC,coli);allsessionfram(CA23_PC,coli)];
x=[allsessionfram(A6_PC,coli)*0+1;allsessionfram(A8_PC,coli)*0+2;allsessionfram(A910_PC,coli)*0+3;allsessionfram(CA1_PC,coli)*0+4;allsessionfram(CA23_PC,coli)*0+5];
boxplot(y,x,'Colors','k','PlotStyle','compact','MedianStyle','line','Widths',0.20,'Symbol','k')
ylim([-1 1])
box off

ranksum(allsessionfram(A6_PC,coli),allsessionfram(A8_PC,coli))
ranksum(allsessionfram(A910_PC,coli),allsessionfram(A8_PC,coli))
ranksum(allsessionfram(A6_PC,coli),allsessionfram(A910_PC,coli))

ranksum(allsessionfram(CA1_PC,coli),allsessionfram(CA23_PC,coli))


%% D
load('FigS10D.mat', 'allsessionfram')

coli=27;subplot(144)

y=[allsessionfram(A6_PC,coli);allsessionfram(A8_PC,coli);allsessionfram(A910_PC,coli);allsessionfram(CA1_PC,coli);allsessionfram(CA23_PC,coli)];
x=[allsessionfram(A6_PC,coli)*0+1;allsessionfram(A8_PC,coli)*0+2;allsessionfram(A910_PC,coli)*0+3;allsessionfram(CA1_PC,coli)*0+4;allsessionfram(CA23_PC,coli)*0+5];
boxplot(y,x,'Colors','k','PlotStyle','compact','MedianStyle','line','Widths',0.20,'Symbol','k')
ylim([0 10])
box off

ranksum(allsessionfram(A6_PC,coli),allsessionfram(A8_PC,coli))
ranksum(allsessionfram(A910_PC,coli),allsessionfram(A8_PC,coli))
ranksum(allsessionfram(A6_PC,coli),allsessionfram(A910_PC,coli))

ranksum(allsessionfram(CA1_PC,coli),allsessionfram(CA23_PC,coli))

