

load('FigS05C.mat')

addpath(genpath('\Violinplot-Matlab-master'))

%h = violinplot(DBandJ3v(:,1),'ShowWhiskers');

figure('Position',[100 100 100 300])
grouporder={'DBv','DBx'}%,'J3v','J3x'}; 
Origin={
    'DBv';'DBv';'DBv';'DBv';'DBv';'DBv';'DBv';'DBv';'DBv';'DBv';  'DBv';'DBv';'DBv';'DBv';'DBv';'DBv';'DBv';'DBv';'DBv';'DBv';  'DBv';'DBv';'DBv';'DBv';'DBv';'DBv';'DBv';'DBv';'DBv';'DBv';  'DBv';'DBv';'DBv';'DBv';'DBv';'DBv';'DBv';'DBv';'DBv';'DBv';  'DBv';'DBv';'DBv';'DBv';'DBv';'DBv';'DBv';'DBv';'DBv';'DBv';  'DBv';'DBv';'DBv';'DBv';'DBv';'DBv';'DBv';'DBv';'DBv';'DBv';  'DBv';'DBv';'DBv';'DBv';'DBv';'DBv';'DBv';'DBv';'DBv';'DBv';  'DBv';'DBv';'DBv';'DBv';'DBv';'DBv';'DBv';'DBv';'DBv';'DBv';  'DBv';'DBv';'DBv';... 
    'DBx';'DBx';'DBx';'DBx';'DBx';'DBx';'DBx';'DBx';'DBx';'DBx';  'DBx';'DBx';'DBx';'DBx';'DBx';'DBx';'DBx';'DBx';'DBx';'DBx';  'DBx';'DBx';'DBx';'DBx';'DBx';...
    %'J3v';'J3v';'J3v';'J3v';'J3v';'J3v';'J3v';'J3v';'J3v';'J3v';  'J3v';'J3v';'J3v';'J3v';'J3v';'J3v';'J3v';'J3v';'J3v';'J3v';  'J3v';'J3v';'J3v';'J3v';'J3v';'J3v';'J3v';'J3v';'J3v';'J3v';  'J3v';'J3v';'J3v';'J3v';'J3v';'J3v';'J3v';'J3v';'J3v';'J3v';  'J3v';'J3v';'J3v';'J3v';'J3v';'J3v';'J3v';'J3v';'J3v';'J3v';  'J3v';'J3v';'J3v';'J3v';'J3v';'J3v';'J3v';'J3v';'J3v';'J3v';  'J3v';'J3v';'J3v';'J3v';'J3v';'J3v';'J3v';'J3v';'J3v';'J3v';  'J3v';'J3v';'J3v';'J3v';'J3v';'J3v';'J3v';'J3v';'J3v';'J3v';  'J3v';'J3v';'J3v';...
    %'J3x';'J3x';'J3x';'J3x';'J3x';'J3x';'J3x';'J3x';'J3x';'J3x';  'J3x';'J3x';'J3x';'J3x';'J3x';'J3x';'J3x';'J3x';'J3x';'J3x';  'J3x';'J3x';'J3x';'J3x';'J3x';...
    }; 
MPG=[
    DBandJ3v(:,1);
    DBandJ3x(:,1);
    %DBandJ3v(:,2);
    %DBandJ3x(:,2);
];
h = violinplot(MPG,Origin,'GroupOrder',grouporder,'Width',0.3);
box off
xlim([0.4 2.6])
ylim([0 15])

%ylim([15 50])
%%
figure('Position',[100 100 100 300])
grouporder={'J3v','J3x'}%,'J3v','J3x'}; 
Origin={
    %'DBv';'DBv';'DBv';'DBv';'DBv';'DBv';'DBv';'DBv';'DBv';'DBv';  'DBv';'DBv';'DBv';'DBv';'DBv';'DBv';'DBv';'DBv';'DBv';'DBv';  'DBv';'DBv';'DBv';'DBv';'DBv';'DBv';'DBv';'DBv';'DBv';'DBv';  'DBv';'DBv';'DBv';'DBv';'DBv';'DBv';'DBv';'DBv';'DBv';'DBv';  'DBv';'DBv';'DBv';'DBv';'DBv';'DBv';'DBv';'DBv';'DBv';'DBv';  'DBv';'DBv';'DBv';'DBv';'DBv';'DBv';'DBv';'DBv';'DBv';'DBv';  'DBv';'DBv';'DBv';'DBv';'DBv';'DBv';'DBv';'DBv';'DBv';'DBv';  'DBv';'DBv';'DBv';'DBv';'DBv';'DBv';'DBv';'DBv';'DBv';'DBv';  'DBv';'DBv';'DBv';... 
    %'DBx';'DBx';'DBx';'DBx';'DBx';'DBx';'DBx';'DBx';'DBx';'DBx';  'DBx';'DBx';'DBx';'DBx';'DBx';'DBx';'DBx';'DBx';'DBx';'DBx';  'DBx';'DBx';'DBx';'DBx';'DBx';...
    'J3v';'J3v';'J3v';'J3v';'J3v';'J3v';'J3v';'J3v';'J3v';'J3v';  'J3v';'J3v';'J3v';'J3v';'J3v';'J3v';'J3v';'J3v';'J3v';'J3v';  'J3v';'J3v';'J3v';'J3v';'J3v';'J3v';'J3v';'J3v';'J3v';'J3v';  'J3v';'J3v';'J3v';'J3v';'J3v';'J3v';'J3v';'J3v';'J3v';'J3v';  'J3v';'J3v';'J3v';'J3v';'J3v';'J3v';'J3v';'J3v';'J3v';'J3v';  'J3v';'J3v';'J3v';'J3v';'J3v';'J3v';'J3v';'J3v';'J3v';'J3v';  'J3v';'J3v';'J3v';'J3v';'J3v';'J3v';'J3v';'J3v';'J3v';'J3v';  'J3v';'J3v';'J3v';'J3v';'J3v';'J3v';'J3v';'J3v';'J3v';'J3v';  'J3v';'J3v';'J3v';...
    'J3x';'J3x';'J3x';'J3x';'J3x';'J3x';'J3x';'J3x';'J3x';'J3x';  'J3x';'J3x';'J3x';'J3x';'J3x';'J3x';'J3x';'J3x';'J3x';'J3x';  'J3x';'J3x';'J3x';'J3x';'J3x';...
    }; 
MPG=[
    %DBandJ3v(:,1);
    %DBandJ3x(:,1);
    DBandJ3v(:,2);
    DBandJ3x(:,2);
];
h = violinplot(MPG,Origin,'GroupOrder',grouporder,'Width',0.3);
box off
xlim([0.4 2.6])

ylim([0 15])
%ylim([15 50])

