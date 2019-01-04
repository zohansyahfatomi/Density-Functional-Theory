close all, clear all

load ModeFreqP.txt
Np=length(ModeFreqP);
vibp=[0:0.1:600]';
nup=ModeFreqP(:,1); 
s2= 470.96400900619; %alpha = 200 s2 = 470.96400900619

for k=1:length(vibp)
    sump=0;
    for l=1:Np
        fp=1/sqrt(2*pi)/s2.^(1/2).*exp(-(vibp(k)-nup(l)).^2/(2*s2));
        sump=sump+fp;
    end
    DosP(k,:)=[sump/Np];
end
plot(vibp,DosP)

ylabel('Density of States')
xlabel('Phonon Frequency (cm^-^1)')
saveas(gcf,'DosPfc.png')
%---------------
DosPfc=[vibp DosP];
save DosPfc.txt DosPfc -ascii
load DosPfc.txt
size(DosPfc)
figure(2)
xx=vibp;
yy=DosP;
plot(xx,yy)