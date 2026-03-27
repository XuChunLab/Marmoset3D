

close all
AllFiledproperties=cell(1,7); filedcount=1;
Allcentroid=[];Allmaxminnxyz=[];AllSIsig=[];Allheatmap={};
AllOrientation=[];
AllEvctors=cell(0,1);

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
% 230529 new version!!!!
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
cellidfrmap(find(reservevisitplace<visitlimitation))=nan;%% !! 

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
            AllFiledproperties{filedcount,5}=newstats.Orientation;
            AllFiledproperties{filedcount,6}=newstats.EigenVectors{1,1};
            AllFiledproperties{filedcount,7}=newstats.PrincipalAxisLength;
            filedcount=1+filedcount
            

        end
    end
    AllSIsig=[AllSIsig,cellid];
    
end
end %end celli
