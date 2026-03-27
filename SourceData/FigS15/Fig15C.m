
load('.\230715Start3Dversion\Experi230718_02\resultiter800Net906.mat')

close all

temp=floor(rand()*2999)+1;

temp=10
realposition=Real{1,temp}(2:end,1:3);
realspeed=Real{1,temp}(2:end,4);
realdirection=Real{1,temp}(2:end,5:7);

predposition=Pred{1,temp}(:,10:12);
predspeed=Pred{1,temp}(:,13);
preddirection=Pred{1,temp}(:,14:16);


figure('Position',[300 300 500 100])
subplot(122)
plot(realspeed,'k');hold on;scatter(1,realspeed(1),'k');hold on
plot(predspeed,'r');hold on;scatter(1,predspeed(1),'r');hold on
set(gcf,'Color',[1 1 1])
set(gca,'Color',[0.9 0.9 0.9])


subplot(121)
plot3(realposition(:,1),realposition(:,2),realposition(:,3),'k');hold on
scatter3(realposition(1,1),realposition(1,2),realposition(1,3),'k');hold on
plot3(predposition(:,1),predposition(:,2),predposition(:,3),'r');hold on
scatter3(predposition(1,1),predposition(1,2),predposition(1,3),'r');hold on
xlim([0 1500]);ylim([0 1500]);zlim([0 750]);
xticks([]);yticks([]);zticks([]);
daspect([1 1 1]);
set(gcf,'Color',[1 1 1])
set(gca,'Color',[0.9 0.9 0.9])