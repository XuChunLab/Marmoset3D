

%% m230715M3DPf3DPlaceFiledStatistics

% cite m230519Mfig2_ m230531M_
% cite m230713PlaceCellSISpacityStability_

clear
clc
close all
addpath(genpath('Y:\weichuanyao\Experiment\PreprocessCodeAndNote'))
addpath(genpath('Y:\weichuanyao\Experiment\PreprocessCodeAndNote\Nex'))

%% tool %% loading

clear
close all
clc
all={ % cite m230530BatchSlection 230703
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
 %'Y:\weichuanyao\Experiment\RAWandSortedElectrophysiology\230227April\3Dmaze230227AprilReserved.mat',
 %'Y:\weichuanyao\Experiment\RAWandSortedElectrophysiology\230228April\3Dmaze230228AprilReserved.mat',
 %'Y:\weichuanyao\Experiment\RAWandSortedElectrophysiology\230303April\3Dmaze230303AprilReserved.mat',
 %'Y:\weichuanyao\Experiment\RAWandSortedElectrophysiology\230306AApril\3Dmaze230306AprilReserved.mat',
 %*****
 'V:\chuanyaoANDjiankang\3Dproject_DataFormXuGroupShare\230404Xiaoquan\3Dmaze230404XiaoquanReserved.mat',
 'X:\230412to230427TreeD\230413Nature\3Dmaze230413NatureReserved.mat',
    };


for i=1:length(all)
    test{i,3}=all{i,1};
temp=all{i,1};
tempp=find(temp=='\');
temp(tempp(end)+1:end)=[];
pwd=temp;
ListPath = folder_search( pwd, 'mat');
for j=1:length(ListPath)
    if strfind(ListPath{j},'nexUniteRecord.mat') > 0
        test{i,4}=ListPath{j};
    end
end
end

for i=1:size(test,1)
    test{i,1}=load(test{i,3},'unitesAfterPCSelection','TPBorederCellVersion','TPallVersion','TPNVersion');
    %test{i,2}=load(test{i,4});
end
%% ************************************************************************
% SI (no fHPC of Science) TPBorederCellVersion SI_nofHPC_TPBorederCellVersion
% SI (no fHPC of Science) Narow SI_nofHPC_Narow
% SI (fHPC of Science) TPBorederCellVersion SI_yesfHPC_TPBorederCellVersion
% SI (fHPC of Science) Narow SI_yesfHPC_Narow

all={}
% head='PFC-B PFC-N fHPC-B fHPC-N pHPC-B pHPC-N'

%% picture all filed in a space
yzjzy1color={'#FD6D5A', '#FEB40B', '#6DC354', '#994487', '#518CD8', '#443295'};

% SI (no fHPC of Science) TPBorederCellVersion SI_nofHPC_TPBorederCellVersion
% SI (no fHPC of Science) Narow SI_nofHPC_Narow
% SI (fHPC of Science) TPBorederCellVersion SI_yesfHPC_TPBorederCellVersion
% SI (fHPC of Science) Narow SI_yesfHPC_Narow
SIofPFC_PC=[];SIofPFC_notPC=[];
SIofHPC_PC=[];SIofHPC_notPC=[];
count=1;Colors={[0 0.4470 0.7410],[0.8500 0.3250 0.0980],[0.9290 0.6940 0.1250],[0.4940 0.1840 0.5560],[0.4660 0.6740 0.1880],[0.3010 0.7450 0.9330],[0.6350 0.0780 0.1840]}
Colors={'#FD6D5A', '#FEB40B', '#6DC354', '#994487', '#518CD8', '#443295','#6DC354'};
wantsession=1:length(test);

wantsession=setdiff(wantsession,([31 35 39 43 47 51]+1))
%wantsession=([31 35 39 43 47 51]+1)
wantsession=[11 19 35 51 54 63]
wantsession=[60        62    11 51   54   35    ]
figure
Center=[];
for sessioni=wantsession
    sessionnanme=test{sessioni,3};a=find(sessionnanme=='\');b=a(end);name=sessionnanme(b+13);
    %if (name=='X') || (name=='x')

        %TPBorederCellVersion=={isCellidPFC,isPCidPFC,isCellidHPC,isPCidHPC};
        celli1=test{sessioni, 1}.TPBorederCellVersion{2}; %% here 4 means isPCidHPC
        celli2=test{sessioni, 1}.TPNVersion{2}; %% here 4 means isPCidHPC
        celli=[celli1,celli2]
        for cellii=1:length(celli)

the3dmap=test{sessioni, 1}.unitesAfterPCSelection{celli(cellii),2};%the3dmap
L=test{sessioni, 1}.unitesAfterPCSelection{celli(cellii),12};%L
num=test{sessioni, 1}.unitesAfterPCSelection{celli(cellii),13};%num
Allfield=test{sessioni, 1}.unitesAfterPCSelection{celli(cellii),15};%Allfield
% unitesAfterPCSelection{celli,15}=Allfield;
for i=1:num
    tempp=find(L==i);
    length(tempp);
    if (length(tempp)>27) & (length(tempp)<135) %27~135voxls filed 少画一点 今天先
        temp=zeros(size(the3dmap));
        temp(tempp)=the3dmap(tempp);
        [x,y,z] = meshgrid(1:1:20,1:1:20,1:1:10);
        temp=[x(tempp),y(tempp),z(tempp)];
        x=x-1;y=y-1;z=z-1;
        temp=[temp;[x(tempp),y(tempp),z(tempp)]];
        [k,vol] = convhulln(temp);
        newcount=mod(count,7)+1;
        trisurf(k,temp(:,1),temp(:,2),temp(:,3),'FaceColor',Colors{newcount},'FaceAlpha',0.16,'EdgeColor',Colors{newcount},'LineWidth',0.15);hold on
        center=mean(temp)*0.075;
        scatter3(center(1)/0.075,center(2)/0.075,center(3)/0.075,'filled','MarkerFaceColor',Colors{newcount});hold on
        Center=[Center;[center(1)/0.075,center(2)/0.075,center(3)/0.075]];
        count=count+1;
    end     
end
xlim([0 20]);ylim([0 20]);zlim([0 10])
set(gca,'FontName','Helvetica','FontSize',6);
daspect([1 1 1]); 
        end
    %end %(name=='X') || (name=='x')
end

xticks([0:4:20])
yticks([0:4:20])
zticks([0:2:10])
set(gcf,'Color',[1 1 1])
set(gca,'Color',[0.9 0.9 0.9])
set(gca,'FontName','Helvetica' ,'FontSize',6);
%%
figure
hist(Center(:,3))
%% picture all filed centernoid in a space

% SI (no fHPC of Science) TPBorederCellVersion SI_nofHPC_TPBorederCellVersion
% SI (no fHPC of Science) Narow SI_nofHPC_Narow
% SI (fHPC of Science) TPBorederCellVersion SI_yesfHPC_TPBorederCellVersion
% SI (fHPC of Science) Narow SI_yesfHPC_Narow
SIofPFC_PC=[];SIofPFC_notPC=[];
SIofHPC_PC=[];SIofHPC_notPC=[];
count=1;Colors={[0 0.4470 0.7410],[0.8500 0.3250 0.0980],[0.9290 0.6940 0.1250],[0.4940 0.1840 0.5560],[0.4660 0.6740 0.1880],[0.3010 0.7450 0.9330],[0.6350 0.0780 0.1840]}
wantsession=1:length(test);
wantsession=([31 35 39 43 47 51]+1)
%wantsession=setdiff(wantsession,([31 35 39 43 47 51]+1))

figure
for sessioni=wantsession
    sessionnanme=test{sessioni,3};a=find(sessionnanme=='\');b=a(end);name=sessionnanme(b+13);
    %if (name=='X') || (name=='x')

        %TPBorederCellVersion=={isCellidPFC,isPCidPFC,isCellidHPC,isPCidHPC};
        celli1=test{sessioni, 1}.TPBorederCellVersion{4}; %% here 4 means isPCidHPC
        celli2=test{sessioni, 1}.TPNVersion{4}; %% here 4 means isPCidHPC
        celli=[celli1,celli2]
        for cellii=1:length(celli)

the3dmap=test{sessioni, 1}.unitesAfterPCSelection{celli(cellii),2};%the3dmap
L=test{sessioni, 1}.unitesAfterPCSelection{celli(cellii),12};%L
num=test{sessioni, 1}.unitesAfterPCSelection{celli(cellii),13};%num
Allfield=test{sessioni, 1}.unitesAfterPCSelection{celli(cellii),15};%Allfield
% unitesAfterPCSelection{celli,15}=Allfield;
for i=1:num
    tempp=find(L==i);
    length(tempp);
    %if (length(tempp)>27) & (length(tempp)<135) %27~135voxls filed 少画一点 今天先
    if  length(tempp)>17
        temp=zeros(size(the3dmap));
        temp(tempp)=the3dmap(tempp);
        [x,y,z] = meshgrid(1:1:20,1:1:20,1:1:10);
        temp=[x(tempp),y(tempp),z(tempp)];
        x=x-1;y=y-1;z=z-1;
        temp=[temp;[x(tempp),y(tempp),z(tempp)]];
        %[k,vol] = convhulln(temp);
        newcount=mod(count,7)+1;
        %trisurf(k,temp(:,1),temp(:,2),temp(:,3),'FaceColor',Colors{newcount},'FaceAlpha',0.16,'EdgeColor',Colors{newcount},'LineWidth',0.15);hold on
        center=mean(temp)*0.075;
        scatter3(center(1)/0.075,center(2)/0.075,center(3)/0.075,'filled','MarkerFaceColor',Colors{newcount});hold on
        count=count+1;
    end     
end
xlim([0 20]);ylim([0 20]);zlim([0 10])
set(gca,'FontName','Helvetica','FontSize',6);
daspect([1 1 1]); 
        end
    %end %(name=='X') || (name=='x')
end

%% filed num--- statistics ************************************************
% SI (no fHPC of Science) TPBorederCellVersion SI_nofHPC_TPBorederCellVersion
% SI (no fHPC of Science) Narow SI_nofHPC_Narow
% SI (fHPC of Science) TPBorederCellVersion SI_yesfHPC_TPBorederCellVersion
% SI (fHPC of Science) Narow SI_yesfHPC_Narow

wantsession=1:length(test);
wantsession=setdiff(wantsession,([31 35 39 43 47 51]+1))
wantsession=([31 35 39 43 47 51]+1)

Num=[];
for sessioni=wantsession
    sessionnanme=test{sessioni,3};a=find(sessionnanme=='\');b=a(end);name=sessionnanme(b+13);
    %if (name=='X') || (name=='x')

        %TPBorederCellVersion=={isCellidPFC,isPCidPFC,isCellidHPC,isPCidHPC};
        
        
        celli=test{sessioni, 1}.TPNVersion{2};%% here 4 means isPCidHPC
        celli=test{sessioni, 1}.TPBorederCellVersion{2};%% here 4 means isPCidHPC

        for cellii=1:length(celli)

the3dmap=test{sessioni, 1}.unitesAfterPCSelection{celli(cellii),2};%the3dmap
L=test{sessioni, 1}.unitesAfterPCSelection{celli(cellii),12};%L
num=test{sessioni, 1}.unitesAfterPCSelection{celli(cellii),13};%num
Allfield=test{sessioni, 1}.unitesAfterPCSelection{celli(cellii),15};%Allfield
Num=[Num,size(Allfield,1)];
        end
    %end %(name=='X') || (name=='x')
end
%Num(Num==0)=1;
[a b]=hist(Num);a(a==0)=[];
figure('Position',[100 100 300 500])
bar(a);
%xlim([0.3 3.7]);ylim([0 25]);
%%
all{1,3}=Num

%% 'center vol EquivDiameter max_xyz min_xyz elongationindex sphericity pojectionvextor'--- statistics
% SI (no fHPC of Science) TPBorederCellVersion SI_nofHPC_TPBorederCellVersion
% SI (no fHPC of Science) Narow SI_nofHPC_Narow
% SI (fHPC of Science) TPBorederCellVersion SI_yesfHPC_TPBorederCellVersion
% SI (fHPC of Science) Narow SI_yesfHPC_Narow
close all
wantsession=1:length(test);
wantsession=setdiff(wantsession,([31 35 39 43 47 51]+1))
%wantsession=([31 35 39 43 47 51]+1)

vol=[];elongationindex=[];sphericity=[];elongationindexSig=[];sphericitySig=[];
for sessioni=wantsession
    sessionnanme=test{sessioni,3};a=find(sessionnanme=='\');b=a(end);name=sessionnanme(b+13);
    %if (name=='X') || (name=='x')

        %TPBorederCellVersion=={isCellidPFC,isPCidPFC,isCellidHPC,isPCidHPC};
        celli=test{sessioni, 1}.TPBorederCellVersion{2}; %% here 4 means isPCidHPC
        celli=test{sessioni, 1}.TPNVersion{2}; %% here 4 means isPCidHPC
        for cellii=1:length(celli)

Allfield=test{sessioni, 1}.unitesAfterPCSelection{celli(cellii),15};%Allfield
if size(Allfield,1)>=1
vol=[vol,Allfield(:,4)'];
elongationindex=[elongationindex,Allfield(:,12)'];
sphericity=[sphericity,Allfield(:,13)'];
elongationindexSig=[elongationindexSig,Allfield(:,17)'];
sphericitySig=[sphericitySig,Allfield(:,18)'];
end
        end
    %end %(name=='X') || (name=='x')
end

%%
figure('Position',[100 100 340 500])
hist(vol) %% m^3
xlim([0 1.4]);ylim([0 20])
xlabel('Volume (m^3)')

figure('Position',[100 100 340 500])
hist(elongationindex)
xlim([0 7]); %ylim([0 8])
xlabel('Elongation index')

figure('Position',[100 100 340 500])
hist(sphericity) %% m^3
xlim([0 1]);ylim([0 8])
xlabel('Sphericity index')

figure
temp1=elongationindex(elongationindexSig>0);
scatter(temp1*0+1,temp1); hold on
temp2=elongationindex(elongationindexSig<1);
scatter(temp2*0+2,temp2); hold on
ttest2(temp1,temp2) %(this result is ok 230715, SO I should indicate monkey walk along the box
mean(temp1)
mean(temp2)


length(temp1)
length(temp2)


















