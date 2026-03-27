

figure("Position",[300 300 300 200])

subplot(211)
[a,b,c]=textread('.\230715Start3Dversion\Experi230718_01\trainRecord01.txt','%s%s%s');
A=zeros(1,length(a));B=zeros(1,length(a));C=zeros(1,length(a));
for i=1:length(a)
    A(i)=str2num(a{i});
    B(i)=str2num(b{i});
    C(i)=str2num(c{i});
end
plot(A,C)
hold on

[a,b,c]=textread('.\230715Start3Dversion\Experi230718_02\trainRecord03.txt','%s%s%s');
A=zeros(1,length(a));B=zeros(1,length(a));C=zeros(1,length(a));
for i=1:length(a)
    A(i)=str2num(a{i});
    B(i)=str2num(b{i});
    C(i)=str2num(c{i});
end
plot(A,C)
hold on

[a,b,c]=textread('.\230715Start3Dversion\Experi230731_01\trainRecord01.txt','%s%s%s');
A=zeros(1,length(a));B=zeros(1,length(a));C=zeros(1,length(a));
for i=1:length(a)
    A(i)=str2num(a{i});
    B(i)=str2num(b{i});
    C(i)=str2num(c{i});
end
plot(A,C)

% plot(A,C)
subplot(212)
[a,b,c]=textread('.\230715Start3Dversion\Experi230718_01\trainRecord01.txt','%s%s%s');
A=zeros(1,length(a));B=zeros(1,length(a));C=zeros(1,length(a));
for i=1:length(a)
    A(i)=str2num(a{i});
    B(i)=str2num(b{i});
    C(i)=str2num(c{i});
end
plot(A,B)
hold on

[a,b,c]=textread('.\230715Start3Dversion\Experi230718_02\trainRecord03.txt','%s%s%s');
A=zeros(1,length(a));B=zeros(1,length(a));C=zeros(1,length(a));
for i=1:length(a)
    A(i)=str2num(a{i});
    B(i)=str2num(b{i});
    C(i)=str2num(c{i});
end
plot(A,B)
hold on

[a,b,c]=textread('.\230715Start3Dversion\Experi230731_01\trainRecord01.txt','%s%s%s');
A=zeros(1,length(a));B=zeros(1,length(a));C=zeros(1,length(a));
for i=1:length(a)
    A(i)=str2num(a{i});
    B(i)=str2num(b{i});
    C(i)=str2num(c{i});
end
plot(A,B)
yticks([0 400 800])
%set(gcf,'Color',[1 1 1])
%set(gca,'Color',[0.9 0.9 0.9])