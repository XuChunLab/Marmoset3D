

%% 241010ElongatedFliedsDirectionDistribution

% 这个代码需要从m240704那边进入进来
temp1
temp2
FirstPrincPEV=allsessionfram_filed(temp1,[22:24]);
Yaw=atan2(FirstPrincPEV(:,2),FirstPrincPEV(:,1))*180/3.1415926536;
temp=sqrt(sum(FirstPrincPEV(:,1:2).*FirstPrincPEV(:,1:2),2));
Pitch=atan2(FirstPrincPEV(:,3),temp)*180/3.1415926536;
figure
subplot(221)
temp=Yaw;
temp(find(temp<0))=180+temp(find(temp<0));
a=[0:18:180];b=[0:18:180]
count=2;
for i=[18    36    54    72    90   108   126   144   162]
    a(count)=length(intersect(find(temp>=(i-18/2)),find(temp<(i+18/2))));
    count=count+1;
end
a(1)=length(union(find(temp<(18-18/2)),find(temp>=(162+18/2))));
a(11)=a(1);
[a,b]=hist(temp,[0:9:180])
test_cdf=makedist('uniform','lower',0,'upper',180);[h,p]=kstest(temp,'CDF',test_cdf)
plot(b,a/sum(a),'k')
xlim([0 180])
ylim([0 1])
xticks([0 90 180])
set(gcf,'Color',[1 1 1])
set(gca,'Color',[0.9 0.9 0.9]) 

subplot(222)
temp=Pitch;
[a,b]=hist(abs(temp),[0:9:90])
test_cdf=makedist('uniform','lower',0,'upper',90);[h,p]=kstest(temp,'CDF',test_cdf)
plot(b,a/sum(a),'r')
xlim([0 90])
ylim([0 1])
xticks([0 90])
set(gcf,'Color',[1 1 1])
set(gca,'Color',[0.9 0.9 0.9]) 

FirstPrincPEV=allsessionfram_filed(temp2,[22:24]);
Yaw=atan2(FirstPrincPEV(:,2),FirstPrincPEV(:,1))*180/3.1415926536;
temp=sqrt(sum(FirstPrincPEV(:,1:2).*FirstPrincPEV(:,1:2),2));
Pitch=atan2(FirstPrincPEV(:,3),temp)*180/3.1415926536;

subplot(223)
temp=Yaw;
temp(find(temp<0))=180+temp(find(temp<0));
a=[0:18:180];b=[0:18:180]
count=2;
for i=[18    36    54    72    90   108   126   144   162]
    a(count)=length(intersect(find(temp>=(i-18/2)),find(temp<(i+18/2))));
    count=count+1;
end
a(1)=length(union(find(temp<(18-18/2)),find(temp>=(162+18/2))));
a(11)=a(1);
[a,b]=hist(temp,[0:9:180])
test_cdf=makedist('uniform','lower',0,'upper',180);[h,p]=kstest(temp,'CDF',test_cdf)
plot(b,a/sum(a),'k')
xlim([0 180])
ylim([0 1])
xticks([0 90 180])
set(gcf,'Color',[1 1 1])
set(gca,'Color',[0.9 0.9 0.9]) 

subplot(224)
temp=Pitch;
[a,b]=hist(abs(temp),[0:9:90])
test_cdf=makedist('uniform','lower',0,'upper',90);[h,p]=kstest(temp,'CDF',test_cdf)
plot(b,a/sum(a),'r')
xlim([0 90])
ylim([0 1])
xticks([0 90])
set(gcf,'Color',[1 1 1])
set(gca,'Color',[0.9 0.9 0.9]) 