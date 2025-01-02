

%% m240816venn
load('allsessionfram_OtherFunctionCell240721.mat')
%%  184 PFC pry
Pc=intersect(find(allsessionfram_OtherFunctionCell(:,4)==11),find(allsessionfram_OtherFunctionCell(:,11)>=95));
Sc=intersect(find(allsessionfram_OtherFunctionCell(:,4)==11),find(allsessionfram_OtherFunctionCell(:,16)>=95));
Ac=intersect(find(allsessionfram_OtherFunctionCell(:,4)==11),find(allsessionfram_OtherFunctionCell(:,18)>=95));
Pc=intersect(find(allsessionfram_OtherFunctionCell(:,4)==11),find(allsessionfram_OtherFunctionCell(:,20)>=95));
Vc=intersect(find(allsessionfram_OtherFunctionCell(:,4)==11),find(allsessionfram_OtherFunctionCell(:,22)>=95));
VN=venn(Pc, Sc, Ac, Pc, Vc);
VN=VN.labels('Position','Speed','Azimuth','Pitch','View');
VN=VN.draw();
%%  146 HPC pry
Pc=intersect(find(allsessionfram_OtherFunctionCell(:,4)==21),find(allsessionfram_OtherFunctionCell(:,11)>=95));
Sc=intersect(find(allsessionfram_OtherFunctionCell(:,4)==21),find(allsessionfram_OtherFunctionCell(:,16)>=95));
Ac=intersect(find(allsessionfram_OtherFunctionCell(:,4)==21),find(allsessionfram_OtherFunctionCell(:,18)>=95));
Pc=intersect(find(allsessionfram_OtherFunctionCell(:,4)==21),find(allsessionfram_OtherFunctionCell(:,20)>=95));
Vc=intersect(find(allsessionfram_OtherFunctionCell(:,4)==21),find(allsessionfram_OtherFunctionCell(:,22)>=95));
VN=venn(Pc, Sc, Ac, Pc, Vc);
VN=VN.labels('Position','Speed','Azimuth','Pitch','View');
VN=VN.draw();
