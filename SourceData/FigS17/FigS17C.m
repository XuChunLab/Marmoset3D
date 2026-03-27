
%% left

load('FigS17C1.mat', 'AllFiledproperties');b=[];
for i=1:size(AllFiledproperties,1)
    b=[b,AllFiledproperties{i,1}];
end
b=b*0.0750*0.0750*0.0750
clear AllFiledproperties

figure('Position',[300 300 300 300])
hist(b,[0:0.06:0.78])
h = findobj(gca,'Type','patch');
h.FaceColor = [0.4660 0.6740 0.1880];
h.EdgeColor = 'w';
hold on
[a,b]=hist(b,[0:0.06:0.78])
% cftool
% General model Exp1:
%      f(x) = a*exp(b*x)
% Coefficients (with 95% confidence bounds):
%        a =       269.3  (224.1, 314.5)
%        b =      -5.363  (-6.852, -3.873)
c=269.3 *exp( -5.363 * b)
plot(b,c,'Color',[0 0.4470 0.7410])
xlim([-0.00 0.8])
xticks([0:0.06:0.78])

b(a==0)=[];a(a==0)=[];
figure('Position',[300 300 300 300])
%b=b+0.01
d=log(a)
scatter(b,d,18,'filled','MarkerFaceColor',[0.4660 0.6740 0.1880])
hold on
% Linear model Poly1:
%      f(x) = p1*x + p2
% Coefficients (with 95% confidence bounds):
%        p1 =      -7.645  (-8.642, -6.649)
%        p2 =       5.765  (5.307, 6.222)
c= -7.645  * b +  5.765 
plot(b,c,'Color',[0 0.4470 0.7410])
ylim([0 6])
xlim([-0.00 0.8])
xticks([0:0.06:0.78])
[k,kk]=corr(b',d')


%% right
load('FigS17C2.mat', 'AllFiledproperties');b=[];
for i=1:size(AllFiledproperties,1)
    b=[b,AllFiledproperties{i,1}];
end
b=b*0.0750*0.0750*0.0750
clear AllFiledproperties

figure('Position',[300 300 300 300])
hist(b,[0:0.06:0.78])
h = findobj(gca,'Type','patch');
h.FaceColor = [0.4660 0.6740 0.1880];
h.EdgeColor = 'w';
hold on
[a,b]=hist(b,[0:0.06:0.78])
% cftool
% General model Exp1:
%      f(x) = a*exp(b*x)
% Coefficients (with 95% confidence bounds):
%        a =       67.04  (50.26, 83.82)
%        b =      -4.636  (-6.529, -2.743)
c=67.04 *exp( -4.636 * b)
plot(b,c,'Color',[0 0.4470 0.7410])
xlim([-0.00 0.8])
xticks([0:0.06:0.78])

b(a==0)=[];a(a==0)=[];
figure('Position',[300 300 300 300])
%b=b+0.01
d=log(a)
scatter(b,d,18,'filled','MarkerFaceColor',[0.4660 0.6740 0.1880])
hold on
% Linear model Poly1:
%      f(x) = p1*x + p2
% Coefficients (with 95% confidence bounds):
%        p1 =      -7.512  (-9.557, -5.467)
%        p2 =       4.476  (3.713, 5.239)
c= -7.512  * b +  4.476 
plot(b,c,'Color',[0 0.4470 0.7410])
ylim([0 5])
xlim([-0.00 0.8])
xticks([0:0.06:0.78])
[k,kk]=corr(b',d')

