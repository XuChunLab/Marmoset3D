load('Tetroexample230620.mat')

%%
figure('Position',[100 100 300 400])
for i=1:floor(size(a,1)/4)
    h=plot([1:48],a(i,3:50)+400,'Color','#0072BD','LineWidth',0.1);
    h.Color(4)=0.1;
    hold on
    h=plot([50:97]+5,a(i,51:98)+400,'Color','#0072BD','LineWidth',0.1);
    h.Color(4)=0.1;
    hold on
    h=plot([99:146]+10,a(i,99:146)+400,'Color','#0072BD','LineWidth',0.1);
    h.Color(4)=0.1;
    hold on
    h=plot([148:195]+15,a(i,147:194)+400,'Color','#0072BD','LineWidth',0.1);
    h.Color(4)=0.1;
    hold on
end
plot([1:48],nanmean(a(:,3:50))+400,'k','LineWidth',0.6);hold on
plot([50:97]+5,nanmean(a(:,51:98))+400,'k','LineWidth',0.6);hold on
plot([99:146]+10,nanmean(a(:,99:146))+400,'k','LineWidth',0.6);hold on
plot([148:195]+15,nanmean(a(:,147:194))+400,'k','LineWidth',0.6);hold on

for i=1:floor(size(b,1)/2)
    h=plot([1:48],b(i,3:50)+200,'Color','#7E2F8E','LineWidth',0.1);
    h.Color(4)=0.1;
    hold on
    h=plot([50:97]+5,b(i,51:98)+200,'Color','#7E2F8E','LineWidth',0.1);
    h.Color(4)=0.1;
    hold on
    h=plot([99:146]+10,b(i,99:146)+200,'Color','#7E2F8E','LineWidth',0.1);
    h.Color(4)=0.1;
    hold on
    h=plot([148:195]+15,b(i,147:194)+200,'Color','#7E2F8E','LineWidth',0.1);
    h.Color(4)=0.1;
    hold on
end
plot([1:48],nanmean(b(:,3:50))+200,'k','LineWidth',0.6);hold on
plot([50:97]+5,nanmean(b(:,51:98))+200,'k','LineWidth',0.6);hold on
plot([99:146]+10,nanmean(b(:,99:146))+200,'k','LineWidth',0.6);hold on
plot([148:195]+15,nanmean(b(:,147:194))+200,'k','LineWidth',0.6);hold on

for i=1:floor(size(c,1)/4)
    h=plot([1:48],c(i,3:50),'Color','#A2142F','LineWidth',0.1);
    h.Color(4)=0.1;
    hold on
    h=plot([50:97]+5,c(i,51:98),'Color','#A2142F','LineWidth',0.1);
    h.Color(4)=0.1;
    hold on
    h=plot([99:146]+10,c(i,99:146),'Color','#A2142F','LineWidth',0.1);
    h.Color(4)=0.1;
    hold on
    h=plot([148:195]+15,c(i,147:194),'Color','#A2142F','LineWidth',0.1);
    h.Color(4)=0.1;
    hold on
end
plot([1:48],nanmean(c(:,3:50)),'k','LineWidth',0.6);hold on
plot([50:97]+5,nanmean(c(:,51:98)),'k','LineWidth',0.6);hold on
plot([99:146]+10,nanmean(c(:,99:146)),'k','LineWidth',0.6);hold on
plot([148:195]+15,nanmean(c(:,147:194)),'k','LineWidth',0.6);hold on



for i=1:floor(size(d,1)/6)
    h=plot([1:48],d(i,3:50)-200,'Color','#D95319','LineWidth',0.1);
    h.Color(4)=0.1;
    hold on
    h=plot([50:97]+5,d(i,51:98)-200,'Color','#D95319','LineWidth',0.1);
    h.Color(4)=0.1;
    hold on
    h=plot([99:146]+10,d(i,99:146)-200,'Color','#D95319','LineWidth',0.1);
    h.Color(4)=0.1;
    hold on
    h=plot([148:195]+15,d(i,147:194)-200,'Color','#D95319','LineWidth',0.1);
    h.Color(4)=0.1;
    hold on
end
plot([1:48],nanmean(d(:,3:50))-200,'k','LineWidth',0.6);hold on
plot([50:97]+5,nanmean(d(:,51:98))-200,'k','LineWidth',0.6);hold on
plot([99:146]+10,nanmean(d(:,99:146))-200,'k','LineWidth',0.6);hold on
plot([148:195]+15,nanmean(d(:,147:194))-200,'k','LineWidth',0.6);hold on


box off
yticks([])

figure
scatter(e(1:2800,1),e(1:2800,2),4,'filled','MarkerFaceColor',[0 0 0],'MarkerFaceAlpha',0.2)
hold on
scatter(a(:,1),a(:,2),4,'filled','MarkerFaceColor','#0072BD')
hold on
scatter(b(:,1),b(:,2),4,'filled','MarkerFaceColor','#7E2F8E')
hold on
scatter(c(1:450,1),c(1:450,2),4,'filled','MarkerFaceColor','#A2142F')
hold on
scatter(d(1:600,1),d(1:600,2),4,'filled','MarkerFaceColor','#D95319')
box off
yticks([])
xlim([0 1000])
ylim([0 1000])