
%% speed hist
figure('Position',[100 100 100 200])

visit=[Batch2Behavior230717Vsitingetc_Science,Batch2Behavior230717Vsitingetc_Xiaoquan,Batch2Behavior230717Vsitingetc_Nature]
%visit=Batch2Behavior230717Vsitingetc_Science
a=[]
for i=1:size(visit,2)
    a=[a;visit{3,i}];
end
a(a<=0)=[];a(a>=2000)=[];

temp=hist(a,200)
hist(a,200)
h = findobj(gca,'Type','patch');
h.FaceColor = [0.93 0.69 0.13];
h.EdgeColor = [0.93 0.69 0.13];
box off
xlim([0 2000])
ylim([0 max(temp)])
xticks([]);yticks([]);

