


load('FigS2C1.mat')
load('FigS2C2.mat')
load('FigS2C3.mat')


coverage=[]
for i=1:16
    coverage=[coverage,sum(sum(sum(~~(Batch2Behavior230717Vsitingetc_Nature{1, i}))))/4000];
end
for i=1:19
    coverage=[coverage,sum(sum(sum(~~(Batch2Behavior230717Vsitingetc_Science{1, i}))))/4000];
end
for i=1:11
    coverage=[coverage,sum(sum(sum(~~(Batch2Behavior230717Vsitingetc_Xiaoquan{1, i}))))/4000];
end

figure
scatter(ones(1,16)*1,coverage(1:16))
hold on
scatter(ones(1,11)*2,coverage(17:27))
hold on
scatter(ones(1,19)*3,coverage(28:46))
hold on
scatter(ones(1,46)*4,coverage)
hold on

ttest2(coverage(1:16),coverage(17:27))
ttest2(coverage(28:46),coverage(17:27))
ttest2(coverage(1:16),coverage(28:46))
ylim([0 1])
xlim([0 5])

plot([-0.3 0.3]+1,[mean(coverage(1:16)),mean(coverage(1:16))])
hold on
plot([-0.3 0.3]+2,[mean(coverage(17:27)),mean(coverage(17:27))])
hold on
plot([-0.3 0.3]+3,[mean(coverage(28:46)),mean(coverage(28:46))])
hold on
plot([-0.3 0.3]+4,[mean(coverage),mean(coverage)])
hold on