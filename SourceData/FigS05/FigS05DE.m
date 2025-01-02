%% cite m230507plot



FaceC=[0]
figure('Position',[150,150,1200,250])
%% Ampli     Head=',TP,HalfHW,Meanfr,Stability';
subplot(151)
hist(Records(:,1),[0:10:400])
set(gca,'ytick',[0:10:70]) 
xlim([0 300])
ylim([0 70])
box off
ylabel('Neuron conut')
xlabel('Amplitude (miuV)')
h = findobj(gca,'Type','patch');
h.FaceColor = [0 0.6 0.9];
set(gca,'FontName','Helvetica','FontSize',6);

%% TP    Head=',,HalfHW,Meanfr,Stability';
subplot(152)
hist(Records(:,2),[0:0.04:1.2])
set(gca,'ytick',[0:20:120]) 
xlim([0 0.8])
ylim([0 120])
xlabel('TP (ms)')

ylabel('Neuron conut')
box off
h = findobj(gca,'Type','patch');
h.FaceColor = [0 0.6 0.9];
set(gca,'FontName','Helvetica','FontSize',6);
%% HalfHW    Head=',,,Meanfr,Stability';
subplot(153)
hist(Records(:,3),[0:0.03:0.36])
set(gca,'ytick',[0:40:240]) 
xlim([0 0.30])
ylim([0 240])
xlabel('HalfHW (ms)')

ylabel('Neuron conut')
box off
h = findobj(gca,'Type','patch');
h.FaceColor =[0 0.6 0.9];
set(gca,'FontName','Helvetica','FontSize',6);
%% Meanfr  Head=',,,,Stability';
subplot(154)
hist(Records(:,4),[0:0.5:18])
set(gca,'ytick',[0:30:180]) 
xlim([0 15])
ylim([0 180])
xlabel('Mean firing rate (spike/s)')

ylabel('Neuron conut')
box off
h = findobj(gca,'Type','patch');
h.FaceColor = [0 0.6 0.9];
set(gca,'FontName','Helvetica','FontSize',6);
%%  Stability Head=',,,,';
subplot(155)
hist(Records(:,5),[0:0.05:1])
set(gca,'ytick',[0:40:200]) 
xlim([0 1])
ylim([0 200])
xlabel('Stability (no unit)')

ylabel('Neuron conut')
box off
h = findobj(gca,'Type','patch');
h.FaceColor =[0 0.6 0.9];
set(gca,'FontName','Helvetica','FontSize',6);



