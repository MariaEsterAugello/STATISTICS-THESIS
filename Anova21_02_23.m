%% ANOVA SULLE MEAN NORM DI CIASCUN GRUPPO 
%array delle meanNorm (volendo poi aggiungi dist Roll e dist Pitch, ciclo for al variare di fn)
%build meanNorm struct for anova analysis
j= 0;
for i = 1 : length(participantsDirect)
    pilot = participantsDirect{i}; 
    meanNorm.directTraining(j+1) = pilotperf.(pilot).meanNorm(1);
    meanNorm.directAlto(j+1) = pilotperf.(pilot).meanNorm(2);
    meanNorm.directBasso(j+1) = pilotperf.(pilot).meanNorm(3);
    meanNorm.directNoAid(j+1) = pilotperf.(pilot).meanNorm(4);
    j = j + 1;
end  
j = 0;
for i = 1 : length(participantsIndirect)
    pilot = participantsIndirect{i};
    meanNorm.indirectTraining(j+1) = pilotperf.(pilot).meanNorm(1);
    meanNorm.indirectAlto(j+1) = pilotperf.(pilot).meanNorm(2);
    meanNorm.indirectBasso(j+1) = pilotperf.(pilot).meanNorm(3);
    meanNorm.indirectNoAid(j+1) = pilotperf.(pilot).meanNorm(4);
    j = j + 1;
end 

%array del test TRAINING
%direct
firstColumn = meanNorm.directTraining';
%indirect
secondColumn = meanNorm.indirectTraining';

tbl = [firstColumn secondColumn];
aovMeanNormTraining = anova1(tbl, aids);
%ylim = [0 100];
ylabel = ('mean norm error');
grid on 
hold on
plot(1:length(tbl(1,:)),mean(tbl), 'dg')  % % Overlay the mean as green diamonds x-axis is the intergers of position
legend({'mean'})
hold off
saveas(gcf,'aovMeanNormTraining','jpg')
if aovMeanNormTraining < 0.05
    fprintf('mean norm comparison for training test is valid\n')
end
[hMeanNormTraining,pMeanNormTraining] = ttest2(firstColumn,secondColumn); 


%array del test ALTO
%direct
firstColumn = meanNorm.directAlto';
%indirect
secondColumn = meanNorm.indirectAlto';

tbl = [firstColumn secondColumn];
aovMeanNormStrongAid = anova1(tbl, aids);
%ylim = [0 100];
ylabel = ('mean norm error');
grid on 
hold on
plot(1:length(tbl(1,:)),mean(tbl), 'dg')  % % Overlay the mean as green diamonds x-axis is the intergers of position
legend({'mean'})
hold off
saveas(gcf,'aovMeanNormStrongAid','jpg')
if aovMeanNormStrongAid < 0.05
    fprintf('mean norm comparison for strong aid test is valid\n')
end
[hMeanNormStrong,pMeanNormStrong] = ttest2(firstColumn,secondColumn); 


%array del test BASSO
%direct
firstColumn = meanNorm.directBasso';
%indirect
secondColumn = meanNorm.indirectBasso';

tbl = [firstColumn secondColumn];
aovMeanNormLightAid = anova1(tbl, aids);
%ylim = [0 100];
ylabel = ('mean norm error');
grid on 
hold on
plot(1:length(tbl(1,:)),mean(tbl), 'dg')  % % Overlay the mean as green diamonds x-axis is the intergers of position
legend({'mean'})
hold off
saveas(gcf,'aovMeanNormLightAid','jpg')
if aovMeanNormLightAid < 0.05
    fprintf('mean norm comparison for light aid test is valid\n')
end
[hMeanNormLight,pMeanNormLight] = ttest2(firstColumn,secondColumn); 


%% ANOVA SULLE DIST ROLL DI CIASCUN GRUPPO 

%array delle distRoll (ciclo for al variare di fn)

%build distRoll struct for anova analysis
j= 0;
for i = 1 : length(participantsDirect)
    pilot = participantsDirect{i}; 
    distRollmean.directTraining(j+1) = pilotperf.(pilot).distRollFiltered_mean(1);
    distRollmean.directAlto(j+1) = pilotperf.(pilot).distRollFiltered_mean(2);
    distRollmean.directBasso(j+1) = pilotperf.(pilot).distRollFiltered_mean(3);
    distRollmean.directNoAid(j+1) = pilotperf.(pilot).distRollFiltered_mean(4);
    j = j + 1;
end  
j = 0;
for i = 1 : length(participantsIndirect)
    pilot = participantsIndirect{i};
    distRollmean.indirectTraining(j+1) = pilotperf.(pilot).distRollFiltered_mean(1);
    distRollmean.indirectAlto(j+1) = pilotperf.(pilot).distRollFiltered_mean(2);
    distRollmean.indirectBasso(j+1) = pilotperf.(pilot).distRollFiltered_mean(3);
    distRollmean.indirectNoAid(j+1) = pilotperf.(pilot).distRollFiltered_mean(4);
    j = j + 1;
end 

%array del test TRAINING
%direct
firstColumn = distRollmean.directTraining';
%indirect
secondColumn = distRollmean.indirectTraining';

tbl = [firstColumn secondColumn];
aovdistRollTraining = anova1(tbl, aids);
%ylim = [0 100];
ylabel = ('mean norm error');
grid on 
hold on
plot(1:length(tbl(1,:)),mean(tbl), 'dg')  % % Overlay the mean as green diamonds x-axis is the intergers of position
legend({'mean'})
hold off
saveas(gcf,'aovdistRollTraining','jpg')
if aovdistRollTraining < 0.05
    fprintf('mean norm comparison for training test is valid\n')
end
[hdistRollTraining,pdistRollTraining] = ttest2(firstColumn,secondColumn); 


%array del test ALTO
%direct
firstColumn = distRollmean.directAlto';
%indirect
secondColumn = distRollmean.indirectAlto';

tbl = [firstColumn secondColumn];
aovdistRollStrongAid = anova1(tbl, aids);
%ylim = [0 100];
ylabel = ('mean norm error');
grid on
hold on
plot(1:length(tbl(1,:)),mean(tbl), 'dg')  % % Overlay the mean as green diamonds x-axis is the intergers of position
legend({'mean'})
hold off
saveas(gcf,'aovdistRollStrongAid','jpg')
if aovdistRollStrongAid < 0.05
    fprintf('mean norm comparison for strong aid test is valid\n')
end
[hdistRollStrong,pdistRollStrong] = ttest2(firstColumn,secondColumn); 


%array del test BASSO
%direct
firstColumn = distRollmean.directBasso';
%indirect
secondColumn = distRollmean.indirectBasso';

tbl = [firstColumn secondColumn];
aovdistRollLightAid = anova1(tbl, aids);
%ylim = [0 100];
ylabel = ('mean norm error');
grid on 
hold on
plot(1:length(tbl(1,:)),mean(tbl), 'dg')  % % Overlay the mean as green diamonds x-axis is the intergers of position
legend({'mean'})
hold off
saveas(gcf,'aovdistRollLightAid','jpg')
if aovdistRollLightAid < 0.05
    fprintf('mean norm comparison for light aid test is valid\n')
end
[hdistRollLight,pdistRollLight] = ttest2(firstColumn,secondColumn); 



%% ANOVA SULLE DIST PITCH DI CIASCUN GRUPPO 

%array delle distPitch (ciclo for al variare di fn)

%build distPitch struct for anova analysis
j= 0;
for i = 1 : length(participantsDirect)
    pilot = participantsDirect{i}; 
    distPitchmean.directTraining(j+1) = pilotperf.(pilot).distPitchFiltered_mean(1);
    distPitchmean.directAlto(j+1) = pilotperf.(pilot).distPitchFiltered_mean(2);
    distPitchmean.directBasso(j+1) = pilotperf.(pilot).distPitchFiltered_mean(3);
    distPitchmean.directNoAid(j+1) = pilotperf.(pilot).distPitchFiltered_mean(4);
    j = j + 1;
end  
j = 0;
for i = 1 : length(participantsIndirect)
    pilot = participantsIndirect{i};
    distPitchmean.indirectTraining(j+1) = pilotperf.(pilot).distPitchFiltered_mean(1);
    distPitchmean.indirectAlto(j+1) = pilotperf.(pilot).distPitchFiltered_mean(2);
    distPitchmean.indirectBasso(j+1) = pilotperf.(pilot).distPitchFiltered_mean(3);
    distPitchmean.indirectNoAid(j+1) = pilotperf.(pilot).distPitchFiltered_mean(4);
    j = j + 1;
end 

%array del test TRAINING
%direct
firstColumn = distPitchmean.directTraining';
%indirect
secondColumn = distPitchmean.indirectTraining';

tbl = [firstColumn secondColumn];
aovdistPitchTraining = anova1(tbl, aids);
%ylim = [0 100];
ylabel = ('mean norm error');
grid on 
hold on
plot(1:length(tbl(1,:)),mean(tbl), 'dg')  % % Overlay the mean as green diamonds x-axis is the intergers of position
legend({'mean'})
hold off
hold on
plot(1:length(tbl(1,:)),mean(tbl), 'dg')  % % Overlay the mean as green diamonds x-axis is the intergers of position
legend({'mean'})
hold off
saveas(gcf,'aovdistPitchTraining','jpg')
if aovdistPitchTraining < 0.05
    fprintf('mean norm comparison for training test is valid\n')
end
[hdistPitchTraining,pdistPitchTraining] = ttest2(firstColumn,secondColumn); 


%array del test ALTO
%direct
firstColumn = distPitchmean.directAlto';
%indirect
secondColumn = distPitchmean.indirectAlto';

tbl = [firstColumn secondColumn];
aovdistPitchStrongAid = anova1(tbl, aids);
%ylim = [0 100];
ylabel = ('mean norm error');
grid on 
hold on
plot(1:length(tbl(1,:)),mean(tbl), 'dg')  % % Overlay the mean as green diamonds x-axis is the intergers of position
legend({'mean'})
hold off
saveas(gcf,'aovdistPitchStrongAid','jpg')
if aovdistPitchStrongAid < 0.05
    fprintf('mean norm comparison for strong aid test is valid\n')
end
[hdistPitchStrong,pdistPitchStrong] = ttest2(firstColumn,secondColumn); 


%array del test BASSO
%direct
firstColumn = distPitchmean.directBasso';
%indirect
secondColumn = distPitchmean.indirectBasso';

tbl = [firstColumn secondColumn];
aovdistPitchLightAid = anova1(tbl, aids);
%ylim = [0 100];
ylabel = ('mean norm error');
grid on 
hold on
plot(1:length(tbl(1,:)),mean(tbl), 'dg')  % % Overlay the mean as green diamonds x-axis is the intergers of position
legend({'mean'})
hold off
saveas(gcf,'aovdistPitchLightAid','jpg')
if aovdistPitchLightAid < 0.05
    fprintf('mean norm comparison for light aid test is valid\n')
end
[hdistPitchLight,pdistPitchLight] = ttest2(firstColumn,secondColumn); 
