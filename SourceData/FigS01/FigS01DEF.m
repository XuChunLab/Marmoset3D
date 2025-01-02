
close all
eps=0;
set=[0,0]
for i=1:1000
a=[rand(1)*1500,rand(1)*1500,rand(1)*750];
b=[rand(1)*1500,rand(1)*1500,rand(1)*750];
an=a+[randn(),randn(),randn()]*eps;
bn=b+[randn(),randn(),randn()]*eps;
temp=a-b;
realdis=sqrt(sum(abs((temp.*temp))));
temp=an-bn;
experidis=sqrt(sum(abs((temp.*temp))));
set(1,i)=realdis;
set(2,i)=experidis;
end
subplot(231)
scatter(set(1,:),set(2,:))
subplot(234)
scatter(set(1,:),set(2,:)-set(1,:))
ylim([-120 120])

eps=10;
set=[0,0]
for i=1:1000
a=[rand(1)*1500,rand(1)*1500,rand(1)*750];
b=[rand(1)*1500,rand(1)*1500,rand(1)*750];
an=a+[randn(),randn(),randn()]*eps;
bn=b+[randn(),randn(),randn()]*eps;
temp=a-b;
realdis=sqrt(sum(abs((temp.*temp))));
temp=an-bn;
experidis=sqrt(sum(abs((temp.*temp))));
set(1,i)=realdis;
set(2,i)=experidis;
end
subplot(232)
scatter(set(1,:),set(2,:))
subplot(235)
scatter(set(1,:),set(2,:)-set(1,:))
ylim([-120 120])
temp=set(2,:)-set(1,:);
hold on
temp=sort(temp);
temp=temp([ceil(length(temp)*0.05),floor(length(temp)*0.95)]);
plot([0 2000],[temp(1),temp(1)],'r');plot([0 2000],[temp(2),temp(2)],'r')


eps=20;
set=[0,0]
for i=1:1000
a=[rand(1)*1500,rand(1)*1500,rand(1)*750];
b=[rand(1)*1500,rand(1)*1500,rand(1)*750];
an=a+[randn(),randn(),randn()]*eps;
bn=b+[randn(),randn(),randn()]*eps;
temp=a-b;
realdis=sqrt(sum(abs((temp.*temp))));
temp=an-bn;
experidis=sqrt(sum(abs((temp.*temp))));
set(1,i)=realdis;
set(2,i)=experidis;
end
subplot(233)
scatter(set(1,:),set(2,:))
subplot(236)
scatter(set(1,:),set(2,:)-set(1,:))
ylim([-120 120])
temp=set(2,:)-set(1,:)
%[mu,sigma,muci,sigmaci] =normfit(temp,0.05)
hold on
temp=sort(temp);
temp=temp([ceil(length(temp)*0.05),floor(length(temp)*0.95)]);
plot([0 2000],[temp(1),temp(1)],'r');plot([0 2000],[temp(2),temp(2)],'r')
%% concept picture
close all
subplot(131)
for eps=[0:0.05:15]

set=[0,0]
for i=1:1000
a=[rand(1)*1500,rand(1)*1500,rand(1)*750];
b=[rand(1)*1500,rand(1)*1500,rand(1)*750];
% an=a+[(rand(1)-0.5)/0.5,(rand(1)-0.5)/0.5,(rand(1)-0.5)/0.5]*eps;
% bn=b+[(rand(1)-0.5)/0.5,(rand(1)-0.5)/0.5,(rand(1)-0.5)/0.5]*eps;
an=a+[randn(),randn(),randn()]*eps;
bn=b+[randn(),randn(),randn()]*eps;
temp=a-b;
realdis=sqrt(sum(abs((temp.*temp))));
temp=an-bn;
experidis=sqrt(sum(abs((temp.*temp))));
set(1,i)=realdis;
set(2,i)=experidis;
end
temp=set(2,:)-set(1,:);
temp=sort(temp);
temp=temp([ceil(length(temp)*0.05),floor(length(temp)*0.95)]);
%[mu,sigma,muci,sigmaci] =normfit(temp);
%plot([eps,eps],muci,'r')
scatter(eps,temp(2)-temp(1),'r')
hold on

end
ylim([0 70])

%%   my result
subplot(132)
tempp=[];
load('V:\chuanyaoANDjiankang\3Dproject_DataFormXuGroupShare\230504CaliTest\2023_05_05_10_32_00_348618\DLCpredwcy2BY.mat')
temp=pred(:,:,1)-pred(:,:,2);
temp=sqrt(temp(:,1).^2+temp(:,2).^2+temp(:,3).^2);%plot(temp)
% k=[600:1000,1400:2000,2800:3300,3400:3600,3680:3880,4200:4300]
temp=temp(2500:3500); temp(isnan(temp))=[]; %temp=temp-mean(temp);
scatter(ones(1,length(temp)),temp);hold on
temp=sort(temp);
temp=temp([ceil(length(temp)*0.05),floor(length(temp)*0.95)]);
muci=temp;
plot([1-0.2,1+0.2],[muci(1),muci(1)],'r');hold on;plot([1-0.2,1+0.2],[muci(2),muci(2)],'r');hold on
%[mu,sigma,muci,sigmaci] =normfit(temp)
a=muci(2)-muci(1)
tempp=[tempp;temp];
%
load('V:\chuanyaoANDjiankang\3Dproject_DataFormXuGroupShare\230504CaliTest\2023_05_04_19_27_41_706046\DLCpredwcy2BY.mat')
temp=pred(:,:,1)-pred(:,:,2);
temp=sqrt(temp(:,1).^2+temp(:,2).^2+temp(:,3).^2);%plot(temp)
%k=[500:700,800:1200,1500:2100,2250:2350,2640:2740]
temp=temp(1500:2500); temp(isnan(temp))=[]; %temp=temp-mean(temp);              
scatter(ones(1,length(temp))*3,temp);hold on
temp=sort(temp);
temp=temp([ceil(length(temp)*0.05),floor(length(temp)*0.95)]);
muci=temp;
plot([3-0.2,3+0.2],[muci(1),muci(1)],'r');hold on;plot([3-0.2,3+0.2],[muci(2),muci(2)],'r');hold on
%[mu,sigma,muci,sigmaci] =normfit(temp)
b=muci(2)-muci(1)
tempp=[tempp;temp];
%
load('V:\chuanyaoANDjiankang\3Dproject_DataFormXuGroupShare\230504CaliTest\2023_05_04_19_27_41_706046\DLCpredwcy2BY.mat')
temp=pred(:,:,1)-pred(:,:,2);
temp=sqrt(temp(:,1).^2+temp(:,2).^2+temp(:,3).^2);%plot(temp)
temp=temp(4600:5600); temp(isnan(temp))=[];  %temp=temp-mean(temp);               
scatter(ones(1,length(temp))*2,temp);hold on
temp=sort(temp);
temp=temp([ceil(length(temp)*0.05),floor(length(temp)*0.95)]);
muci=temp;
plot([2-0.2,2+0.2],[muci(1),muci(1)],'r');hold on;plot([2-0.2,2+0.2],[muci(2),muci(2)],'r'); xlim([0.3 3.7]);ylim([200 900])
%[mu,sigma,muci,sigmaci] =normfit(temp)
c=muci(2)-muci(1)
tempp=[tempp;temp];

[a b c]
text(1,800,'31.90')
text(2,800,'33.85')
text(3,800,'31.79')
[mu,sigma,muci,sigmaci] =normfit(tempp)
d=muci(2)-muci(1)
%%
subplot(133)
for eps=[0:0.05:15]

set=[0,0]
for i=1:1000
a=[rand(1)*1500,rand(1)*1500,rand(1)*750];
b=[rand(1)*1500,rand(1)*1500,rand(1)*750];
% an=a+[(rand(1)-0.5)/0.5,(rand(1)-0.5)/0.5,(rand(1)-0.5)/0.5]*eps;
% bn=b+[(rand(1)-0.5)/0.5,(rand(1)-0.5)/0.5,(rand(1)-0.5)/0.5]*eps;
an=a+[randn(),randn(),randn()]*eps;
bn=b+[randn(),randn(),randn()]*eps;
temp=a-b;
realdis=sqrt(sum(abs((temp.*temp))));
temp=an-bn;
experidis=sqrt(sum(abs((temp.*temp))));
set(1,i)=realdis;
set(2,i)=experidis;
end
temp=set(2,:)-set(1,:);
temp=sort(temp);
temp=temp([ceil(length(temp)*0.05),floor(length(temp)*0.95)]);
%[mu,sigma,muci,sigmaci] =normfit(temp);
%plot([eps,eps],muci,'r')
scatter(eps,temp(2)-temp(1),'r')
hold on

end

%%

%%
hist(sqrt(3*3.6*(randn(1000,1).^2)))
aa=sort(sqrt(3*3.6*(randn(1000,1).^2)))







