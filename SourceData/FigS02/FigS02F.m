%% Here is the probility of vxel

load('Batch2Behavior230717Vsitingetc_Nature.mat')
load('Batch2Behavior230717Vsitingetc_Science.mat')
load('Batch2Behavior230717Vsitingetc_Xiaoquan.mat')
addpath('Y:\weichuanyao\Analyse\3Dmaze230221')
figure('Position',[50,50,260,160])
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
vol3d('Cdata',temp)
view(3); 
axis tight; %daspect([1 1 .4])
k=alphamap('rampup');
k=(k+0.015)/1.015;
alphamap(k);
%alphamap('rampup');



colormap(repmat([0 0.4 0.7],256,1));
colormap(repmat([0.85 0.33 0.10],256,1));
colormap(repmat([0.93 0.69 0.13],256,1));
colormap(repmat([117 40 126]/256,256,1));

xlabel('x = 1.5 m')
ylabel('y = 1.5 m')
zlabel('z = 0.75 m')
set(gca,'FontName','Helvetica','FontSize',6);

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