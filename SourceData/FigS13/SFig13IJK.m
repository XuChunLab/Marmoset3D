



 load(SFig13IJK.mat')

%% I
figure("Position",[0 0 400 400])
temp=find(allsessionfram_filed(:,27)>=95);
hist(allsessionfram_filed(temp,15),[0.0375000000000000	0.112500000000000	0.187500000000000	0.262500000000000	0.337500000000000	0.412500000000000	0.487500000000000	0.562500000000000	0.637500000000000	0.712500000000000])
xlim([0 0.75])
ylim([0 30])
%% J K
figure("Position",[0 0 1500 500])
subplot(131)
hold on
 for i=1:424
     if allsessionfram_filed(i,27)>=95
         %if (allsessionfram_filed(i,15)<0.45) && (allsessionfram_filed(i,15)>0.25)
         if allsessionfram_filed(i,15)<=0.25
             plot3([-0.5,0.5]*allsessionfram_filed(i,22)+allsessionfram_filed(i,13),...
               [-0.5,0.5]*allsessionfram_filed(i,23)+allsessionfram_filed(i,14),...
               [-0.5,0.5]*allsessionfram_filed(i,24)+allsessionfram_filed(i,15)...
               )
         end
     end
 end
 view(3)
 daspect([1 1 1])
 xlim([-0.5 2])
 ylim([-0.5 2])
 zlim([-0.1 0.9])
 
set(gca,'ZTick',[-0.1:0.2:0.9],'FontName','Calibri','FontSize',20);
set(gca,'XTick',[-0.5:0.5:2],'FontName','Calibri','FontSize',20);
set(gca,'YTick',[-0.5:0.5:2],'FontName','Calibri','FontSize',20);

0.25 
0.45
grid on

subplot(132)
hold on
 for i=1:424
     if allsessionfram_filed(i,27)>=95
         %if (allsessionfram_filed(i,15)<0.45) && (allsessionfram_filed(i,15)>0.25)
         if allsessionfram_filed(i,15)>=0.45
             plot3([-0.5,0.5]*allsessionfram_filed(i,22)+allsessionfram_filed(i,13),...
               [-0.5,0.5]*allsessionfram_filed(i,23)+allsessionfram_filed(i,14),...
               [-0.5,0.5]*allsessionfram_filed(i,24)+allsessionfram_filed(i,15)...
               )
         end
     end
 end
 view(3)
 daspect([1 1 1])
 xlim([-0.5 2])
 ylim([-0.5 2])
 zlim([-0.1 0.9])
 
set(gca,'ZTick',[-0.1:0.2:0.9],'FontName','Calibri','FontSize',20);
set(gca,'XTick',[-0.5:0.5:2],'FontName','Calibri','FontSize',20);
set(gca,'YTick',[-0.5:0.5:2],'FontName','Calibri','FontSize',20);

0.25 
0.45
grid on


subplot(133)
hold on
 for i=1:424
     if allsessionfram_filed(i,27)>=95
         if (allsessionfram_filed(i,15)<0.45) && (allsessionfram_filed(i,15)>0.25)
         %if allsessionfram_filed(i,15)<=0.25
             plot3([-0.5,0.5]*allsessionfram_filed(i,22)+allsessionfram_filed(i,13),...
               [-0.5,0.5]*allsessionfram_filed(i,23)+allsessionfram_filed(i,14),...
               [-0.5,0.5]*allsessionfram_filed(i,24)+allsessionfram_filed(i,15)...
               )
         end
     end
 end
 view(3)
 daspect([1 1 1])
 xlim([-0.5 2])
 ylim([-0.5 2])
 zlim([-0.1 0.9])
 
set(gca,'ZTick',[-0.1:0.2:0.9],'FontName','Calibri','FontSize',20);
set(gca,'XTick',[-0.5:0.5:2],'FontName','Calibri','FontSize',20);
set(gca,'YTick',[-0.5:0.5:2],'FontName','Calibri','FontSize',20);

0.25 
0.45
grid on



