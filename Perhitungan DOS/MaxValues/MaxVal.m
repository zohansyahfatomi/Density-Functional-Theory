close all, clear all
load DosPfc.txt
load DosVac.txt
%vibv=[50:4:550]';
Np=length(DosPfc)
for k=1:Np
    dataP=max(DosPfc(:,k));
    DosP(k,:)=[dataP];
end
dataDosP=[DosP];
save dataDosP.txt dataDosP -ascii  
%plot(vibv,dataDosP)