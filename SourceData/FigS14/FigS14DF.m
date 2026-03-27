


clear
close all
clc
load('FigS14DF1.mat')
load('FigS14DF2.mat')

%% D and F
figure
subplot(121)
ranksum(overlapratiao,nanoverlapratiao)
y=[overlapratiao,nanoverlapratiao]
x=[overlapratiao*0+1,nanoverlapratiao*0+2]
boxplot(y,x,'Colors','k','PlotStyle','compact','MedianStyle','line','Widths',0.20,'Symbol','k')
xlim([0 3])
ylim([0 0.5])
subplot(122)
ranksum(overlapdaodaratio,nanoverlapdaodaratio)
y=[overlapdaodaratio,nanoverlapdaodaratio]
x=[overlapdaodaratio*0+1,nanoverlapdaodaratio*0+2]
boxplot(y,x,'Colors','k','PlotStyle','compact','MedianStyle','line','Widths',0.20,'Symbol','k')
xlim([0 3])
ylim([0 1])