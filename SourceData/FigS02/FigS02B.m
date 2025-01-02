

addpath(genpath('Y:\weichuanyao\OtherCodeAndLearning\Violinplot-Matlab-master'))
%clear;clc;close all;
%% cite m230506behaviorplot
load('Batch2Behavior230717PSetc_Nature.mat')
load('Batch2Behavior230717PSetc_Science.mat')
load('Batch2Behavior230717PSetc_Xiaoquan.mat')

Origin=cell(0,1);
for i=1:11
    Origin{end+1,1}='F01';
end
for j=1:19
    Origin{end+1,1}='M01';
end
for k=1:22
    Origin{end+1,1}='M02';
end
for l=1:52
    Origin{end+1,1}='All';
end
%% recording time
figure('Position',[50,50,200,300])
grouporder={'F01','M01','M02','All'};
MPG=[
    Batch2Behavior230717PSetc_Xiaoquan(:,1);
    Batch2Behavior230717PSetc_Nature(:,1);
    Batch2Behavior230717PSetc_Science(:,1);
    ];
MPG=[MPG;MPG];

h = violinplot(MPG/60,Origin,'GroupOrder',grouporder,'Width',0.3);
box off
xlim([0.4 4.6])
ylim([5 55])
ylabel('Vedio recording time (min)')
set(gca,'ytick',[5:10:55]) 
set(gca,'FontName','Helvetica','FontSize',6);

%% Traveling time
figure('Position',[50,50,200,300])
grouporder={'F01','M01','M02','All'};
MPG=[
    Batch2Behavior230717PSetc_Xiaoquan(:,2);
    Batch2Behavior230717PSetc_Nature(:,2);
    Batch2Behavior230717PSetc_Science(:,2);
    ];
MPG=[MPG;MPG];

h = violinplot(MPG/60,Origin,'GroupOrder',grouporder,'Width',0.3);
box off
xlim([0.4 4.6])
ylim([5 55])
ylabel('Traveling time (min)')
set(gca,'ytick',[5:10:55]) 
set(gca,'FontName','Helvetica','FontSize',6);

%% Traveling rate
figure('Position',[50,50,200,300])
grouporder={'F01','M01','M02','All'};
MPG=[
    Batch2Behavior230717PSetc_Xiaoquan(:,3);
    Batch2Behavior230717PSetc_Nature(:,3);
    Batch2Behavior230717PSetc_Science(:,3);
    ];
MPG=[MPG;MPG];

h = violinplot(MPG,Origin,'GroupOrder',grouporder,'Width',0.3);
box off
xlim([0.4 4.6])
ylim([20 70])
ylabel('Activity rate (%)')
set(gca,'ytick',[20:10:70]) 
set(gca,'FontName','Helvetica','FontSize',6);

%% Traveling distance
figure('Position',[50,50,200,300])
grouporder={'F01','M01','M02','All'};
MPG=[
    Batch2Behavior230717PSetc_Xiaoquan(:,4);
    Batch2Behavior230717PSetc_Nature(:,4);
    Batch2Behavior230717PSetc_Science(:,4);
    ];
MPG=[MPG;MPG];

h = violinplot(MPG,Origin,'GroupOrder',grouporder,'Width',0.3);
box off
xlim([0.4 4.6])
ylim([200 1000])
ylabel('Traveling distance (m)')
set(gca,'ytick',[0:200:800]) 
set(gca,'FontName','Helvetica','FontSize',6);

%% Mean speed
figure('Position',[50,50,200,300])
grouporder={'F01','M01','M02','All'};
MPG=[
    Batch2Behavior230717PSetc_Xiaoquan(:,5);
    Batch2Behavior230717PSetc_Nature(:,5);
    Batch2Behavior230717PSetc_Science(:,5);
    ];
MPG=[MPG;MPG];

h = violinplot(MPG,Origin,'GroupOrder',grouporder,'Width',0.3);
box off
xlim([0.4 4.6])
ylim([0.1 0.6])
ylabel('Mean speed (m/s)')
set(gca,'ytick',[0.1:0.1:0.6]) 
set(gca,'FontName','Helvetica','FontSize',6);

%% Peak speed
figure('Position',[50,50,200,300])
grouporder={'F01','M01','M02','All'};
MPG=[
    Batch2Behavior230717PSetc_Xiaoquan(:,6);
    Batch2Behavior230717PSetc_Nature(:,6);
    Batch2Behavior230717PSetc_Science(:,6);
    ];
MPG=[MPG;MPG];
temp=setdiff(1:104,find(MPG>=20));
for i=1:100
    tempOrigin{i,1}=Origin{temp(i)};
end
tempMPG=MPG(temp,:);

h = violinplot(tempMPG,tempOrigin,'GroupOrder',grouporder,'Width',0.3);
box off
xlim([0.4 4.6])
ylim([0 20])
ylabel('Peak speed (m/s)')
set(gca,'ytick',[0:4:20]) 
set(gca,'FontName','Helvetica','FontSize',6);

