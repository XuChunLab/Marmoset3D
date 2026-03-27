

clear

load('FigS2C1.mat')
load('FigS2C2.mat')
load('FigS2C3.mat')
%% E left
facedirectionnew=[];pich=[];
for i=1:length(Batch2Behavior230717Vsitingetc_Nature)
    facedirection=Batch2Behavior230717Vsitingetc_Nature{2,i};

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
%% E right
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

%% F
figure('Position',[100 100 100 200])

visit=[Batch2Behavior230717Vsitingetc_Science,Batch2Behavior230717Vsitingetc_Xiaoquan,Batch2Behavior230717Vsitingetc_Nature]
a=[]
for i=1:size(visit,2)
    a=[a;visit{3,i}];
end
a(a<=0)=[];a(a>=2000)=[];

temp=hist(a,200)
hist(a,200)
h = findobj(gca,'Type','patch');
h.FaceColor = [0.93 0.69 0.13];
h.EdgeColor = [0.93 0.69 0.13];
box off
xlim([0 2000])
ylim([0 max(temp)])
xticks([]);yticks([]);
