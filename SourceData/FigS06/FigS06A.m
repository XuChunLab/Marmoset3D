

load('BehaviorAprilAndNatureIn2D.mat')
F1M=BehaviorAprilAndNatureIn2D

close all
april=[1 3 5 7 9]
nature=[2 4 6 8 10]
figure("Position",[300 300 800 300])

k=1
subplot(1,6,k)
scatter(ones(5,1)*1,F1M(april,k)/60)
hold on
scatter(ones(5,1)*2,F1M(nature,k)/60)
xlim([-1 4])
xticks([])
ylim([20 30])
ylabel('Vedio recording time (min)')

k=2
subplot(1,6,k)
scatter(ones(5,1)*1,F1M(april,k)/60)
hold on
scatter(ones(5,1)*2,F1M(nature,k)/60)
xlim([-1 4])
xticks([])
ylabel('Traveling time (min)')


k=3
subplot(1,6,k)
scatter(ones(5,1)*1,F1M(april,k))
hold on
scatter(ones(5,1)*2,F1M(nature,k))
xlim([-1 4])
xticks([])
ylim([30 60])
ylabel('Activity rate (%)')


k=4
subplot(1,6,k)
scatter(ones(5,1)*1,F1M(april,k))
hold on
scatter(ones(5,1)*2,F1M(nature,k))
xlim([-1 4])
xticks([])
ylim([100 400])
ylabel('Traveling distance (m)')

k=5
subplot(1,6,k)
scatter(ones(5,1)*1,F1M(april,k))
hold on
scatter(ones(5,1)*2,F1M(nature,k))
xlim([-1 4])
xticks([])
ylim([0.1 0.6])
ylabel('Mean speed (m/s)')

k=6
subplot(1,6,k)
scatter(ones(5,1)*1,F1M(april,k))
hold on
scatter(ones(5,1)*2,F1M(nature,k))
xlim([-1 4])
xticks([])
ylim([0 16])
ylabel('Peak speed (m/s)')
