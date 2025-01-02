

load('3Dmaze230329NatureReserved.mat')

    speed=sqrt(sum(speed.*speed,2)); %(mm/s)
    speed=smoothdata(speed,'gaussian',5);
    temp=sqrt(sum(facedirection(:,1:2).*facedirection(:,1:2),2));
    pich=atan2(facedirection(:,3),temp)*180/3.1415926536; %degree
    facedirection=atan2(facedirection(:,2),facedirection(:,1))*180/3.1415926536; %degree

    isPFCcell=TPallVersion{1};
    PFC=[];
    for celli=isPFCcell

unitename=unites{celli,2};
temp=unites{celli,1};
spikeatframe=[];
for j=1:length(temp)
    [k,b]= min(abs(temp(j)-vediotime));
    if k<0.05
        spikeatframe=[spikeatframe,b];
    end
end
spiketrain=zeros(length(vediotime),1);
for i=1:length(spikeatframe)
    spiketrain(spikeatframe(i))=spiketrain(spikeatframe(i))+1;
end
spiketrain= floor(smoothdata((spiketrain*15),'gaussian',15));  %% here is very important, I mutiplied 15!!
PFC=[PFC,spiketrain];
    end

    isHPCcell=TPallVersion{3};
    HPC=[];
    for celli=isHPCcell
unitename=unites{celli,2};
temp=unites{celli,1};
spikeatframe=[];
for j=1:length(temp)
    [k,b]= min(abs(temp(j)-vediotime));
    if k<0.05
        spikeatframe=[spikeatframe,b];
    end
end
spiketrain=zeros(length(vediotime),1);
for i=1:length(spikeatframe)
    spiketrain(spikeatframe(i))=spiketrain(spikeatframe(i))+1;
end
spiketrain= floor(smoothdata((spiketrain*15),'gaussian',15));  %% here is very important, I mutiplied 15!!
HPC=[HPC,spiketrain];
    end

CurrentPSD=[pred,speed,facedirection,pich];
reservedCurrentPSD=CurrentPSD;

%% m230829MakeAnExample





k=[27181:27231];
%close all
figure('Position',[300,300,900,100])

subplot(141)
plot3(CurrentPSD(k,1),CurrentPSD(k,2),CurrentPSD(k,3))
xlim([0 1500]);ylim([0 1500]);zlim([0 750]);
xticks([]);yticks([]);zticks([]);
daspect([1 1 1]);

subplot(142)
plot(CurrentPSD(k,4))
ylim([0 1600])
yticks([0 800 1600])

subplot(143)
plot(CurrentPSD(k,5))
ylim([-180 180])
yticks([-180 0 180])

subplot(144)
plot(CurrentPSD(k,6))
ylim([-90 90])
yticks([-90 0 90])

