close all, clear all
%load ModeFreqP.txt
load ModeFreqP.txt
Np=length(ModeFreqP);
%vibp=ModeFreqP(:,1);
vibp=[0:0.1:600]';%ModeFreqP(:,1);
%vibv=[-0.01:0.0005:0.07]; % for DosE
%hnuv=ModeFreqV(:,2); % eV
nup=ModeFreqP(:,1); % cm^-1
%s2=18.0337;%10
%s2=72.1348;%20
%s2=162.3032;%30

%s2= 94.192801801238; %alpha = 40 s2 = 94.192801801238
%s2= 117.741002251547; %alpha = 50 s2 = 117.741002251547
%s2= 141.289202701857; %alpha = 60 s2 = 141.289202701857

%s2= 353.223006754642; %alpha = 150 s2 = 353.223006754642
%s2= 447.41580855588; %alpha = 190 s2 = 447.41580855588
s2= 470.96400900619; %alpha = 200 s2 = 470.96400900619


%s2= 450.8422;%50;
%9o9s2=40.5758; %15
%s2=8.8365; %width=7 cm^-1
%s2=1e-9; % for DosE
for k=1:length(vibp)
    sump=0;
    for l=1:Np
    % %   sump=0;
        fp=1/sqrt(2*pi)/s2.^(1/2).*exp(-(vibp(k)-nup(l)).^2/(2*s2));
        sump=sump+fp;
    end
    DosP(k,:)=[sump/Np];
%     DosVibV(l,:)=[vibv];
end
plot(vibp,DosP)
%ylim([0 1])
ylabel('Density of States')
xlabel('Phonon Frequency (cm^-^1)')
saveas(gcf,'DosPfc.png')
%---------------
%DosV(l,:)=[fv];
DosPfc=[vibp DosP];
%xDos=[vibv];
save DosPfc.txt DosPfc -ascii
%save xDos.txt xDos -ascii
% Cek saved data
load DosPfc.txt
size(DosPfc)
figure(2)
xx=vibp;
yy=DosP;
plot(xx,yy)
%ylim([0 1])