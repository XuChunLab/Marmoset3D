

clear
close all
clc
load('FigS14DF1.mat')
load('FigS14DF2.mat')

vector1 = overlapratiao;
vector2 = nanoverlapratiao;

figure
subplot(121)
pie([74, 90-74])
subplot(122)
pie([226, 286-226])

observed = [74, 16; 226, 60];

total = sum(observed(:));
row_totals = sum(observed, 2);
col_totals = sum(observed, 1);
expected = (row_totals * col_totals) / total;

chi2 = sum((observed - expected).^2 ./ expected, 'all');
df = (size(observed,1)-1) * (size(observed,2)-1); 
p = 1 - chi2cdf(chi2, df);

