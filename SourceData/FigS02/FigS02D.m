
clear

load('FigS2C1.mat')
load('FigS2C2.mat')
load('FigS2C3.mat')

visit=[Batch2Behavior230717Vsitingetc_Science,Batch2Behavior230717Vsitingetc_Xiaoquan,Batch2Behavior230717Vsitingetc_Nature]
a=zeros(20,20,10)
for i=1:size(visit,2)
    a=a+visit{1,i};
end
visit=a/size(visit,2);
temp=visit*nan;
for i=1:10
    temp(:,:,i)=visit(:,:,i)';
end


figure
subplot(131)
c=nanmean(nanmean(temp,3),1)
bar(c',1)
%ylim([0,max(c)])
xlim([0 21])

subplot(132)
c=nanmean(nanmean(temp,3),2)
bar(c',1)
%ylim([0,max(c)])
xlim([0 21])

subplot(133)
c=squeeze(nanmean(nanmean(temp),2))
bar(c',1)
%ylim([0,max(c)])
xlim([0 21])