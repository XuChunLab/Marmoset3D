

%% m230726makeSpeedPictureForPlaceCell


% Notes
% in GAM code, There almost no speed limitation. cite  m230607GAM1stTrym 230624thisisfor3d :f=find(speed>=3000);%% important 230619 version g=find(speed<=-1); % though this is not the same with the classical critirea
% in m230622otherfunctionalcellin3d: noneedfram=union(find(linespeed<50),find(linespeed>1650));

%prs.nbins = {[20 , 20], [15 ,15],[15 ,15], 30 ,15, 8}; %!!! there should be [20 10]!!
%prs.binrange = {[0 0;1500 1500],[0 0;1500 750],[0 0;1500 750], [0;1800], [-180;180], [-90;90]};% it is crucial to specify the range  if there are outliers in your stimulus
%in GAM code 1~1800 mm/s 30 bins: (6cm/s)/(1 bin)

clear
clc
close all
addpath(genpath('Y:\weichuanyao\Analyse\3Dmaze230221'))
load('CustomHot.mat')
%%

files={%230728
 % glob.glob(r"V:\chuanyaoANDjiankang\3Dproject_DataFormXuGroupShare/23*/3Dmaze23*ed.mat")
%  'V:\\chuanyaoANDjiankang\\3Dproject_DataFormXuGroupShare\\230314Nature\\3Dmaze230314NatureReserved.mat',
%  'V:\\chuanyaoANDjiankang\\3Dproject_DataFormXuGroupShare\\230314Science\\3Dmaze230314ScienceReserved.mat',
%  'V:\\chuanyaoANDjiankang\\3Dproject_DataFormXuGroupShare\\230315Nature\\3Dmaze230315NatureReserved.mat',
%  'V:\\chuanyaoANDjiankang\\3Dproject_DataFormXuGroupShare\\230315Science\\3Dmaze230315ScienceReserved.mat',
%  'V:\\chuanyaoANDjiankang\\3Dproject_DataFormXuGroupShare\\230317Nature\\3Dmaze230317NatureReserved.mat',
  'V:\\chuanyaoANDjiankang\\3Dproject_DataFormXuGroupShare\\230320Nature\\3Dmaze230320NatureReserved.mat',
 'V:\\chuanyaoANDjiankang\\3Dproject_DataFormXuGroupShare\\230321Nature\\3Dmaze230321NatureReserved.mat',
 'V:\\chuanyaoANDjiankang\\3Dproject_DataFormXuGroupShare\\230321Science\\3Dmaze230321ScienceReserved.mat',
 'V:\\chuanyaoANDjiankang\\3Dproject_DataFormXuGroupShare\\230322Nature\\3Dmaze230322NatureReserved.mat',
 'V:\\chuanyaoANDjiankang\\3Dproject_DataFormXuGroupShare\\230323Nature\\3Dmaze230323NatureReserved.mat',
 'V:\\chuanyaoANDjiankang\\3Dproject_DataFormXuGroupShare\\230323Science\\3Dmaze230323ScienceReserved.mat',
 'V:\\chuanyaoANDjiankang\\3Dproject_DataFormXuGroupShare\\230323Xiaoquan\\3Dmaze230323XiaoquanReserved.mat',
 'V:\\chuanyaoANDjiankang\\3Dproject_DataFormXuGroupShare\\230327Nature\\3Dmaze230327NatureReserved.mat',
 'V:\\chuanyaoANDjiankang\\3Dproject_DataFormXuGroupShare\\230327Science\\3Dmaze230327ScienceReserved.mat',
 'V:\\chuanyaoANDjiankang\\3Dproject_DataFormXuGroupShare\\230327Xiaoquan\\3Dmaze230327XiaoquanReserved.mat',
 'V:\\chuanyaoANDjiankang\\3Dproject_DataFormXuGroupShare\\230328Nature\\3Dmaze230328NatureReserved.mat',
 'V:\\chuanyaoANDjiankang\\3Dproject_DataFormXuGroupShare\\230328Xiaoquan\\3Dmaze230328XiaoquanReserved.mat',
 'V:\\chuanyaoANDjiankang\\3Dproject_DataFormXuGroupShare\\230329Nature\\3Dmaze230329NatureReserved.mat',
 'V:\\chuanyaoANDjiankang\\3Dproject_DataFormXuGroupShare\\230329Xiaoquan\\3Dmaze230329XiaoquanReserved.mat',
 'V:\\chuanyaoANDjiankang\\3Dproject_DataFormXuGroupShare\\230330Nature\\3Dmaze230330NatureReserved.mat',
 'V:\\chuanyaoANDjiankang\\3Dproject_DataFormXuGroupShare\\230330Science\\3Dmaze230330ScienceReserved.mat',
 'V:\\chuanyaoANDjiankang\\3Dproject_DataFormXuGroupShare\\230330Xiaoquan\\3Dmaze230330XiaoquanReserved.mat',
 'V:\\chuanyaoANDjiankang\\3Dproject_DataFormXuGroupShare\\230403Nature\\3Dmaze230403NatureReserved.mat',
 'V:\\chuanyaoANDjiankang\\3Dproject_DataFormXuGroupShare\\230403Xiaoquan\\3Dmaze230403XiaoquanReserved.mat',
 'V:\\chuanyaoANDjiankang\\3Dproject_DataFormXuGroupShare\\230404Nature\\3Dmaze230404NatureReserved.mat',
 'V:\\chuanyaoANDjiankang\\3Dproject_DataFormXuGroupShare\\230406Nature\\3Dmaze230406NatureReserved.mat',
 'V:\\chuanyaoANDjiankang\\3Dproject_DataFormXuGroupShare\\230406Science\\3Dmaze230406ScienceReserved.mat',
 'V:\\chuanyaoANDjiankang\\3Dproject_DataFormXuGroupShare\\230406Xiaoquan\\3Dmaze230406XiaoquanReserved.mat',
 'V:\\chuanyaoANDjiankang\\3Dproject_DataFormXuGroupShare\\230411Nature\\3Dmaze230411NatureReserved.mat',
 'V:\\chuanyaoANDjiankang\\3Dproject_DataFormXuGroupShare\\230411Science\\3Dmaze230411ScienceReserved.mat',
 % glob.glob(r"V:\chuanyaoANDjiankang\3Dproject_DataFormXuGroupShare/23*/g*/3Dmaze23*ed.mat")
%  'V:\\chuanyaoANDjiankang\\3Dproject_DataFormXuGroupShare\\230317Science\\group0\\3Dmaze230317ScienceGroup0Reserved.mat',
%  'V:\\chuanyaoANDjiankang\\3Dproject_DataFormXuGroupShare\\230317Science\\group1\\3Dmaze230317ScienceGroup1Reserved.mat',
%  'V:\\chuanyaoANDjiankang\\3Dproject_DataFormXuGroupShare\\230317Science\\group2\\3Dmaze230317ScienceGroup2Reserved.mat',
%  'V:\\chuanyaoANDjiankang\\3Dproject_DataFormXuGroupShare\\230317Science\\group3\\3Dmaze230317ScienceGroup3Reserved.mat',
 'V:\\chuanyaoANDjiankang\\3Dproject_DataFormXuGroupShare\\230322science\\group0\\3Dmaze230322ScienceGroup0Reserved.mat',
 'V:\\chuanyaoANDjiankang\\3Dproject_DataFormXuGroupShare\\230322science\\group1sortingpdf\\3Dmaze230322ScienceGroup1Reserved.mat',
 'V:\\chuanyaoANDjiankang\\3Dproject_DataFormXuGroupShare\\230322science\\group2\\3Dmaze230322ScienceGroup2Reserved.mat',
 'V:\\chuanyaoANDjiankang\\3Dproject_DataFormXuGroupShare\\230322science\\group3\\3Dmaze230322ScienceGroup3Reserved.mat',
 'V:\\chuanyaoANDjiankang\\3Dproject_DataFormXuGroupShare\\230329Science\\group0\\3Dmaze230329ScienceGroup0Reserved.mat',
 'V:\\chuanyaoANDjiankang\\3Dproject_DataFormXuGroupShare\\230329Science\\group1\\3Dmaze230329ScienceGroup1Reserved.mat',
 'V:\\chuanyaoANDjiankang\\3Dproject_DataFormXuGroupShare\\230329Science\\group2\\3Dmaze230329ScienceGroup2Reserved.mat',
 'V:\\chuanyaoANDjiankang\\3Dproject_DataFormXuGroupShare\\230329Science\\group3\\3Dmaze230329ScienceGroup3Reserved.mat',
 'V:\\chuanyaoANDjiankang\\3Dproject_DataFormXuGroupShare\\230403Science\\group0\\3Dmaze230403ScienceGroup0Reserved.mat',
 'V:\\chuanyaoANDjiankang\\3Dproject_DataFormXuGroupShare\\230404Science\\group1\\3Dmaze230404ScienceGroup1Reserved.mat',
 'V:\\chuanyaoANDjiankang\\3Dproject_DataFormXuGroupShare\\230404Science\\group2\\3Dmaze230404ScienceGroup2Reserved.mat',
 'V:\\chuanyaoANDjiankang\\3Dproject_DataFormXuGroupShare\\230404Science\\group3\\3Dmaze230404ScienceGroup3Reserved.mat',
 %glob.glob(r"X:\230412to230427TreeD/23*/g*/3Dmaze23*ed.mat")
 'X:\\230412to230427TreeD\\230412Science\\group0\\3Dmaze230412ScienceGroup0Reserved.mat',
 'X:\\230412to230427TreeD\\230412Science\\group1\\3Dmaze230412ScienceGroup1Reserved.mat',
 'X:\\230412to230427TreeD\\230412Science\\group2\\3Dmaze230412ScienceGroup2Reserved.mat',
 'X:\\230412to230427TreeD\\230412Science\\group3\\3Dmaze230412ScienceGroup3Reserved.mat',
%  'X:\\230412to230427TreeD\\230424Science\\group0\\3Dmaze230424ScienceGroup0Reserved.mat',
%  'X:\\230412to230427TreeD\\230424Science\\group1\\3Dmaze230424ScienceGroup1Reserved.mat',
%  'X:\\230412to230427TreeD\\230424Science\\group2\\3Dmaze230424ScienceGroup2Reserved.mat',
%  'X:\\230412to230427TreeD\\230424Science\\group3\\3Dmaze230424ScienceGroup3Reserved.mat',
 %glob.glob(r"X:\230412to230427TreeD/23*/3Dmaze23*ed.mat")
 'X:\\230412to230427TreeD\\230412Xiaoquan\\3Dmaze230412XiaoquanReserved.mat',
 'X:\\230412to230427TreeD\\230413Science\\3Dmaze230413ScienceReserved.mat',
%  'X:\\230412to230427TreeD\\230418Science\\3Dmaze230418ScienceReserved.mat',
%  'X:\\230412to230427TreeD\\230418Xiaoquan\\3Dmaze230418XiaoquanReserved.mat',
%  'X:\\230412to230427TreeD\\230419Nature\\3Dmaze230419NatureReserved.mat',
%  'X:\\230412to230427TreeD\\230424Xiaoquan\\3Dmaze230424XiaoquanReserved.mat',
%  'X:\\230412to230427TreeD\\230425Nature\\3Dmaze230425NatureReserved.mat',
%  'X:\\230412to230427TreeD\\230425Science\\3Dmaze230425ScienceReserved.mat',
%  'X:\\230412to230427TreeD\\230427Nature\\3Dmaze230427NatureReserved.mat',
%  'X:\\230412to230427TreeD\\230427Science\\3Dmaze230427ScienceReserved.mat',
 %*****
 %'Y:\weichuanyao\Experiment\RAWandSortedElectrophysiology\230227April\3Dmaze230227AprilReserved.mat',
 %'Y:\weichuanyao\Experiment\RAWandSortedElectrophysiology\230228April\3Dmaze230228AprilReserved.mat',
 %'Y:\weichuanyao\Experiment\RAWandSortedElectrophysiology\230303April\3Dmaze230303AprilReserved.mat',
 %'Y:\weichuanyao\Experiment\RAWandSortedElectrophysiology\230306AApril\3Dmaze230306AprilReserved.mat',
 %*****
 'V:\chuanyaoANDjiankang\3Dproject_DataFormXuGroupShare\230404Xiaoquan\3Dmaze230404XiaoquanReserved.mat',
 'X:\230412to230427TreeD\230413Nature\3Dmaze230413NatureReserved.mat',
    };%230728

%% loading

filei=24 % load a file
filename=files{filei};
sessionnanme=files{filei}
load(sessionnanme)
ttus=total_unites
for celli=2%1:ttus%celli=5% load a cell  1:7

sessionnanme=files{filei}
load(sessionnanme) 
unitename=unites{celli,2}
close all
figure("Position",[0 400 1000 250])

%close all



% ylim([0 5])
% xlim([0 5])
% text(1,2,['f',num2str(filei),'c',num2str(celli)])



%unitesAfterSpeedDirecSelection{celli,8}=r;
%unitesAfterSpeedDirecSelection{celli,9}=sig;%% sig<0.05 r > ~ 0.3 is speed cell
% travel preprocess and %% calculation
oringinalbadelectro=badelectro;
data_3d=pred;
linespeed=sqrt(speed(:,1).^2+speed(:,2).^2+speed(:,3).^2);
linespeed=smoothdata(linespeed,'gaussian',5);
badelectro=oringinalbadelectro;
badelectro = find(badelectro>200);%  230508version?
%xlim([520 960]);ylim([170 590])
noneedfram=union(find(linespeed<50),find(linespeed>1650));
%noneedfram=union(find(linespeed<-1),find(linespeed<-1));%230615 new version
noneedfram=union(noneedfram,badelectro);%find(linespeed>=50)
a=union(find(data_3d(:,1)<=0),find(data_3d(:,1)>1500));
b=union(find(data_3d(:,2)<=0),find(data_3d(:,2)>1500));
c=union(find(data_3d(:,3)<=0),find(data_3d(:,3)>750));
outspace=union(union(a,b),c);
noneedfram=union(outspace,noneedfram);
% calculation
temp=unites{celli,1};
spikeatframe=[];
for j=1:length(temp)
    [k,b]= min(abs(temp(j)-vediotime));
    if k<0.05
        spikeatframe=[spikeatframe,b];
    end
end
spikeatframe=setdiff(spikeatframe,noneedfram);
linespeed(noneedfram,:)=nan;

temp=zeros(size(linespeed));
for i=1:length(spikeatframe)
    temp(spikeatframe(i))=temp(spikeatframe(i))+1;
end
temp=smoothdata(temp,'gaussian',15);%230615 new version
temp=temp/0.05;

temp(isnan(linespeed))=[];
linespeed(isnan(linespeed))=[];
[r,sig]=corr(temp,linespeed);
%unitesAfterSpeedDirecSelection{celli,8}=r;
%unitesAfterSpeedDirecSelection{celli,9}=sig;%% sig<0.05 r > ~ 0.3 is speed cell

subplot(2,3,[2,5])
a=zeros(1,18);b=cell(1,18);
for i=0:60:1740
    b{i/60+1}=intersect(find(linespeed>=i),find(linespeed<(i+60)));
    a(i/60+1)=nanmean(temp(b{i/60+1}))
end
plot([30:60:1770],a,'Color',[0.6350 0.0780 0.1840])
set(gca,'Color',[0.9 0.9 0.9])
[r,sig]
xlim([0 1500])
%ylim([0 3])

subplot(2,3,[1,4])
heatmap=unitesAfterPCSelection{celli,2};
vol3d('Cdata',heatmap)
colormap(CustomHot)
view(3)
daspect([1 1 1]); 
set(gca,'FontName','Helvetica','FontSize',6);
set(gcf,'Color',[1 1 1])
set(gca,'Color',[0.9 0.9 0.9])
xticks([]);yticks([]);zticks([]);

 
subplot(2,3,3)
plot(unitesAfterSpeedDirecSelection{celli,5},'Color',[0.9290 0.6940 0.1250])
set(gca,'Color',[0.9 0.9 0.9])
xticks([]);
%ylim([0 1.6])

subplot(2,3,6)
plot(unitesAfterSpeedDirecSelection{celli,10},'Color',[0.9290 0.6940 0.1250])
set(gca,'Color',[0.9 0.9 0.9])
xticks([]);
%ylim([0 1.6])

%clearvars -except files filei celli ttus CustomHot
end
