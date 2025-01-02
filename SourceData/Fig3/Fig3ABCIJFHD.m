 

%% load data
clear
clc
close all
load('allsessionfram_filed.mat')
allsessionfram_filed(allsessionfram_filed(:,4)<10,:)=[];
allsessionfram_filed(isnan(allsessionfram_filed(:,4)),:)=[];

%% filed number per PC

k=ones(308,1);
for i=1:307
    if sum(allsessionfram_filed(i+1,5:9)-allsessionfram_filed(i,5:9))==0
        k(i)=0;
    end
end
temp=allsessionfram_filed(k==1,[4,10,12]);
pfc_pry_PC_filednumber=temp(find(temp(:,1)==11),2);
hpc_pry_PC_filednumber=temp(find(temp(:,1)==21),2);

thecell=cell(1,2);
thecell{1}=pfc_pry_PC_filednumber;
thecell{2}=hpc_pry_PC_filednumber;
[p h]=ranksum(thecell{1},thecell{2})

figure('Position',[400,400,380,450])
temp=cell(1,2);
y=[];x=[];
for tempi=1:2
    temp{tempi}=sort(thecell{tempi},'descend');
    y=[y;temp{tempi}];
    x=[x;repmat(num2str(tempi),length(temp{tempi}),1)];% length('9') is 1, length('10') is 2
end
boxplot(y,x,'Colors','k','PlotStyle','compact','MedianStyle','line','Widths',0.20,'Symbol','k')
hold on

for tempi=1:2
    windowtofindneardots=(max(temp{tempi})-min(temp{tempi}))/16; %% here 16 is to adjust the smoother
    widthfactor=zeros(size(temp{tempi}));
for i=1:length(temp{tempi})
    a=find(temp{tempi}>(temp{tempi}(i)-windowtofindneardots/2));
    b=find(temp{tempi}<(temp{tempi}(i)+windowtofindneardots/2));
    widthfactor(i)=length(intersect(a,b))-1;
end

if max(widthfactor)==0
    widthfactor=widthfactor+0.08;
else
    widthfactor=widthfactor/max(widthfactor);
end

widthr=0.30;
scatter(widthfactor.*(widthr*rand(length(temp{tempi}),1)) + tempi*ones(length(temp{tempi}),1) + 0.14,...
temp{tempi},8,'filled','MarkerFaceColor',[0.7 0.7 0.7])   

hold on
end
xlim([0.5 2.8])
ylim([0 6])
yticks([0:1:6])
box off

%% total vol per PC
temp=allsessionfram_filed(k==1,[4,10,12]);
pfc_pry_PC=temp(find(temp(:,1)==11),3);
hpc_pry_PC=temp(find(temp(:,1)==21),3);



thecell=cell(1,2);
thecell{1}=pfc_pry_PC;
thecell{2}=hpc_pry_PC;
[p h]=ranksum(thecell{1},thecell{2})
figure('Position',[400,400,380,450])
temp=cell(1,2);
y=[];x=[];
for tempi=1:2
    temp{tempi}=sort(thecell{tempi},'descend');
    y=[y;temp{tempi}];
    x=[x;repmat(num2str(tempi),length(temp{tempi}),1)];% length('9') is 1, length('10') is 2
end
boxplot(y,x,'Colors','k','PlotStyle','compact','MedianStyle','line','Widths',0.20,'Symbol','k')
hold on

for tempi=1:2
    windowtofindneardots=(max(temp{tempi})-min(temp{tempi}))/10; %% here 16 is to adjust the smoother
    widthfactor=zeros(size(temp{tempi}));
for i=1:length(temp{tempi})
    a=find(temp{tempi}>(temp{tempi}(i)-windowtofindneardots/2));
    b=find(temp{tempi}<(temp{tempi}(i)+windowtofindneardots/2));
    widthfactor(i)=length(intersect(a,b))-1;
end

if max(widthfactor)==0
    widthfactor=widthfactor+0.08;
else
    widthfactor=widthfactor/max(widthfactor);
end

widthr=0.15;
scatter(widthfactor.*(widthr*rand(length(temp{tempi}),1)) + tempi*ones(length(temp{tempi}),1) + 0.14,...
temp{tempi},8,'filled','MarkerFaceColor',[0.7 0.7 0.7])   

hold on
end
xlim([0.5 2.8])
ylim([0 0.4])
%yticks([0:1:6])
box off

%% from this part on, I need to to exclude the vol-size=0 filed
allsessionfram_filed(find(allsessionfram_filed(:,10)==0),:)=[];

%% vol per field 

pfc_pry_PC=allsessionfram_filed(find(allsessionfram_filed(:,4)==11),11);
hpc_pry_PC=allsessionfram_filed(find(allsessionfram_filed(:,4)==21),11);

thecell=cell(1,2);
thecell{1}=pfc_pry_PC;
thecell{2}=hpc_pry_PC;
[p h]=ranksum(thecell{1},thecell{2})
figure('Position',[400,400,380,450])
temp=cell(1,2);
y=[];x=[];
for tempi=1:2
    temp{tempi}=sort(thecell{tempi},'descend');
    y=[y;temp{tempi}];
    x=[x;repmat(num2str(tempi),length(temp{tempi}),1)];% length('9') is 1, length('10') is 2
end
boxplot(y,x,'Colors','k','PlotStyle','compact','MedianStyle','line','Widths',0.20,'Symbol','k')
hold on

for tempi=1:2
    windowtofindneardots=(max(temp{tempi})-min(temp{tempi}))/18; %% here 16 is to adjust the smoother
    widthfactor=zeros(size(temp{tempi}));
for i=1:length(temp{tempi})
    a=find(temp{tempi}>(temp{tempi}(i)-windowtofindneardots/2));
    b=find(temp{tempi}<(temp{tempi}(i)+windowtofindneardots/2));
    widthfactor(i)=length(intersect(a,b))-1;
end

if max(widthfactor)==0
    widthfactor=widthfactor+0.08;
else
    widthfactor=widthfactor/max(widthfactor);
end

widthr=0.26;
scatter(widthfactor.*(widthr*rand(length(temp{tempi}),1)) + tempi*ones(length(temp{tempi}),1) + 0.14,...
temp{tempi},8,'filled','MarkerFaceColor',[0.7 0.7 0.7])   

hold on
end
xlim([0.5 2.8])
ylim([0 0.4])
%yticks([0:1:6])
box off

%% Azimuth and Ptich
FirstPrincPEV=allsessionfram_filed(find(allsessionfram_filed(:,4)==11),[22:24]);
Yaw=atan2(FirstPrincPEV(:,2),FirstPrincPEV(:,1))*180/3.1415926536;
temp=sqrt(sum(FirstPrincPEV(:,1:2).*FirstPrincPEV(:,1:2),2));
Pitch=atan2(FirstPrincPEV(:,3),temp)*180/3.1415926536;
figure
subplot(221)
temp=Yaw;
temp(find(temp<0))=180+temp(find(temp<0));
a=[0:18:180];b=[0:18:180]
count=2;
for i=[18    36    54    72    90   108   126   144   162]
    a(count)=length(intersect(find(temp>=(i-18/2)),find(temp<(i+18/2))));
    count=count+1;
end
a(1)=length(union(find(temp<(18-18/2)),find(temp>=(162+18/2))));
a(11)=a(1);
[a,b]=hist(temp,[0:9:180])
test_cdf=makedist('uniform','lower',0,'upper',180);[h,p]=kstest(temp,'CDF',test_cdf)
plot(b,a/sum(a),'k')
xlim([0 180])
ylim([0 1])
xticks([0 90 180])
set(gcf,'Color',[1 1 1])
set(gca,'Color',[0.9 0.9 0.9]) 

subplot(222)
temp=Pitch;
[a,b]=hist(abs(temp),[0:9:90])
test_cdf=makedist('uniform','lower',0,'upper',90);[h,p]=kstest(temp,'CDF',test_cdf)
plot(b,a/sum(a),'r')
xlim([0 90])
ylim([0 1])
xticks([0 90])
set(gcf,'Color',[1 1 1])
set(gca,'Color',[0.9 0.9 0.9]) 

FirstPrincPEV=allsessionfram_filed(find(allsessionfram_filed(:,4)==21),[22:24]);
Yaw=atan2(FirstPrincPEV(:,2),FirstPrincPEV(:,1))*180/3.1415926536;
temp=sqrt(sum(FirstPrincPEV(:,1:2).*FirstPrincPEV(:,1:2),2));
Pitch=atan2(FirstPrincPEV(:,3),temp)*180/3.1415926536;

subplot(223)
temp=Yaw;
temp(find(temp<0))=180+temp(find(temp<0));
a=[0:18:180];b=[0:18:180]
count=2;
for i=[18    36    54    72    90   108   126   144   162]
    a(count)=length(intersect(find(temp>=(i-18/2)),find(temp<(i+18/2))));
    count=count+1;
end
a(1)=length(union(find(temp<(18-18/2)),find(temp>=(162+18/2))));
a(11)=a(1);
[a,b]=hist(temp,[0:9:180])
test_cdf=makedist('uniform','lower',0,'upper',180);[h,p]=kstest(temp,'CDF',test_cdf)
plot(b,a/sum(a),'k')
xlim([0 180])
ylim([0 1])
xticks([0 90 180])
set(gcf,'Color',[1 1 1])
set(gca,'Color',[0.9 0.9 0.9]) 

subplot(224)
temp=Pitch;
[a,b]=hist(abs(temp),[0:9:90])
test_cdf=makedist('uniform','lower',0,'upper',90);[h,p]=kstest(temp,'CDF',test_cdf)
plot(b,a/sum(a),'r')
xlim([0 90])
ylim([0 1])
xticks([0 90])
set(gcf,'Color',[1 1 1])
set(gca,'Color',[0.9 0.9 0.9]) 



%% centeroid distribution 
% cite Y:\weichuanyao\Analyse\3Dmaze230529\M3DPfModelExplaination\m231027
close all

temp=allsessionfram_filed(find(allsessionfram_filed(:,4)==11),[13 14 15  16 17 18  19 20 21]);
figure
subplot(131)
hist(temp(:,1))
subplot(132)
hist(temp(:,2))
subplot(133)
hist(temp(:,3))
%%

centerandextention=allsessionfram_filed(find(allsessionfram_filed(:,4)==21),[13 14 15   16 17 18   19 20 21]);
yzjzy1color={'#FD6D5A', '#FEB40B', '#6DC354', '#994487', '#518CD8', '#443295'};

figure("Position",[100 100 400 800])
subplot(231)
temp=centerandextention(:,1)
[a,b]=sort(temp)
scatter(a,1:length(centerandextention),10,'filled','MarkerEdgeColor','none','MarkerFaceColor',yzjzy1color{1});hold on
for i=1:length(b)
    plot([centerandextention(b(i),4),centerandextention(b(i),7)],[i i],'Color',[0.8 0.8 0.8],'LineWidth',0.1)
    hold on
end
xlim([0 1.5])
ylim([0 length(b)+1])
xticks([]);yticks([])
box on

subplot(232)
temp=centerandextention(:,2)
[a,b]=sort(temp)
scatter(a,1:length(centerandextention),10,'filled','MarkerEdgeColor','none','MarkerFaceColor',yzjzy1color{3});hold on
for i=1:length(b)
    plot([centerandextention(b(i),5),centerandextention(b(i),8)],[i i],'Color',[0.8 0.8 0.8],'LineWidth',0.1)
    hold on
end
xlim([0 1.5])
ylim([0 length(b)+1])
xticks([]);yticks([])
box on

subplot(233)
temp=centerandextention(:,3)
[a,b]=sort(temp)
scatter(a,1:length(centerandextention),10,'filled','MarkerEdgeColor','none','MarkerFaceColor',yzjzy1color{5});hold on
for i=1:length(b)
    plot([centerandextention(b(i),6),centerandextention(b(i),9)],[i i],'Color',[0.8 0.8 0.8],'LineWidth',0.1)
    hold on
end
xlim([0 1.5])
ylim([0 length(b)+1])
xticks([]);yticks([])
box on


Center=centerandextention(:,1:3);
subplot(234)
centerx=Center(:,1);
test_cdf=makedist('uniform','lower',0,'upper',1.5);
[h,px]=kstest(centerx,'CDF',test_cdf)
windowbinhalf=0.1/2;
temp=[0:0.05:1.5]
for i=1:31
    temp(i)=length(intersect(find(centerx>(temp(i)-windowbinhalf)),find(centerx<(temp(i)+windowbinhalf))));
end
temp=temp/sum(temp);
plot([0:0.05:1.5],temp,'Color',yzjzy1color{1})
ylim([0 1]);xlim([0 1.5])
xticks([]);yticks([])


subplot(235)
centerx=Center(:,2);
test_cdf=makedist('uniform','lower',0,'upper',1.5);
[h,px]=kstest(centerx,'CDF',test_cdf)
windowbinhalf=0.1/2;
temp=[0:0.05:1.5]
for i=1:31
    temp(i)=length(intersect(find(centerx>(temp(i)-windowbinhalf)),find(centerx<(temp(i)+windowbinhalf))));
end
temp=temp/sum(temp);
plot([0:0.05:1.5],temp,'Color',yzjzy1color{3})
ylim([0 1]);xlim([0 1.5])
xticks([]);yticks([])


subplot(236)
centerz=Center(:,3);
test_cdf=makedist('uniform','lower',0,'upper',0.75);
[h,pz]=kstest(centerz,'CDF',test_cdf)
%windowbinhalf=0.2/2;
temp=[0:0.05:0.75]
for i=1:16
    temp(i)=length(intersect(find(centerz>(temp(i)-windowbinhalf)),find(centerz<(temp(i)+windowbinhalf))));
end
temp=temp*0.5/sum(temp);
plot([0:0.05:0.75],temp,'Color',yzjzy1color{5})
ylim([0 1]);xlim([0 1.5])
xticks([]);yticks([])







%% HyperBolic % cite m230901tryHyperBolic
% cite Huanqiu Zhang, NN, 2023


close all
pfc_pry_PC=allsessionfram_filed(find(allsessionfram_filed(:,4)==11),11);
hpc_pry_PC=allsessionfram_filed(find(allsessionfram_filed(:,4)==21),11);

temp=sort(hpc_pry_PC,'descend')';

figure('Position',[300 300 300 300])
hist(temp,[0:0.01:0.36])
h = findobj(gca,'Type','patch');
h.FaceColor = [0.4660 0.6740 0.1880];
h.EdgeColor = 'w';
xlim([0 0.36])
ylim([0 40])
box off
hold on
[a,b]=hist(temp,[0:0.01:0.36])
b(find(a==0))=[];
a(find(a==0))=[];
% cftool

% General model Exp1:
%      f(x) = a*exp(b*x)
% Coefficients (with 95% confidence bounds):
%        a =       15.07  (8.887, 21.26)
%        b =      -13.32  (-21.58, -5.054)

c=15.07*exp( -13.32 * b)
plot(b,c,'Color',[0 0.4470 0.7410])



figure('Position',[300 300 180 180])
%b=b+0.01
d=log(a)
scatter(b,d,18,'filled','MarkerFaceColor',[0.4660 0.6740 0.1880])
hold on
% Linear model Poly1:
%      f(x) = p1*x + p2
% Coefficients (with 95% confidence bounds):
%        p1 =       -6.66  (-9.758, -3.562)
%        p2 =       1.941  (1.388, 2.495)
c=-6.66 * b + 1.941
plot(b,c,'Color',[0 0.4470 0.7410])
xlim([-0.00 0.36])
ylim([-1 4])

[k h]=corr(b',d')


% k =
% 
%    -0.6713
% 
% 
% h =
% 
%    1.7371e-04
%%
temp=sort(pfc_pry_PC,'descend')';

figure('Position',[300 300 300 300])
hist(temp,[0:0.01:0.36])
h = findobj(gca,'Type','patch');
h.FaceColor = [0.4660 0.6740 0.1880];
h.EdgeColor = 'w';
xlim([0 0.36])
ylim([0 40])
box off
hold on
[a,b]=hist(temp,[0:0.01:0.36])
b(find(a==0))=[];
a(find(a==0))=[];
% cftool

% General model Exp1:
%      f(x) = a*exp(b*x)
% Coefficients (with 95% confidence bounds):
%        a =       41.13  (34.15, 48.11)
%        b =      -30.38  (-36.67, -24.08)


c=41.13*exp( -30.38 * b)
plot(b,c,'Color',[0 0.4470 0.7410])



figure('Position',[300 300 180 180])
%b=b+0.01
d=log(a)
scatter(b,d,18,'filled','MarkerFaceColor',[0.4660 0.6740 0.1880])
hold on
% Linear model Poly1:
%      f(x) = p1*x + p2
% Coefficients (with 95% confidence bounds):
%        p1 =      -13.27  (-15.74, -10.79)
%        p2 =        2.88  (2.539, 3.222)

c=-13.27 * b + 2.88
plot(b,c,'Color',[0 0.4470 0.7410])
xlim([-0.00 0.36])
ylim([-1 4])

[k h]=corr(b',d')



% k =
% 
%    -0.9320
% 
% 
% h =
% 
%    8.1099e-10