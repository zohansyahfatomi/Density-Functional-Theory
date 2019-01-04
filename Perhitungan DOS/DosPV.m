close all, clear all
load DosVac.txt
load DosPfc.txt
xxV=DosVac(:,1);
yyV=DosVac(:,2);
xxP=DosPfc(:,1);
yyP=DosPfc(:,2);
plot(xxP,yyP,'k--','LineWidth',1.5)
hold on
plot(xxV,yyV,'k','LineWidth',1.5)
ylabel('Density of States')
xlabel('Phonon Frequency (cm^-^1)')
%leg0=legend('Perfect','Vacancy');
%set(leg0,'Location','NorthWest')
saveas(gcf,'DosPV_w50.png')
saveas(gcf,'DosPV_w50.eps')