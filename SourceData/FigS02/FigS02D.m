%% m230724makeAuandPitch

clear

load('Batch2Behavior230717Vsitingetc_Nature.mat')
load('Batch2Behavior230717Vsitingetc_Science.mat')
load('Batch2Behavior230717Vsitingetc_Xiaoquan.mat')
%%
facedirectionnew=[];pich=[];
for i=1:length(Batch2Behavior230717Vsitingetc_Nature)
    facedirection=Batch2Behavior230717Vsitingetc_Nature{2,i};
% % 230622 this is only azimuth direction
% facedirectionnew=atan2(facedirection(:,2),facedirection(:,1))*180/3.1415926536; %degree
% % pich direction
% temp=sqrt(sum(facedirection(:,1:2).*facedirection(:,1:2),2));
% pich=atan2(facedirection(:,3),temp)*180/3.1415926536; %degree
% cite m230622otherfunctionalcellin3d
    facedirectionnew=[facedirectionnew;atan2(facedirection(:,2),facedirection(:,1))*180/3.1415926536];
    temp=sqrt(sum(facedirection(:,1:2).*facedirection(:,1:2),2));
    pich=[pich;atan2(facedirection(:,3),temp)*180/3.1415926536];
end
for i=1:length(Batch2Behavior230717Vsitingetc_Xiaoquan)
    facedirection=Batch2Behavior230717Vsitingetc_Xiaoquan{2,i};
    facedirectionnew=[facedirectionnew;atan2(facedirection(:,2),facedirection(:,1))*180/3.1415926536];
    temp=sqrt(sum(facedirection(:,1:2).*facedirection(:,1:2),2));
    pich=[pich;atan2(facedirection(:,3),temp)*180/3.1415926536];
end
for i=1:length(Batch2Behavior230717Vsitingetc_Science)
    facedirection=Batch2Behavior230717Vsitingetc_Science{2,i};
    facedirectionnew=[facedirectionnew;atan2(facedirection(:,2),facedirection(:,1))*180/3.1415926536];
    temp=sqrt(sum(facedirection(:,1:2).*facedirection(:,1:2),2));
    pich=[pich;atan2(facedirection(:,3),temp)*180/3.1415926536];
end
figure("Position",[100 100 200 100])
temp=hist(facedirectionnew,18*2);
hist(facedirectionnew,18*2)
h = findobj(gca,'Type','patch');
h.FaceColor = [117 40 126]/256;
h.EdgeColor = [117 40 126]/256;
box off
xlim([-180 180])
ylim([0 max(temp)])
xticks([-180 -90 0 90 180]);
%%
figure("Position",[400 400 100 100])
temp=hist(pich,18);
hist(pich,18);
h = findobj(gca,'Type','patch');
h.FaceColor = [117 40 126]/256;
h.EdgeColor = [117 40 126]/256;
box off
xlim([-90 90])
ylim([0 max(temp)])
xticks([-90 0 90]);
