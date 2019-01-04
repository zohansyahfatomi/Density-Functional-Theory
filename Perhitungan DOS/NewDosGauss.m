close all, clear all
%load ModeFreqP.txt
load ModeFreqV.txt
Nv=length(ModeFreqV);
%vibv=ModeFreqV(:,1);
vibv=[0:0.1:600]';%ModeFreqV(:,1);
%vibv=[-0.01:0.0005:0.07]; % for DosE
%hnuv=ModeFreqV(:,2); % eV
nuv=ModeFreqV(:,1); % cm^-1
%s2=18.0337;%10
%s2=72.1348;%20
%s2=162.3032;%30

%s2= 94.192801801238; %alpha = 40 s2 = 94.192801801238
%s2= 117.741002251547; %alpha = 50 s2 = 117.741002251547
%s2= 141.289202701857; %alpha = 60 s2 = 141.289202701857

%s2= 353.223006754642; %alpha = 150 s2 = 353.223006754642
%s2= 447.41580855588; %alpha = 190 s2 = 447.41580855588
s2= 470.96400900619; %alpha = 200 s2 = 470.96400900619

%9o9s2=40.5758; %15
%s2=8.8365; %width=7 cm^-1
%s2=1e-9; % for DosE
for k=1:length(vibv)
    sumv=0;
    for l=1:Nv
  %%      sumv=0;
        fv=1/sqrt(2*pi)/s2.^(1/2).*exp(-(vibv(k)-nuv(l)).^2/(2*s2));
        sumv=sumv+fv;
    end
    DosV(k,:)=[sumv/Nv];
% DosVibV(l,:)=[vibv];
end
plot(vibv,DosV)
%ylim([0 1])
ylabel('Density of States')
xlabel('Phonon Frequency (cm^-^1)')
saveas(gcf,'DosVac.png')
%---------------
%DosV(l,:)=[fv];
DosVac=[vibv DosV];
%xDos=[vibv];
save DosVac.txt DosVac -ascii
%save xDos.txt xDos -ascii
% Cek saved data
load DosVac.txt
size(DosVac)
figure(2)
xx=vibv;
yy=DosV;
plot(xx,yy)
%ylim([0 1])
