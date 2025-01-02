
load('allThetaIndex.mat')

clc
%3DPC in PFC, how many theta-modulated cell
temp=allThetaIndex(:,2);
tempp=intersect(find(allThetaIndex(:,3)==1),find(allThetaIndex(:,4)==1));
sum(temp(tempp))/length(temp(tempp))

%3DPC in HPC, how many theta-modulated cell
temp=allThetaIndex(:,2);
tempp=intersect(find(allThetaIndex(:,3)==2),find(allThetaIndex(:,4)==1));
sum(temp(tempp))/length(temp(tempp))

% theta modulation scatter
temp1=intersect(find(allThetaIndex(:,3)==1),find(allThetaIndex(:,4)==1));
temp2=intersect(find(allThetaIndex(:,3)==1),find(allThetaIndex(:,4)==2));
temp3=intersect(find(allThetaIndex(:,3)==2),find(allThetaIndex(:,4)==1));
temp4=intersect(find(allThetaIndex(:,3)==2),find(allThetaIndex(:,4)==2));
temp=allThetaIndex(:,1);
temp1=temp(temp1);
temp2=temp(temp2);
temp3=temp(temp3);
temp4=temp(temp4);
close all
 %figure('Position',[100 100 200 200])
scatter(temp1*0+1,temp1);hold on
scatter(temp2*0+2,temp2);hold on
scatter(temp3*0+3,temp3);hold on
scatter(temp4*0+4,temp4);hold on

[h,p]=ttest2(temp1,temp2)
[h,p]=ttest2(temp3,temp4)
[h,p]=ttest2(temp1,temp3)
mean(temp1)
mean(temp2)

figure
scatter(temp1*0+1+0.4*rand(length(temp1),1),temp1);hold on
scatter(temp3*0+2+0.4*rand(length(temp3),1),temp3);hold on
xlim([0.2 3.2])
[h,p]=ttest2(temp1,temp3)
mean(temp1)
mean(temp3)
