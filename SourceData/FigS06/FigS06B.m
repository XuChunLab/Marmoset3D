load('BehaviorAprilAndNatureIn2DHISTO.mat')
close all
figure
Alllinespeed(Alllinespeed<=0)=[];Alllinespeed(Alllinespeed>=2000)=[];
temp=hist(Alllinespeed,60)
hist(Alllinespeed,60)

xlim([0 1500])
ylabel('Time count')
xlabel('Speed (m/s)')
h = findobj(gca,'Type','patch');
h.FaceColor = [0 0.4470 0.7410];
h.EdgeColor = [0 0.4470 0.7410];

figure
hist(AllFacedirect,[-180:9:180])
xlim([-180 180])
ylabel('Time count')
xlabel('Azimuth (degree)')
xticks([-180 -90 0 90 180])
h = findobj(gca,'Type','patch');
h.FaceColor = [0 0.4470 0.7410];
h.EdgeColor = [0 0.4470 0.7410];

visit=zeros(20,20)
for i=1:length(Alldata2d)
    x=floor(Alldata2d(i,1)/60)+1;
    y=floor(Alldata2d(i,2)/60)+1;
    
    if length(intersect(x,[1:20]))==1 && length(intersect(y,[1:20]))==1
        visit(x,y)=visit(x,y)+1;
    end
    
end
figure('Position',[300 300 300 300])
imagesc(visit)
xticks([])
yticks([])
