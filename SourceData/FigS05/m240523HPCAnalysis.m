 % PS C:\Users\qiushou> ipython
% Python 3.7.3 (default, Apr 24 2019, 15:29:51) [MSC v.1915 64 bit (AMD64)]
% Type 'copyright', 'credits' or 'license' for more information
% IPython 7.6.1 -- An enhanced Interactive Python. Type '?' for help.
% 
% In [1]: import os, sys, glob, re
% 
% In [2]: a=glob.glob(r"V:\chuanyaoANDjiankang\3Dproject_DataFormXuGroupShare\23*\*.nex")


%% cite Y:\weichuanyao\Analyse\3Dmaze230529\M3DPfelctrophysiology m230625Analysis



%% files



files={

 %'V:\\chuanyaoANDjiankang\\3Dproject_DataFormXuGroupShare\\230329Science\\group0\\230329ScienceGroup0.nex',
 %'V:\\chuanyaoANDjiankang\\3Dproject_DataFormXuGroupShare\\230329Science\\group1\\230329ScienceGroup1.nex',
 'V:\\chuanyaoANDjiankang\\3Dproject_DataFormXuGroupShare\\230329Science\\group2\\230329ScienceGroup2.nex',
 'V:\\chuanyaoANDjiankang\\3Dproject_DataFormXuGroupShare\\230329Science\\group3\\230329ScienceGroup3.nex',
%glob.glob(r"X:\230412to230427TreeD/23*/*.nex")
 'X:\\230412to230427TreeD\\230412Xiaoquan\\230412Xiaoquan.nex',
 'X:\\230412to230427TreeD\\230413Nature\\230413Nature.nex',
 'X:\\230412to230427TreeD\\230413Science\\230413Science.nex',
 'X:\\230412to230427TreeD\\230418Science\\230418Science.nex',
 'X:\\230412to230427TreeD\\230418Xiaoquan\\230418Xiaoquan.nex',
 'X:\\230412to230427TreeD\\230419Nature\\230419Nature.nex',
 'X:\\230412to230427TreeD\\230424Xiaoquan\\230424Xiaoquan.nex',
 'X:\\230412to230427TreeD\\230425Nature\\230425Nature.nex',
 'X:\\230412to230427TreeD\\230425Science\\230425Science.nex',
 'X:\\230412to230427TreeD\\230427Nature\\230427Nature.nex',
 'X:\\230412to230427TreeD\\230427Science\\230427Science.nex',
%glob.glob(r"V:\chuanyaoANDjiankang\3Dproject_DataFormXuGroupShare/23*/*.nex")
 'V:\\chuanyaoANDjiankang\\3Dproject_DataFormXuGroupShare\\230314Nature\\230314Nature.nex',
 'V:\\chuanyaoANDjiankang\\3Dproject_DataFormXuGroupShare\\230314Science\\230314Science.nex',
 'V:\\chuanyaoANDjiankang\\3Dproject_DataFormXuGroupShare\\230315Nature\\230315Nature.nex',
 'V:\\chuanyaoANDjiankang\\3Dproject_DataFormXuGroupShare\\230315Science\\230315Science.nex',
 'V:\\chuanyaoANDjiankang\\3Dproject_DataFormXuGroupShare\\230317Nature\\230317Nature.nex',
 'V:\\chuanyaoANDjiankang\\3Dproject_DataFormXuGroupShare\\230320Nature\\230320Nature.nex',
 'V:\\chuanyaoANDjiankang\\3Dproject_DataFormXuGroupShare\\230321Nature\\230321Nature.nex',
 'V:\\chuanyaoANDjiankang\\3Dproject_DataFormXuGroupShare\\230321Science\\230321Science.nex',
 'V:\\chuanyaoANDjiankang\\3Dproject_DataFormXuGroupShare\\230322Nature\\230322Nature.nex',
 'V:\\chuanyaoANDjiankang\\3Dproject_DataFormXuGroupShare\\230323Nature\\230323Nature.nex',
 'V:\\chuanyaoANDjiankang\\3Dproject_DataFormXuGroupShare\\230323Science\\230323Science.nex',
 'V:\\chuanyaoANDjiankang\\3Dproject_DataFormXuGroupShare\\230323Xiaoquan\\230323Xiaoquan.nex',
 'V:\\chuanyaoANDjiankang\\3Dproject_DataFormXuGroupShare\\230327Nature\\230327Nature.nex',
 'V:\\chuanyaoANDjiankang\\3Dproject_DataFormXuGroupShare\\230327Science\\230327Science.nex',
 'V:\\chuanyaoANDjiankang\\3Dproject_DataFormXuGroupShare\\230327Xiaoquan\\230327Xiaoquan.nex',
 'V:\\chuanyaoANDjiankang\\3Dproject_DataFormXuGroupShare\\230328Nature\\230328Nature.nex',
 'V:\\chuanyaoANDjiankang\\3Dproject_DataFormXuGroupShare\\230328Xiaoquan\\230328Xiaoquan.nex',
 'V:\\chuanyaoANDjiankang\\3Dproject_DataFormXuGroupShare\\230329Nature\\Sorted230329Nature.nex',
 'V:\\chuanyaoANDjiankang\\3Dproject_DataFormXuGroupShare\\230329Xiaoquan\\Sorted230329Xiaoquan.nex',
 'V:\\chuanyaoANDjiankang\\3Dproject_DataFormXuGroupShare\\230330Nature\\Sorted230330Nature.nex',
 'V:\\chuanyaoANDjiankang\\3Dproject_DataFormXuGroupShare\\230330Science\\Sorted230330Science.nex',
 'V:\\chuanyaoANDjiankang\\3Dproject_DataFormXuGroupShare\\230330Xiaoquan\\Sorted230330Xiaoquan.nex',
 'V:\\chuanyaoANDjiankang\\3Dproject_DataFormXuGroupShare\\230403Nature\\Sorted230403Nature.nex',
 'V:\\chuanyaoANDjiankang\\3Dproject_DataFormXuGroupShare\\230403Xiaoquan\\Sorted230403Xiaoquan.nex',
 'V:\\chuanyaoANDjiankang\\3Dproject_DataFormXuGroupShare\\230404Nature\\230404Nature.nex',
 'V:\\chuanyaoANDjiankang\\3Dproject_DataFormXuGroupShare\\230404Xiaoquan\\230404Xiaoquan.nex',
 'V:\\chuanyaoANDjiankang\\3Dproject_DataFormXuGroupShare\\230406Nature\\230406Nature.nex',
 'V:\\chuanyaoANDjiankang\\3Dproject_DataFormXuGroupShare\\230406Science\\230406Science.nex',
 'V:\\chuanyaoANDjiankang\\3Dproject_DataFormXuGroupShare\\230406Xiaoquan\\230406Xiaoquan.nex',
 'V:\\chuanyaoANDjiankang\\3Dproject_DataFormXuGroupShare\\230411Nature\\230411Nature.nex',
 'V:\\chuanyaoANDjiankang\\3Dproject_DataFormXuGroupShare\\230411Science\\230411Science.nex',
% a=glob.glob(r"X:\230408twoDProceAndAnaly\22*\*.nex") % 240523
 'X:\\230408twoDProceAndAnaly\\221205April\\221205April.nex',
 'X:\\230408twoDProceAndAnaly\\221205nature\\221205Nature.nex',
 'X:\\230408twoDProceAndAnaly\\221206april\\221206April.nex',
 'X:\\230408twoDProceAndAnaly\\221206nature\\221206Nature.nex',
 'X:\\230408twoDProceAndAnaly\\221207april\\221207April.nex',
 'X:\\230408twoDProceAndAnaly\\221207nature\\221207Nature.nex',
 'X:\\230408twoDProceAndAnaly\\221208april\\221208April.nex',
 'X:\\230408twoDProceAndAnaly\\221208nature\\221208Nature.nex',
 'X:\\230408twoDProceAndAnaly\\221209april\\221209April.nex',
 'X:\\230408twoDProceAndAnaly\\221209nature\\221209Nature.nex' ,
}

addpath(genpath('Y:\weichuanyao\Experiment\PreprocessCodeAndNote\Nex'))
Records=[];


% PFC  part
files={
% 1~11
 'X:\\230412to230427TreeD\\230412Xiaoquan\\230412Xiaoquan.nex',
 'X:\\230412to230427TreeD\\230418Xiaoquan\\230418Xiaoquan.nex',
 'X:\\230412to230427TreeD\\230424Xiaoquan\\230424Xiaoquan.nex',
 'V:\\chuanyaoANDjiankang\\3Dproject_DataFormXuGroupShare\\230323Xiaoquan\\230323Xiaoquan.nex',
 'V:\\chuanyaoANDjiankang\\3Dproject_DataFormXuGroupShare\\230327Xiaoquan\\230327Xiaoquan.nex',
 'V:\\chuanyaoANDjiankang\\3Dproject_DataFormXuGroupShare\\230328Xiaoquan\\230328Xiaoquan.nex',
 'V:\\chuanyaoANDjiankang\\3Dproject_DataFormXuGroupShare\\230329Xiaoquan\\Sorted230329Xiaoquan.nex',
 'V:\\chuanyaoANDjiankang\\3Dproject_DataFormXuGroupShare\\230330Xiaoquan\\Sorted230330Xiaoquan.nex',
 'V:\\chuanyaoANDjiankang\\3Dproject_DataFormXuGroupShare\\230403Xiaoquan\\Sorted230403Xiaoquan.nex',
 'V:\\chuanyaoANDjiankang\\3Dproject_DataFormXuGroupShare\\230404Xiaoquan\\230404Xiaoquan.nex',
 'V:\\chuanyaoANDjiankang\\3Dproject_DataFormXuGroupShare\\230406Xiaoquan\\230406Xiaoquan.nex',

 % 12~15 (14 15 is PFC)
 'V:\\chuanyaoANDjiankang\\3Dproject_DataFormXuGroupShare\\230329Science\\group0\\230329ScienceGroup0.nex',
 'V:\\chuanyaoANDjiankang\\3Dproject_DataFormXuGroupShare\\230329Science\\group1\\230329ScienceGroup1.nex',
 'V:\\chuanyaoANDjiankang\\3Dproject_DataFormXuGroupShare\\230329Science\\group2\\230329ScienceGroup2.nex',
 'V:\\chuanyaoANDjiankang\\3Dproject_DataFormXuGroupShare\\230329Science\\group3\\230329ScienceGroup3.nex',

%glob.glob(r"X:\230412to230427TreeD/23*/*.nex")
 'X:\\230412to230427TreeD\\230413Nature\\230413Nature.nex',
 'X:\\230412to230427TreeD\\230413Science\\230413Science.nex',
 'X:\\230412to230427TreeD\\230418Science\\230418Science.nex',
 'X:\\230412to230427TreeD\\230419Nature\\230419Nature.nex',
 'X:\\230412to230427TreeD\\230425Nature\\230425Nature.nex',
 'X:\\230412to230427TreeD\\230425Science\\230425Science.nex',
 'X:\\230412to230427TreeD\\230427Nature\\230427Nature.nex',
 'X:\\230412to230427TreeD\\230427Science\\230427Science.nex',
%glob.glob(r"V:\chuanyaoANDjiankang\3Dproject_DataFormXuGroupShare/23*/*.nex")
 'V:\\chuanyaoANDjiankang\\3Dproject_DataFormXuGroupShare\\230314Nature\\230314Nature.nex',
 'V:\\chuanyaoANDjiankang\\3Dproject_DataFormXuGroupShare\\230314Science\\230314Science.nex',
 'V:\\chuanyaoANDjiankang\\3Dproject_DataFormXuGroupShare\\230315Nature\\230315Nature.nex',
 'V:\\chuanyaoANDjiankang\\3Dproject_DataFormXuGroupShare\\230315Science\\230315Science.nex',
 'V:\\chuanyaoANDjiankang\\3Dproject_DataFormXuGroupShare\\230317Nature\\230317Nature.nex',
 'V:\\chuanyaoANDjiankang\\3Dproject_DataFormXuGroupShare\\230320Nature\\230320Nature.nex',
 'V:\\chuanyaoANDjiankang\\3Dproject_DataFormXuGroupShare\\230321Nature\\230321Nature.nex',
 'V:\\chuanyaoANDjiankang\\3Dproject_DataFormXuGroupShare\\230321Science\\230321Science.nex',
 'V:\\chuanyaoANDjiankang\\3Dproject_DataFormXuGroupShare\\230322Nature\\230322Nature.nex',
 'V:\\chuanyaoANDjiankang\\3Dproject_DataFormXuGroupShare\\230323Nature\\230323Nature.nex',
 'V:\\chuanyaoANDjiankang\\3Dproject_DataFormXuGroupShare\\230323Science\\230323Science.nex',
 'V:\\chuanyaoANDjiankang\\3Dproject_DataFormXuGroupShare\\230327Nature\\230327Nature.nex',
 'V:\\chuanyaoANDjiankang\\3Dproject_DataFormXuGroupShare\\230327Science\\230327Science.nex',
 'V:\\chuanyaoANDjiankang\\3Dproject_DataFormXuGroupShare\\230328Nature\\230328Nature.nex',
 'V:\\chuanyaoANDjiankang\\3Dproject_DataFormXuGroupShare\\230329Nature\\Sorted230329Nature.nex',
 'V:\\chuanyaoANDjiankang\\3Dproject_DataFormXuGroupShare\\230330Nature\\Sorted230330Nature.nex',
 'V:\\chuanyaoANDjiankang\\3Dproject_DataFormXuGroupShare\\230330Science\\Sorted230330Science.nex',
 'V:\\chuanyaoANDjiankang\\3Dproject_DataFormXuGroupShare\\230403Nature\\Sorted230403Nature.nex',
 'V:\\chuanyaoANDjiankang\\3Dproject_DataFormXuGroupShare\\230404Nature\\230404Nature.nex',
 'V:\\chuanyaoANDjiankang\\3Dproject_DataFormXuGroupShare\\230406Nature\\230406Nature.nex',
 'V:\\chuanyaoANDjiankang\\3Dproject_DataFormXuGroupShare\\230406Science\\230406Science.nex',
 'V:\\chuanyaoANDjiankang\\3Dproject_DataFormXuGroupShare\\230411Nature\\230411Nature.nex',
 'V:\\chuanyaoANDjiankang\\3Dproject_DataFormXuGroupShare\\230411Science\\230411Science.nex',
% a=glob.glob(r"X:\230408twoDProceAndAnaly\22*\*.nex") % 240523


 'X:\\230408twoDProceAndAnaly\\221205April\\221205April.nex',
 'X:\\230408twoDProceAndAnaly\\221205nature\\221205Nature.nex',
 'X:\\230408twoDProceAndAnaly\\221206april\\221206April.nex',
 'X:\\230408twoDProceAndAnaly\\221206nature\\221206Nature.nex',
 'X:\\230408twoDProceAndAnaly\\221207april\\221207April.nex',
 'X:\\230408twoDProceAndAnaly\\221207nature\\221207Nature.nex',
 'X:\\230408twoDProceAndAnaly\\221208april\\221208April.nex',
 'X:\\230408twoDProceAndAnaly\\221208nature\\221208Nature.nex',
 'X:\\230408twoDProceAndAnaly\\221209april\\221209April.nex',
 'X:\\230408twoDProceAndAnaly\\221209nature\\221209Nature.nex',
}
%%
for filei= [            17    18              21         23    24    25    26    27    28    29    30    31    32    33    34    35    36    37    38    39    40    41    42    43    44    45    46    47    48    49    50    51    52    53    54] % 240523
files{filei}
data=readNexFile(files{filei})
flag=0;
if length(data.waves)>length(data.neurons)
    flag=length(data.neurons);
end

Records_file=[];
for i=1:length(data.neurons)
    name=data.neurons{i, 1}.name;
    name(1:4)=[];
    name(end)=[];
    if ((filei<=11)&(str2num(name)>32)) || ((filei>=16)&(str2num(name)<=32))

    
    temp=data.waves{i+flag,1}.waveforms;
    %plot(temp)
    a=temp(1:48);aa=max(a)-min(a);
    b=temp(49:96);ab=max(b)-min(b);
    c=temp(97:144);ac=max(c)-min(c);
    d=temp(145:192);ad=max(d)-min(d);
    [a,b]=max([aa,ab,ac,ad]);
    Ampli=a*1000;
    Template=temp((b-1)*48+[1:48]);
    plot(Template)
    [~,a]=min(Template);
    [~,b]=max(Template(a:end));
    TP=b*(1/30000)*1000;
    temp=abs(abs(min(Template))/2+Template);
    [~,c]=min(temp(1:a));
    [~,d]=min(temp(a:end));
    HalfHW=(a-c+d)*(1/30000)*1000;
    Meanfr=length(data.neurons{i, 1}.timestamps)/data.tend;
    a=length(find(data.neurons{i, 1}.timestamps>data.tend/2));
    b=length(find(data.neurons{i, 1}.timestamps<data.tend/2));
    Stability=abs((a-b)/(a+b));
Records_file=[Records_file;[Ampli,TP,HalfHW,Meanfr,Stability]];
        if  length(intersect(filei,[16 19 20 22 24 26 28 29 30 32 33 35 37 38 39 41 42 43 45 56 54 52 50 48])) & length(intersect(str2num(name),[9 11 13 15])) 
            Records_file(end,:)=[];
        end
    end
end
Head='Ampli,TP,HalfHW,Meanfr,Stability';
%save([files{filei},'UniteRecord.mat'],'Records_file','Head')
Records=[Records;Records_file];
end


for filei= [12 13] % 240523
files{filei}
data=readNexFile(files{filei})
flag=0;
if length(data.waves)>length(data.neurons)
    flag=length(data.neurons);
end

Records_file=[];
for i=1:length(data.neurons)
  
    
    temp=data.waves{i+flag,1}.waveforms;
    %plot(temp)
    a=temp(1:48);aa=max(a)-min(a);
    b=temp(49:96);ab=max(b)-min(b);
    c=temp(97:144);ac=max(c)-min(c);
    d=temp(145:192);ad=max(d)-min(d);
    [a,b]=max([aa,ab,ac,ad]);
    Ampli=a*1000;
    Template=temp((b-1)*48+[1:48]);
    plot(Template)
    [~,a]=min(Template);
    [~,b]=max(Template(a:end));
    TP=b*(1/30000)*1000;
    temp=abs(abs(min(Template))/2+Template);
    [~,c]=min(temp(1:a));
    [~,d]=min(temp(a:end));
    HalfHW=(a-c+d)*(1/30000)*1000;
    Meanfr=length(data.neurons{i, 1}.timestamps)/data.tend;
    a=length(find(data.neurons{i, 1}.timestamps>data.tend/2));
    b=length(find(data.neurons{i, 1}.timestamps<data.tend/2));
    Stability=abs((a-b)/(a+b));
Records_file=[Records_file;[Ampli,TP,HalfHW,Meanfr,Stability]];

   
end
Head='Ampli,TP,HalfHW,Meanfr,Stability';
%save([files{filei},'UniteRecord.mat'],'Records_file','Head')
Records=[Records;Records_file];
end

Records(find(Records(:,1)<36),:)=[] %%%%230517version 36miuV
Records(find(Records(:,4)<0.05),:)=[] %%%%231001
Records(find(Records(:,5)>0.35),:)=[] %%%%231001

save('HPCunites240523',"Records",'Head')
