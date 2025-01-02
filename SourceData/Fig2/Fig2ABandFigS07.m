%% m230714makeExamplePictures
clear 
clc
close all
% cite m230529StanderedPCSelectionAndProperties
addpath(genpath('Y:\weichuanyao\Analyse\3Dmaze230221'))
load('CustomHot.mat')


%%
files={ %230714
 % glob.glob(r"V:\chuanyaoANDjiankang\3Dproject_DataFormXuGroupShare/23*/3Dmaze23*ed.mat")
 'V:\\chuanyaoANDjiankang\\3Dproject_DataFormXuGroupShare\\230314Nature\\3Dmaze230314NatureReserved.mat',
 'V:\\chuanyaoANDjiankang\\3Dproject_DataFormXuGroupShare\\230314Science\\3Dmaze230314ScienceReserved.mat',
 'V:\\chuanyaoANDjiankang\\3Dproject_DataFormXuGroupShare\\230315Nature\\3Dmaze230315NatureReserved.mat',
 'V:\\chuanyaoANDjiankang\\3Dproject_DataFormXuGroupShare\\230315Science\\3Dmaze230315ScienceReserved.mat',
 'V:\\chuanyaoANDjiankang\\3Dproject_DataFormXuGroupShare\\230317Nature\\3Dmaze230317NatureReserved.mat',
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
 'V:\\chuanyaoANDjiankang\\3Dproject_DataFormXuGroupShare\\230317Science\\group0\\3Dmaze230317ScienceGroup0Reserved.mat',
 'V:\\chuanyaoANDjiankang\\3Dproject_DataFormXuGroupShare\\230317Science\\group1\\3Dmaze230317ScienceGroup1Reserved.mat',
 'V:\\chuanyaoANDjiankang\\3Dproject_DataFormXuGroupShare\\230317Science\\group2\\3Dmaze230317ScienceGroup2Reserved.mat',
 'V:\\chuanyaoANDjiankang\\3Dproject_DataFormXuGroupShare\\230317Science\\group3\\3Dmaze230317ScienceGroup3Reserved.mat',
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
 'X:\\230412to230427TreeD\\230424Science\\group0\\3Dmaze230424ScienceGroup0Reserved.mat',
 'X:\\230412to230427TreeD\\230424Science\\group1\\3Dmaze230424ScienceGroup1Reserved.mat',
 'X:\\230412to230427TreeD\\230424Science\\group2\\3Dmaze230424ScienceGroup2Reserved.mat',
 'X:\\230412to230427TreeD\\230424Science\\group3\\3Dmaze230424ScienceGroup3Reserved.mat',
 %glob.glob(r"X:\230412to230427TreeD/23*/3Dmaze23*ed.mat")
 'X:\\230412to230427TreeD\\230412Xiaoquan\\3Dmaze230412XiaoquanReserved.mat',
 'X:\\230412to230427TreeD\\230413Science\\3Dmaze230413ScienceReserved.mat',
 'X:\\230412to230427TreeD\\230418Science\\3Dmaze230418ScienceReserved.mat',
 'X:\\230412to230427TreeD\\230418Xiaoquan\\3Dmaze230418XiaoquanReserved.mat',
 'X:\\230412to230427TreeD\\230419Nature\\3Dmaze230419NatureReserved.mat',
 'X:\\230412to230427TreeD\\230424Xiaoquan\\3Dmaze230424XiaoquanReserved.mat',
 'X:\\230412to230427TreeD\\230425Nature\\3Dmaze230425NatureReserved.mat',
 'X:\\230412to230427TreeD\\230425Science\\3Dmaze230425ScienceReserved.mat',
 'X:\\230412to230427TreeD\\230427Nature\\3Dmaze230427NatureReserved.mat',
 'X:\\230412to230427TreeD\\230427Science\\3Dmaze230427ScienceReserved.mat',
 %*****
%  'Y:\weichuanyao\Experiment\RAWandSortedElectrophysiology\230227April\3Dmaze230227AprilReserved.mat',
%  'Y:\weichuanyao\Experiment\RAWandSortedElectrophysiology\230228April\3Dmaze230228AprilReserved.mat',
%  'Y:\weichuanyao\Experiment\RAWandSortedElectrophysiology\230303April\3Dmaze230303AprilReserved.mat',
%  'Y:\weichuanyao\Experiment\RAWandSortedElectrophysiology\230306AApril\3Dmaze230306AprilReserved.mat',
 %*****
 'V:\chuanyaoANDjiankang\3Dproject_DataFormXuGroupShare\230404Xiaoquan\3Dmaze230404XiaoquanReserved.mat',
 'X:\230412to230427TreeD\230413Nature\3Dmaze230413NatureReserved.mat',
 };
%files={'Y:\weichuanyao\Analyse\3Dmaze230529\M3DPfPopulation\m230903merge\3Dmaze230424ScienceGroup0123Reserved.mat','X:\230815Backup\3DmazeNSX_230728\3Dmaze230314NatureReserved.mat'}
% filei=2
% sessionnanme=files{filei}
% load(sessionnanme,'total_unites')
% total_unites
%%
close;close;close;close;close;close;close
%%
for filei=64
    close all
    sessionnanme=files{filei}
    load(sessionnanme)
    %%
    for celli=  [3]            %:total_unites
        load(sessionnanme,'unitesAfterPCSelection','pred','speed','badelectro');

% travel preprocess and line and dots ******************************** star
figure('Position',[400 400 1400 320])
subplot(151)
visitinglimitation=5;
data_3d=pred;
% 230410 travel
linespeed=sqrt(speed(:,1).^2+speed(:,2).^2+speed(:,3).^2);
linespeed=smoothdata(linespeed,'gaussian',5);
temp=linespeed*0;
temp(find(linespeed>=50))=1;
flag=1;
tempx=[0,temp'];
tempy=tempx*0;
for i=2:length(tempx)
    if tempx(i)==1
        tempy(i)=flag;
    end
    if (tempx(i)-tempx(i-1))==-1
        flag=flag+1;
    end
end
temp=tempy(2:end);
clear tempx tempy
%plot(temp)
travel=cell(1,1);
flag=1;
okframe=[];
for i=1:max(temp)
    tempp=find(temp==i);
    if length(tempp)>=30
        tempp(end-4:end)=[];
        tempp(1:5)=[];
        travel{1,flag}=tempp;
        okframe=[okframe,tempp];
        flag=flag+1;
    end
end
linespeed=setdiff([1:length(badelectro)],okframe);
badelectro = find(badelectro>200);
noneedfram=union(linespeed,badelectro);
a=union(find(data_3d(:,1)<0),find(data_3d(:,1)>1500));
b=union(find(data_3d(:,2)<0),find(data_3d(:,2)>1500));
c=union(find(data_3d(:,3)<0),find(data_3d(:,3)>750));
outspace=union(union(a,b),c);
noneedfram=union(outspace,noneedfram);
% travel preprocess and line and dots ***************************** medidal
temp=unites{celli,1};
spikeatframe=[];
for j=1:length(temp)
    [k,b]= min(abs(temp(j)-vediotime));
    if k<0.05
        spikeatframe=[spikeatframe,b];
    end
end

data_3d(noneedfram,:)=nan;
spikeatframe=setdiff(spikeatframe,noneedfram);
reservedspikeatframe=spikeatframe;
h=plot3(data_3d(:,1),data_3d(:,2),data_3d(:,3),'LineWidth',0.3,'Color',[0 0 0])
h.Color(4)=0.2
%xlabel('x','FontName','Helvetica','FontSize',6);ylabel('y','FontName','Helvetica','FontSize',6);zlabel('z','FontName','Helvetica','FontSize',6);
%set(gca,'XTick',[0,500,1000,1500],'FontName','Helvetica','FontSize',6);
axis([0,1500,0,1500,0,750]) 
hold on
%scatter3(data_3d_big(a,1),data_3d_big(a,2),data_3d_big(a,3),10,"magenta","filled")
scatter3(data_3d(spikeatframe,1),data_3d(spikeatframe,2),data_3d(spikeatframe,3),2,"red","filled")
view(3)
xticks([]);yticks([]);zticks([]);

daspect([1 1 1]);
set(gcf,'Color',[1 1 1])
set(gca,'Color',[0.9 0.9 0.9]) 
reserveddata_3d=data_3d;
% travel preprocess and line and dots ********************************* end

%heatmap*******************************************************************
%figure('Position',[660 100 560 420])
subplot(152)
the3dmap=unitesAfterPCSelection{celli,2};
vol3d('Cdata',the3dmap)
colormap(CustomHot)
view(3)
xticks([]);yticks([]);zticks([]);

daspect([1 1 1]);
set(gcf,'Color',[1 1 1])
set(gca,'Color',[0.9 0.9 0.9]) 
%heatmap*******************************************************************

% % 2D projection**********************************************************
% cite m230529incert_SIofprojected
%figure('Position',[1220 100 560 420])
subplot(153)
% unitesAfterPCSelection{celli,16}={xOy_hm,xOy_SI,yOz_hm,yOz_SI,xOz_hm,xOz_SI,Xa_hm,Xa_SI,Ya_hm,Ya_SI,Za_hm,Za_SI};
xOy_hm=unitesAfterPCSelection{celli,16}{1};
yOz_hm=unitesAfterPCSelection{celli,16}{3};
xOz_hm=unitesAfterPCSelection{celli,16}{5};
tempp=zeros(21,21,11)*nan;%tempp(11,11,6)=max(max(max(temp)));
[x,y,z] = meshgrid(0:1:20,0:1:20,0:1:10);
xslice = [];yslice = [];zslice = 0;
tempp(1:20,1:20,1)=xOy_hm;
s=slice(x, y, z, tempp, xslice, yslice, zslice)
s.EdgeColor='none'
hold on
xslice = 20;yslice = [];zslice = [];
tempp=zeros(21,21,11)*nan;%tempp(11,11,6)=max(max(max(temp)));
tempp(1:20,21,1:10)=yOz_hm;
s=slice(x, y, z, tempp, xslice, yslice, zslice)
s.EdgeColor='none'
hold on
xslice = [];yslice = 20;zslice = [];
tempp=zeros(21,21,11)*nan;%tempp(11,11,6)=max(max(max(temp)));
tempp(21,1:20,1:10)=xOz_hm;
s=slice(x, y, z, tempp, xslice, yslice, zslice)
s.EdgeColor='none'
colormap(CustomHot)
grid off
xlim([0 20]);ylim([0 20]);zlim([0 10])


daspect([1 1 1]);
set(gcf,'Color',[1 1 1])
set(gca,'Color',[0.9 0.9 0.9]) 
xticks([]);yticks([]);zticks([]);
% % 2D projection**********************************************************




% trisurf *****************************************************************
%figure('Position',[1220 520 560 420])
subplot(154)
L=unitesAfterPCSelection{celli,12};
num=unitesAfterPCSelection{celli,13};
for i=1:num
    tempp=find(L==i);
    length(tempp);
    if length(tempp)>17 %%230530 version 17
        temp=zeros(size(the3dmap));
        temp(tempp)=the3dmap(tempp);
        [x,y,z] = meshgrid(1:1:20,1:1:20,1:1:10);
        temp=[x(tempp),y(tempp),z(tempp)];
        x=x-1;y=y-1;z=z-1;
        temp=[temp;[x(tempp),y(tempp),z(tempp)]];
        [k,vol] = convhulln(temp);
        trisurf(k,temp(:,1),temp(:,2),temp(:,3),'FaceColor',[1,0.375,0],'FaceAlpha',0.2,'EdgeColor',[1,0.375,0],'LineWidth',0.3);
        hold on
        temp=zeros(size(the3dmap));
        temp(tempp)=1;
        stats = regionprops3(temp,'all');
        center=stats.Centroid*0.075;
        scatter3(center(1)/0.075,center(2)/0.075,center(3)/0.075,30,'MarkerFaceColor',[0.4660 0.6740 0.1880],'MarkerEdgeColor','none');
        hold on
    end
end 
xlim([0 20]);ylim([0 20]);zlim([0 10])
xticks([0 5 10 15 20]);yticks([0 5 10 15 20]);zticks([0 5 10]);

daspect([1 1 1]);
set(gcf,'Color',[1 1 1])
set(gca,'Color',[0.9 0.9 0.9]) 
 
% trisurf *****************************************************************

% % info ******************************************************************
%figure('Position',[1220 560 560 420])
subplot(155)
scatter([0 10],[0 10]);hold on

text(1,9,'max f and mmmax');hold on;
maxfr=unitesAfterPCSelection{celli,5};
text(6,9,num2str(maxfr));hold on
the3dmap=unitesAfterPCSelection{celli,2};
SI=max(max(max(the3dmap)));
text(9,9,num2str(SI));hold on

text(1,8,'SI and SI p');hold on;
SI=unitesAfterPCSelection{celli,4};
text(6,8,num2str(SI));hold on
SI=unitesAfterPCSelection{celli,7};
text(9,8,num2str(SI));hold on

if size(unitesAfterPCSelection{celli,15},1)>0
text(1,7,'Elongation');hold on;
SI=unitesAfterPCSelection{celli,15}(1,12);
text(6,7,num2str(SI));hold on
text(1,6,'sphericity');hold on;
SI=unitesAfterPCSelection{celli,15}(1,13);
text(6,6,num2str(SI));hold on
end

text(1,5,'1 half mf');hold on;
%SI=max(max(max(the3dmap_1sthalf)));
%text(6,5,num2str(SI));hold on

text(1,4,'2 half mf');hold on;
%SI=max(max(max(the3dmap_2ndhalf)));
%text(6,4,num2str(SI));hold on

text(1,3,'stability and p');hold on;
SI=unitesAfterPCSelection{celli,3};
text(6,3,num2str(SI));hold on
SI=unitesAfterPCSelection{celli,9};
text(9,3,num2str(SI));hold on

text(1,2,'sparsity');hold on;
SI=unitesAfterPCSelection{celli,8};
text(6,2,num2str(SI));hold on


text(1,1,'celli');hold on;
text(6,1,num2str(celli));hold on

text(1,0,'sessionnanme');hold on;
temp=find(sessionnanme=='\');
temp=temp(end)+1;
temp=temp+[7:16];
text(6,0,sessionnanme(temp));hold on
% % info ******************************************************************

        clear unitesAfterPCSelection pred speed badelectro 
    end % end celli
    %%
end



%%


% unitesAfterPCSelection{celli,1}=unitename;
% unitesAfterPCSelection{celli,2}=the3dmap;
% unitesAfterPCSelection{celli,3}=sparcity;
% unitesAfterPCSelection{celli,4}=SI;
% unitesAfterPCSelection{celli,5}=maxfr;
% unitesAfterPCSelection{celli,6}=shSI;
% unitesAfterPCSelection{celli,7}=SIsignificant;
% unitesAfterPCSelection{celli,8}=haflstability;
% unitesAfterPCSelection{celli,9}=haflstabilityp;
% unitesAfterPCSelection{celli,10}=haflstabilitysig;
% unitesAfterPCSelection{celli,11}=haflstability100shu;
% unitesAfterPCSelection{celli,12}=L;
% unitesAfterPCSelection{celli,13}=num;
% unitesAfterPCSelection{celli,14}=allfiledhead;
% unitesAfterPCSelection{celli,15}=Allfield;
% unitesAfterPCSelection{celli,16}={xOy_hm,xOy_SI,yOz_hm,yOz_SI,xOz_hm,xOz_SI,Xa_hm,Xa_SI,Ya_hm,Ya_SI,Za_hm,Za_SI};
