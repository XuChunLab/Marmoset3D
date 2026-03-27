


AnimalWalkfile={ %% xyz two model 230809
    '.\230806Start3Dversion\Experi230809S1_xyz\resultiter900Net1001.mat';
    '.\230806Start3Dversion\Experi230809S1_xyz\resultiter900Net1002.mat';
    '.\230806Start3Dversion\Experi230809S1_xyz\resultiter900Net1003.mat';
    '.\230806Start3Dversion\Experi230809S2_xyz\resultiter800Net901.mat';
    '.\230806Start3Dversion\Experi230809S2_xyz\resultiter800Net902.mat';
    '.\230806Start3Dversion\Experi230809S2_xyz\resultiter800Net903.mat';
%    }
%AnimalWalkfile={ %% xyz two model
    '.\230806Start3Dversion\Experi230806S4_xyz\result01.mat';
    '.\230806Start3Dversion\Experi230806S4_xyz\result02.mat';
    '.\230806Start3Dversion\Experi230806S4_xyz\result03.mat';
    '.\230806Start3Dversion\Experi230807S4_xyz\resultiter800Net901.mat';
    '.\230806Start3Dversion\Experi230807S4_xyz\resultiter800Net902.mat';
    '.\230806Start3Dversion\Experi230807S4_xyz\resultiter800Net903.mat';
    }
close all
zprobilitycurve=[];
yprobilitycurve=[];
xprobilitycurve=[];


AllFiledproperties=cell(1,7); filedcount=1;
Allcentroid=[];Allmaxminnxyz=[];AllSIsig=[];Allheatmap={};
AllOrientation=[];
AllEvctors=cell(0,1);

for filei=1:length(AnimalWalkfile)




    clear Real Pred Rr Envec Autognnfr
    load(AnimalWalkfile{filei})
    Autognnfr=Envec; 


temp=[];
for i=1:length(Autognnfr)
    temp=[temp;mean(Autognnfr{i})];
end
unwantcell=find(nanstd(temp)<=0.01);
unwantcell=find(nanstd(temp)<=0.06);
wantcell=setdiff([1:size(temp,2)],unwantcell);

visitlimitation=5; 
for celli=1:length(wantcell)
cellid=wantcell(celli)
cellidfrmap=zeros(20,20,20);
visitmap=zeros(20,20,20);
for triali=1:length(Autognnfr)
    fr=Autognnfr{triali}(:,cellid);
    trajecx=Real{triali}(:,1);
    trajecy=Real{triali}(:,2);
    trajecz=Real{triali}(:,3);
    trajecx(union(find(trajecx<=0),find(trajecx>1500)))=nan;
    trajecx=ceil((trajecx-0)/75);
    trajecy(union(find(trajecy<=0),find(trajecy>1500)))=nan;
    trajecy=ceil((trajecy-0)/75);
    trajecz(union(find(trajecz<=0),find(trajecz>1500)))=nan;
    trajecz=ceil((trajecz-0)/75);
    for stepi=1:length(fr)
        if (~isnan(trajecx(stepi))) && (~isnan(trajecy(stepi))) && (~isnan(trajecz(stepi)))
            visitmap(trajecx(stepi),trajecy(stepi),trajecz(stepi))=visitmap(trajecx(stepi),trajecy(stepi),trajecz(stepi))+1;
            cellidfrmap(trajecx(stepi),trajecy(stepi),trajecz(stepi))=cellidfrmap(trajecx(stepi),trajecy(stepi),trajecz(stepi))+fr(stepi);
        end
    end
end
reservevisitplace=visitmap;
visitmap(visitmap<visitlimitation)=nan;
cellidfrmap=cellidfrmap./visitmap;
if sum(sum(sum(isnan(cellidfrmap))))==20*20*20
    'cellidfrmap all nan'
end
    for i=1:20
        for j=1:20
            for k=1:20
                temp=2;
                while isnan(cellidfrmap(i,j,k))
                    a=(i-temp:1:i+temp);a(a<1)=[];a(a>20)=[];
                    b=(j-temp:1:j+temp);b(b<1)=[];b(b>20)=[];
                    c=(k-temp:1:k+temp);c(c<1)=[];c(c>20)=[];
                    cellidfrmap(i,j,k)=nanmean(nanmean(nanmean(cellidfrmap(a,b,c),3)));
                    temp=temp+1;
                    if sum(sum(sum(isnan(cellidfrmap))))==20*20*20
                        'cellidfrmap all nan'
                    end
                end
                temp=2;
            end
        end
    end
cellidfrmap= smooth3(cellidfrmap,'gaussian',[5 5 5],1);
cellidfrmap(find(reservevisitplace<visitlimitation))=nan;

temp=cellidfrmap*nan;
for i=1:20
    temp(:,:,i)=cellidfrmap(:,:,i)';
end
temp=temp-min(min(min(temp)));
cellidfrmap=temp;

Allheatmap{1,celli}=cellidfrmap;
fr3Dmap=cellidfrmap;
reservedfrmap=fr3Dmap;

% comput SI and significant************************************************
pi=reshape(reservevisitplace,1,20*20*20);
ri=reshape(fr3Dmap,1,20*20*20);
ri(find(pi<5))=[];%visitinglimitation=5
pi(find(pi<5))=[];%visitinglimitation=5
pi=pi/(sum(pi));
r=sum((ri.*pi));
temp=log2(ri/r);
temp(ri==0.0)=0;
SI=sum(ri.*temp.*pi)/r;


SIsig=1
if SIsig
    frmap=reservedfrmap;
    bineray=zeros(20,20,20);
    thres=(max(max(max(frmap)))-min(min(min(frmap))))*0.7+min(min(min(frmap))); 
    bineray(find(frmap>thres))=1;
    conn=[0 1 0;1 1 1;0 1 0];
    CONN=cat(3,[0 1 0; 1 1 1; 0 1 0],[1 1 1;1 1 1; 1 1 1],[0 1 0; 1 1 1; 0 1 0]);

    [L,num] = bwlabeln(bineray,CONN);
    Allheatmap{2,celli}=num;
    Allheatmap{3,celli}=L;
    stats = regionprops(L,'centroid');
    for centeri=1:size(stats,1)
        if length(find(L==centeri)) > 17
            Allcentroid=[Allcentroid;stats(centeri).Centroid];
            tempp=find(L==centeri);
            [x,y,z] = meshgrid(1:1:20,1:1:20,1:1:20);
            temp=[x(tempp),y(tempp),z(tempp)];
            x=x-1;y=y-1;z=z-1;
            temp=[temp;[x(tempp),y(tempp),z(tempp)]];
            %[k,vol] = convhulln(temp);
            max_xyz=max(temp);min_xyz=min(temp);
            Allmaxminnxyz=[Allmaxminnxyz;[max_xyz,min_xyz]];

            temp=zeros(20,20,20);
            temp(tempp)=1;
            newstats = regionprops3(temp,'all');
            AllOrientation=[AllOrientation;newstats.Orientation];
            
            AllFiledproperties{filedcount,6}=newstats.EigenVectors{1,1};
            AllFiledproperties{filedcount,7}=newstats.PrincipalAxisLength;
            filedcount=1+filedcount
            %AllFiledproperties=cell(1,7); filedcount=1;

        end
    end
    AllSIsig=[AllSIsig,cellid];
    
end
end %end celli

end % filei

yzjzy1color={'#FD6D5A', '#FEB40B', '#6DC354', '#994487', '#518CD8', '#443295'};

figure("Position",[400 400 700 500])
subplot(161)
temp=Allcentroid(:,1)
[a,b]=sort(temp)
scatter(a,1:length(Allcentroid),10,'filled','MarkerEdgeColor','none','MarkerFaceColor',yzjzy1color{1});hold on
for i=1:length(b)
    plot([Allmaxminnxyz(b(i),4),Allmaxminnxyz(b(i),1)],[i i],'Color',yzjzy1color{1})
    hold on
end
xlim([0 20])
ylim([0 length(b)+1])
xticks([]);yticks([])
box on
set(gcf,'Color',[1 1 1])
set(gca,'Color',[0.9 0.9 0.9]) 

subplot(162)
temp=Allcentroid(:,2)
[a,b]=sort(temp)
scatter(a,1:length(Allcentroid),10,'filled','MarkerEdgeColor','none','MarkerFaceColor',yzjzy1color{3});hold on
for i=1:length(b)
    plot([Allmaxminnxyz(b(i),5),Allmaxminnxyz(b(i),2)],[i i],'Color',yzjzy1color{3})
    hold on
end
xlim([0 20])
ylim([0 length(b)+1])
xticks([]);yticks([])
box on
set(gcf,'Color',[1 1 1])
set(gca,'Color',[0.9 0.9 0.9]) 

subplot(163)
temp=Allcentroid(:,3)
[a,b]=sort(temp)
scatter(a,1:length(Allcentroid),10,'filled','MarkerEdgeColor','none','MarkerFaceColor',yzjzy1color{5});hold on
for i=1:length(b)
    plot([Allmaxminnxyz(b(i),6),Allmaxminnxyz(b(i),3)],[i i],'Color',yzjzy1color{5})
    hold on
end
xlim([0 20])
ylim([0 length(b)+1])
xticks([]);yticks([])
box on
set(gcf,'Color',[1 1 1])
set(gca,'Color',[0.9 0.9 0.9]) 

%figure("Position",[400 400 600 100])
Center=Allcentroid;
subplot(164)
centerx=Center(:,1)*0.075;
windowbinhalf=0.1/2;
temp=[0:0.05:1.5]
for i=1:31
    temp(i)=length(intersect(find(centerx>(temp(i)-windowbinhalf)),find(centerx<(temp(i)+windowbinhalf))));
end
temp=temp/sum(temp);
plot([0:0.05:1.5],temp,'Color',yzjzy1color{1})
hold on
test_cdf=makedist('uniform','lower',0,'upper',1.5);
[h,p]=kstest(centerx,'CDF',test_cdf);
text(0,0.5,num2str(p))
xprobilitycurve=[xprobilitycurve;temp];
ylim([0 1]);xlim([0 1.5])
xticks([]);yticks([])
set(gcf,'Color',[1 1 1])
set(gca,'Color',[0.9 0.9 0.9]) 


centery=Center(:,2)*0.075;
%windowbinhalf=0.4/2;
temp=[0:0.05:1.5]
for i=1:31
    temp(i)=length(intersect(find(centery>(temp(i)-windowbinhalf)),find(centery<(temp(i)+windowbinhalf))));
end
temp=temp/sum(temp);
subplot(165)
plot([0:0.05:1.5],temp,'Color',yzjzy1color{3})
hold on
test_cdf=makedist('uniform','lower',0,'upper',1.5);
[h,p]=kstest(centery,'CDF',test_cdf);
text(0,0.5,num2str(p))
yprobilitycurve=[yprobilitycurve;temp];
ylim([0 1]);xlim([0 1.5])
xticks([]);yticks([])
set(gcf,'Color',[1 1 1])
set(gca,'Color',[0.9 0.9 0.9]) 



centerz=Center(:,3)*0.075;

%windowbinhalf=0.2/2;
temp=[0:0.05:1.5]
for i=1:31
    temp(i)=length(intersect(find(centerz>(temp(i)-windowbinhalf)),find(centerz<(temp(i)+windowbinhalf))));
end
temp=temp/sum(temp);
subplot(166)
plot([0:0.05:1.5],temp,'Color',yzjzy1color{5})
hold on
test_cdf=makedist('uniform','lower',0,'upper',1.5);
[h,p]=kstest(centerz,'CDF',test_cdf);
text(0,0.5,num2str(p))
ylim([0 1]);xlim([0 1.5])
xticks([]);yticks([])
zprobilitycurve=[zprobilitycurve;temp];
set(gcf,'Color',[1 1 1])
set(gca,'Color',[0.9 0.9 0.9]) 


