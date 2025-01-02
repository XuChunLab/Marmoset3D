

%% m240709SourceData
clear
clc
close all
load('m240901OrganizeData.mat')
%% 
SourceData=zeros(11,4)*nan;% pfc-pfc pfc-hpc hpc-pfc hpc-hpc
for i=1:11
    temp1=find(ConnectionData{i,2}==11); 
    temp2=find(ConnectionData{i,2}==21); 
    if length(temp1)>0
        SourceData(i,1)=sum(sum(~isnan(ConnectionData{i,3}(temp1,temp1))))/(length(temp1)*length(temp1));
    end
    if length(temp2)>0
        SourceData(i,4)=sum(sum(~isnan(ConnectionData{i,3}(temp2,temp2))))/(length(temp2)*length(temp2));
    end
    if length(temp1)>0 & length(temp2)>0
        SourceData(i,2)=sum(sum(~isnan(ConnectionData{i,3}(temp1,temp2))))/(length(temp1)*length(temp2));
        SourceData(i,3)=sum(sum(~isnan(ConnectionData{i,3}(temp2,temp1))))/(length(temp2)*length(temp1));
    end
end

figure('Position',[50 50 200 200])
hold on
for i=1:4
    scatter(ones(11,1)*i,SourceData(:,i))
end
[p,h]=ranksum(SourceData(:,1),SourceData(:,2)) % 0.3710
[p,h]=ranksum(SourceData(:,1),SourceData(:,3)) % 0.999999
[p,h]=ranksum(SourceData(:,1),SourceData(:,4))% 0.0247
[p,h]=ranksum(SourceData(:,2),SourceData(:,3))%  0.4206
[p,h]=ranksum(SourceData(:,2),SourceData(:,4))% 0.2727
[p,h]=ranksum(SourceData(:,3),SourceData(:,4))% 0.0216
%% 
SourceData=zeros(11,4)*nan;% pfc-pfc pfc-hpc hpc-pfc hpc-hpc
for i=1:11
    temp1=find(ConnectionData{i,4}>=95); 
    temp2=find(ConnectionData{i,4}<95); 
    if length(temp1)>0
        SourceData(i,1)=sum(sum(~isnan(ConnectionData{i,3}(temp1,temp1))))/(length(temp1)*length(temp1));
    end
    if length(temp2)>0
        SourceData(i,4)=sum(sum(~isnan(ConnectionData{i,3}(temp2,temp2))))/(length(temp2)*length(temp2));
    end
    if length(temp1)>0 & length(temp2)>0
        SourceData(i,2)=sum(sum(~isnan(ConnectionData{i,3}(temp1,temp2))))/(length(temp1)*length(temp2));
        SourceData(i,3)=sum(sum(~isnan(ConnectionData{i,3}(temp2,temp1))))/(length(temp2)*length(temp1));
    end
end

figure('Position',[50 50 200 200])
hold on
for i=1:4
    scatter(ones(11,1)*i,SourceData(:,i))
end
[p,h]=ranksum(SourceData(:,1),SourceData(:,2)) % 0.3085
[p,h]=ranksum(SourceData(:,1),SourceData(:,3)) % 0.5766
[p,h]=ranksum(SourceData(:,1),SourceData(:,4))%  0.1679
[p,h]=ranksum(SourceData(:,2),SourceData(:,3))%    0.3751
[p,h]=ranksum(SourceData(:,2),SourceData(:,4))%   0.2116
[p,h]=ranksum(SourceData(:,3),SourceData(:,4))%  0.0418

% 这个结果难解释一些
%% 
SourceData=zeros(11,4)*nan;% pfc-pfc pfc-hpc hpc-pfc hpc-hpc
for i=1:11
    temp1=intersect(find(ConnectionData{i,2}==11),find(ConnectionData{i,4}>=95))
    temp2=intersect(find(ConnectionData{i,2}==21),find(ConnectionData{i,4}>=95))
    if length(temp1)>0
        SourceData(i,1)=sum(sum(~isnan(ConnectionData{i,3}(temp1,temp1))))/(length(temp1)*length(temp1));
    end
    if length(temp2)>0
        SourceData(i,4)=sum(sum(~isnan(ConnectionData{i,3}(temp2,temp2))))/(length(temp2)*length(temp2));
    end
    if length(temp1)>0 & length(temp2)>0
        SourceData(i,2)=sum(sum(~isnan(ConnectionData{i,3}(temp1,temp2))))/(length(temp1)*length(temp2));
        SourceData(i,3)=sum(sum(~isnan(ConnectionData{i,3}(temp2,temp1))))/(length(temp2)*length(temp1));
    end
end
figure('Position',[50 50 200 200])
hold on
for i=1:4
    scatter(ones(11,1)*i,SourceData(:,i))
end
[p,h]=ranksum(SourceData(:,1),SourceData(:,2)) %
[p,h]=ranksum(SourceData(:,1),SourceData(:,3)) %
[p,h]=ranksum(SourceData(:,1),SourceData(:,4))%
[p,h]=ranksum(SourceData(:,2),SourceData(:,3))% 
[p,h]=ranksum(SourceData(:,2),SourceData(:,4))%
[p,h]=ranksum(SourceData(:,3),SourceData(:,4))% 
%% 
SourceData=zeros(11,4)*nan;% pfc-pfc pfc-hpc hpc-pfc hpc-hpc
for i=1:11
    temp1=intersect(find(ConnectionData{i,2}==11),find(ConnectionData{i,4}<95))
    temp2=intersect(find(ConnectionData{i,2}==21),find(ConnectionData{i,4}<95))
    if length(temp1)>0
        SourceData(i,1)=sum(sum(~isnan(ConnectionData{i,3}(temp1,temp1))))/(length(temp1)*length(temp1));
    end
    if length(temp2)>0
        SourceData(i,4)=sum(sum(~isnan(ConnectionData{i,3}(temp2,temp2))))/(length(temp2)*length(temp2));
    end
    if length(temp1)>0 & length(temp2)>0
        SourceData(i,2)=sum(sum(~isnan(ConnectionData{i,3}(temp1,temp2))))/(length(temp1)*length(temp2));
        SourceData(i,3)=sum(sum(~isnan(ConnectionData{i,3}(temp2,temp1))))/(length(temp2)*length(temp1));
    end
end
figure('Position',[50 50 200 200])
hold on
for i=1:4
    scatter(ones(11,1)*i,SourceData(:,i))
end
[p,h]=ranksum(SourceData(:,1),SourceData(:,2)) %
[p,h]=ranksum(SourceData(:,1),SourceData(:,3)) %
[p,h]=ranksum(SourceData(:,1),SourceData(:,4))%
[p,h]=ranksum(SourceData(:,2),SourceData(:,3))% 
[p,h]=ranksum(SourceData(:,2),SourceData(:,4))%
%% 
SourceData=zeros(11,4)*nan;% pfc-pfc pfc-hpc hpc-pfc hpc-hpc
for i=1:11
    temp1=intersect(find(ConnectionData{i,2}==21),find(ConnectionData{i,4}>=95))
    temp2=intersect(find(ConnectionData{i,2}==21),find(ConnectionData{i,4}<95))
    if length(temp1)>0
        SourceData(i,1)=sum(sum(~isnan(ConnectionData{i,3}(temp1,temp1))))/(length(temp1)*length(temp1));
    end
    if length(temp2)>0
        SourceData(i,4)=sum(sum(~isnan(ConnectionData{i,3}(temp2,temp2))))/(length(temp2)*length(temp2));
    end
    if length(temp1)>0 & length(temp2)>0
        SourceData(i,2)=sum(sum(~isnan(ConnectionData{i,3}(temp1,temp2))))/(length(temp1)*length(temp2));
        SourceData(i,3)=sum(sum(~isnan(ConnectionData{i,3}(temp2,temp1))))/(length(temp2)*length(temp1));
    end
end
figure('Position',[50 50 200 200])
hold on
for i=1:4
    scatter(ones(11,1)*i,SourceData(:,i))
end
[p,h]=ranksum(SourceData(:,1),SourceData(:,2)) %
[p,h]=ranksum(SourceData(:,1),SourceData(:,3)) %
[p,h]=ranksum(SourceData(:,1),SourceData(:,4))%
[p,h]=ranksum(SourceData(:,2),SourceData(:,3))% 
[p,h]=ranksum(SourceData(:,2),SourceData(:,4))%
[p,h]=ranksum(SourceData(:,3),SourceData(:,4))% 
%% 
SourceData=zeros(11,4)*nan;% pfc-pfc pfc-hpc hpc-pfc hpc-hpc
for i=1:11
    temp1=intersect(find(ConnectionData{i,2}==21),find(ConnectionData{i,4}>=95))
    temp2=intersect(find(ConnectionData{i,2}==21),find(ConnectionData{i,4}<95))
    if length(temp1)>0
        SourceData(i,1)=sum(sum(~isnan(ConnectionData{i,3}(temp1,temp1))))/(length(temp1)*length(temp1));
    end
    if length(temp2)>0
        SourceData(i,4)=sum(sum(~isnan(ConnectionData{i,3}(temp2,temp2))))/(length(temp2)*length(temp2));
    end
    if length(temp1)>0 & length(temp2)>0
        SourceData(i,2)=sum(sum(~isnan(ConnectionData{i,3}(temp1,temp2))))/(length(temp1)*length(temp2));
        SourceData(i,3)=sum(sum(~isnan(ConnectionData{i,3}(temp2,temp1))))/(length(temp2)*length(temp1));
    end
end


%%
figure('Position',[50 50 200 200])
hold on
for i=1:4
    scatter(ones(11,1)*i,SourceData(:,i))
end
[p,h]=ranksum(SourceData(:,1),SourceData(:,2)) %0.3636
[p,h]=ranksum(SourceData(:,1),SourceData(:,3)) %0.3636
[p,h]=ranksum(SourceData(:,1),SourceData(:,4))% 0.0396
[p,h]=ranksum(SourceData(:,2),SourceData(:,3))% 0.4206
[p,h]=ranksum(SourceData(:,2),SourceData(:,4))%0.2727
[p,h]=ranksum(SourceData(:,3),SourceData(:,4))% 0.0216




%% all kinds of 
SourceData=zeros(11,4)*nan;% pfc-pfc pfc-hpc hpc-pfc hpc-hpc
for i=1:11
    temp1=intersect(find(ConnectionData{i,2}==11),find(ConnectionData{i,4}>=95))
    temp2=intersect(find(ConnectionData{i,2}==11),find(ConnectionData{i,4}<95))
    temp3=intersect(find(ConnectionData{i,2}==21),find(ConnectionData{i,4}>=95))
    temp4=intersect(find(ConnectionData{i,2}==21),find(ConnectionData{i,4}<95))

    if length(temp1)>0 & length(temp1)>0 
        SourceData(i,1)=sum(sum(~isnan(ConnectionData{i,3}(temp1,temp1))))/(length(temp1)*length(temp1));
    end
    if length(temp1)>0 & length(temp2)>0 
        SourceData(i,2)=sum(sum(~isnan(ConnectionData{i,3}(temp1,temp2))))/(length(temp1)*length(temp2));
    end
    if length(temp1)>0 & length(temp3)>0 
        SourceData(i,3)=sum(sum(~isnan(ConnectionData{i,3}(temp1,temp3))))/(length(temp1)*length(temp3));
    end
    if length(temp1)>0 & length(temp4)>0 
        SourceData(i,4)=sum(sum(~isnan(ConnectionData{i,3}(temp1,temp4))))/(length(temp1)*length(temp4));
    end

    if length(temp2)>0 & length(temp1)>0 
        SourceData(i,5)=sum(sum(~isnan(ConnectionData{i,3}(temp2,temp1))))/(length(temp2)*length(temp1));
    end
    if length(temp2)>0 & length(temp2)>0 
        SourceData(i,6)=sum(sum(~isnan(ConnectionData{i,3}(temp2,temp2))))/(length(temp2)*length(temp2));
    end
    if length(temp2)>0 & length(temp3)>0 
        SourceData(i,7)=sum(sum(~isnan(ConnectionData{i,3}(temp2,temp3))))/(length(temp2)*length(temp3));
    end
    if length(temp2)>0 & length(temp4)>0 
        SourceData(i,8)=sum(sum(~isnan(ConnectionData{i,3}(temp2,temp4))))/(length(temp2)*length(temp4));
    end

    if length(temp3)>0 & length(temp1)>0 
        SourceData(i,9)=sum(sum(~isnan(ConnectionData{i,3}(temp3,temp1))))/(length(temp3)*length(temp1));
    end
    if length(temp3)>0 & length(temp2)>0 
        SourceData(i,10)=sum(sum(~isnan(ConnectionData{i,3}(temp3,temp2))))/(length(temp3)*length(temp2));
    end
    if length(temp3)>0 & length(temp3)>0 
        SourceData(i,11)=sum(sum(~isnan(ConnectionData{i,3}(temp3,temp3))))/(length(temp3)*length(temp3));
    end
    if length(temp3)>0 & length(temp4)>0 
        SourceData(i,12)=sum(sum(~isnan(ConnectionData{i,3}(temp3,temp4))))/(length(temp3)*length(temp4));
    end

    if length(temp4)>0 & length(temp1)>0 
        SourceData(i,13)=sum(sum(~isnan(ConnectionData{i,3}(temp4,temp1))))/(length(temp4)*length(temp1));
    end
    if length(temp4)>0 & length(temp2)>0 
        SourceData(i,14)=sum(sum(~isnan(ConnectionData{i,3}(temp4,temp2))))/(length(temp4)*length(temp2));
    end
    if length(temp4)>0 & length(temp3)>0 
        SourceData(i,15)=sum(sum(~isnan(ConnectionData{i,3}(temp4,temp3))))/(length(temp4)*length(temp3));
    end
    if length(temp4)>0 & length(temp4)>0 
        SourceData(i,16)=sum(sum(~isnan(ConnectionData{i,3}(temp4,temp4))))/(length(temp4)*length(temp4));
    end
    
end
figure('Position',[50 50 600 200])
hold on
for i=1:16
    scatter(ones(11,1)*i,SourceData(:,i))
end

%% plot  cite m240704makepicture
thecell=cell(1,4);
temp=SourceData(:,1);thecell{1} = temp(~isnan(temp));
temp=SourceData(:,2);thecell{2} = temp(~isnan(temp));
temp=SourceData(:,3);thecell{3} = temp(~isnan(temp));
temp=SourceData(:,4);thecell{4} = temp(~isnan(temp));
figure('Position',[400,400,450,450])
temp=cell(1,4);
y=[];x=[];
for tempi=1:4
    temp{tempi}=sort(thecell{tempi},'descend');
    y=[y;temp{tempi}];
    x=[x;repmat(num2str(tempi),length(temp{tempi}),1)];% length('9') is 1, length('10') is 2
end
boxplot(y,x,'Colors','k','PlotStyle','compact','MedianStyle','line','Widths',0.20,'Symbol','k')
hold on

for tempi=1:4
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

widthr=0.20;
scatter(widthfactor.*(widthr*rand(length(temp{tempi}),1)) + tempi*ones(length(temp{tempi}),1) + 0.14,...
temp{tempi},12,'filled','MarkerFaceColor',[0.7 0.7 0.7])   

hold on
end
xlim([0.5 4.8])
ylim([0 1])
%yticks([-1:0.2:1])
box off
