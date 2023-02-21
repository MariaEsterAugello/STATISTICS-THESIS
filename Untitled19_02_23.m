%% norm distance vector
                  %%%%%%%%%%% GRUPPO PLOT DIRECT %%%%%%%%%%%%%%%
                 
%row = length(participantsDirect);
%figure1direct = tiledlayout(row, 6);
create_docked_figure('NormDistanceVectorDirect')

for i = 1 : length(participantsDirect)
    pilot = participantsDirect{i}; %fare stessa cosa per participantsIndirect
    %piccoli sotto plot nella figura
    plt.(pilot) = nexttile([5, 5]);
    axes(plt.(pilot));
    
    errorbar(pilotperf.(pilot).meanNorm, pilotperf.(pilot).varNorm, 'x') ; 
    
    xlim([0 6])
    ylim([0 200])
    xticks(1 : 4)
    yticks(0 : 40 : 200)
    grid on 
    
    identifier = (pilotperf.(pilot).NumeroPilota); %in una fase successiva sostituisci pilot riga successiva
    legend(num2str(identifier(1)), 'Location', 'northeast')
    %legend(pilot, 'Location', 'northeast')
    
    %analisi tassi di apprendimento medi con direct e indirect
    %STO COMPARANDO ERRORI DAL PERCORSO SE IMPARANO VALORE NEGATIVO
    learning.direct.First(end+1) = (pilotperf.(pilot).meanNorm(1) - pilotperf.(pilot).meanNorm(2));
    learning.direct.Second(end+1) = (pilotperf.(pilot).meanNorm(2) - pilotperf.(pilot).meanNorm(3));
    learning.direct.Third(end+1) = (pilotperf.(pilot).meanNorm(3) - pilotperf.(pilot).meanNorm(4));
    learning.direct.ThirdBis(end+1) = (pilotperf.(pilot).meanNorm(1) - pilotperf.(pilot).meanNorm(3));
    learning.direct.All(end+1) = (pilotperf.(pilot).meanNorm(1) - pilotperf.(pilot).meanNorm(4));
end   
%legend({'meanNorm', 'varNorm'}, 'Location', 'northeastoutside');
saveas(gcf,'NormDistanceVectorDirect','jpg')
             %%%%%%%%%%%%% GRUPPO PLOT INDIRECT %%%%%%%%%%%%%%
create_docked_figure('NormDistanceVectorIndirect')
%for each partecipants
for i = 1 : length(participantsIndirect)
    pilot = participantsIndirect{i}; %fare stessa cosa per participantsIndirect
    %identifier = pilotperf.(pilot).NumeroPilota;
    
    plt.(pilot) = nexttile([5, 5]);
    axes(plt.(pilot));
    
    errorbar(pilotperf.(pilot).meanNorm, pilotperf.(pilot).varNorm, 'x') ; 
    
    xlim([0 6])
    ylim([0 200])
    xticks(1 : 4)
    yticks(0 : 40 : 200)
    grid on 
    
    identifier = (pilotperf.(pilot).NumeroPilota); %in una fase successiva sostituisci pilot riga successiva
    legend(num2str(identifier(1)), 'Location', 'northeast')
    %legend(pilot, 'Location', 'northeast')
    hold off
    
    %analisi tassi di apprendimento medi con direct e indirect 
    %STO COMPARANDO ERRORI DAL PERCORSO SE IMPARANO VALORE NEGATIVO
    learning.indirect.First(end+1) = (pilotperf.(pilot).meanNorm(1) - pilotperf.(pilot).meanNorm(2));
    learning.indirect.Second(end+1) = (pilotperf.(pilot).meanNorm(2) - pilotperf.(pilot).meanNorm(3));
    learning.indirect.Third(end+1) = (pilotperf.(pilot).meanNorm(3) - pilotperf.(pilot).meanNorm(4));
    learning.indirect.ThirdBis(end+1) = (pilotperf.(pilot).meanNorm(1) - pilotperf.(pilot).meanNorm(3));
    learning.indirect.All(end+1) = (pilotperf.(pilot).meanNorm(1) - pilotperf.(pilot).meanNorm(4));
end  
saveas(gcf,'NormDistanceVectorIndirect','jpg')

               %%%%%%%%%%%%% GRUPPO PLOT LEARNING ONE TIME THING FOR NORM VECTOR%%%%%%%%%%%%%%
%primo step learning
create_docked_figure('LearningEffectFirst')
hold on
ToCompare = [learning.(aids{1}).First; learning.(aids{2}).First]';
boxplot(ToCompare, aids', 'Notch', 'on')
xlim([0 3])
ylim([-500 500])
xticks(1 : 2)
yticks(-500 : 50 : 500)
grid on
plot(1:length(ToCompare(1,:)),mean(ToCompare), 'dg')  % % Overlay the mean as green diamonds x-axis is the intergers of position
legend({'mean'})
%title('SUBTRACTION OF TRAINING MINUS STRONG AID \n of the MEAN-NORM(distance error from path)')
xlabel('haptic aids')
ylabel('mean error distance [m]')
hold off
saveas(gcf,'LearningEffectFirst','jpg')

%secondo step learning
create_docked_figure('LearningEffectSecond')
hold on
ToCompare = [learning.(aids{1}).Second; learning.(aids{2}).Second]';
boxplot(ToCompare, aids', 'Notch', 'on')
xlim([0 3])
ylim([-250 250])
xticks(1 : 2)
yticks(-250 : 50 : 250)
grid on
plot(1:length(ToCompare(1,:)),mean(ToCompare), 'dg')  % % Overlay the mean as green diamonds x-axis is the intergers of position
legend({'mean'})
xlabel('haptic aids')
ylabel('mean error distance [m]')
hold off
saveas(gcf,'LearningEffectSecond','jpg')

%terzo step learning
create_docked_figure('LearningEffectThird')
hold on
ToCompare = [learning.(aids{1}).Third; learning.(aids{2}).Third]';
boxplot(ToCompare, aids', 'Notch', 'on')
xlim([0 3])
ylim([-250 250])
xticks(1 : 2)
yticks(-250 : 50 : 250)
grid on
plot(1:length(ToCompare(1,:)),mean(ToCompare), 'dg')  % % Overlay the mean as green diamonds x-axis is the intergers of position
legend({'mean'})
xlabel('haptic aids')
ylabel('mean error distance [m]')
hold off
saveas(gcf,'LearningEffectThird','jpg')

%terzo bis step learning
create_docked_figure('LearningEffectThirdBis')
hold on
ToCompare = [learning.(aids{1}).ThirdBis; learning.(aids{2}).ThirdBis]';
boxplot(ToCompare, aids', 'Notch', 'on')
xlim([0 3])
ylim([-500 500])
xticks(1 : 2)
yticks(-500 : 50 : 500)
grid on
plot(1:length(ToCompare(1,:)),mean(ToCompare), 'dg')  % % Overlay the mean as green diamonds x-axis is the intergers of position
legend({'mean'})
xlabel('haptic aids')
ylabel('mean error distance [m]')
hold off
saveas(gcf,'LearningEffectThirdBis','jpg')

%quarto step learning
create_docked_figure('LearningEffectAll')
hold on
ToCompare = [learning.(aids{1}).All; learning.(aids{2}).All]';
boxplot(ToCompare, aids', 'Notch', 'on')
xlim([0 3])
ylim([-500 500])
xticks(1 : 2)
yticks(-500 : 50 : 500)
grid on
plot(1:length(ToCompare(1,:)),mean(ToCompare), 'dg')  % % Overlay the mean as green diamonds x-axis is the intergers of position
legend({'mean'})
xlabel('haptic aids')
ylabel('mean error distance [m]')
hold off
saveas(gcf,'LearningEffectAll','jpg')

%% dist roll filtered 
%%%%%%%%%%% GRUPPO PLOT DIRECT %%%%%%%%%%%%%%%

create_docked_figure('DistRollDirect')
for i = 1 : length(participantsDirect)
    pilot = participantsDirect{i}; %fare stessa cosa per participantsIndirect
    %identifier = pilotperf.(pilot).NumeroPilota;
    
    plt.(pilot) = nexttile([5, 5]);
    axes(plt.(pilot));
    errorbar(pilotperf.(pilot).distRollFiltered_mean, pilotperf.(pilot).distRollFiltered_var, 'x') ;  
    xlim([0 6])
    ylim([-100 200])
    xticks(1 : 4)
    yticks(-100 : 40 : 200)
    grid on

    identifier = (pilotperf.(pilot).NumeroPilota); %in una fase successiva sostituisci pilot riga successiva
    legend(num2str(identifier(1)),'Location', 'northeast')
    hold off
    
end   
saveas(gcf,'DistRollDirect','jpg')

             %%%%%%%%%%%%% GRUPPO PLOT INDIRECT %%%%%%%%%%%%%%

create_docked_figure('DistRollIndirect')
for i = 1 : length(participantsIndirect)
    pilot = participantsIndirect{i}; %fare stessa cosa per participantsIndirect
    %identifier = pilotperf.(pilot).NumeroPilota;
    
    plt.(pilot) = nexttile([5, 5]);
    axes(plt.(pilot));
    errorbar(pilotperf.(pilot).distRollFiltered_mean, pilotperf.(pilot).distRollFiltered_var, 'x') ;  
    xlim([0 6])
    ylim([-100 200])
    xticks(1 : 4)
    yticks(-100 : 40 : 200)
    grid on

    identifier = (pilotperf.(pilot).NumeroPilota); %in una fase successiva sostituisci pilot riga successiva
    legend(num2str(identifier(1)),'Location', 'northeast')
    hold off
end   
%legend({'meanDistRoll', 'varDistRoll'}, 'Location', 'northeastoutside');
saveas(gcf,'DistRollIndirect','jpg')

%% dist pitch filtered

%%%%%%%%%%% GRUPPO PLOT DIRECT %%%%%%%%%%%%%%%

%row = length(participantsDirect);
% figure()
% figure3direct = tiledlayout(row, 6);
create_docked_figure('DistPitchDirect')
%ylim([0 100];

for i = 1 : length(participantsDirect)
    pilot = participantsDirect{i}; %fare stessa cosa per participantsIndirect
    %identifier = pilotperf.(pilot).NumeroPilota;
    
    plt.(pilot) = nexttile([5, 5]);
    axes(plt.(pilot));
    errorbar(pilotperf.(pilot).distPitchFiltered_mean, pilotperf.(pilot).distPitchFiltered_var, 'x') ;  
    xlim([0 6])
    ylim([-100 100])
    xticks(1 : 4)
    yticks(-100 : 40 : 100)
    grid on

    identifier = (pilotperf.(pilot).NumeroPilota); %in una fase successiva sostituisci pilot riga successiva
    legend(num2str(identifier(1)),'Location', 'northeast')
    hold off
end   
%legend({'meanDistPitch', 'varDistPitch'}, 'Location', 'northeastoutside');
saveas(gcf,'DistPitchDirect','jpg')

             %%%%%%%%%%%%% GRUPPO PLOT INDIRECT %%%%%%%%%%%%%%

create_docked_figure('DistPitchIndirect')
for i = 1 : length(participantsIndirect)
    pilot = participantsIndirect{i}; %fare stessa cosa per participantsIndirect
    %identifier = pilotperf.(pilot).NumeroPilota;
    
    plt.(pilot) = nexttile([5, 5]);
    axes(plt.(pilot));
    errorbar(pilotperf.(pilot).distPitchFiltered_mean, pilotperf.(pilot).distPitchFiltered_var, 'x') ;  
    xlim([0 6])
    ylim([-100 100])
    xticks(1 : 4)
    yticks(-100 : 40 : 100)
    grid on
    
    identifier = (pilotperf.(pilot).NumeroPilota); %in una fase successiva sostituisci pilot riga successiva
    legend(num2str(identifier(1)),'Location', 'northeast')
    hold off
end
%legend({'meanDistPitch', 'varDistPitch'}, 'Location', 'northeastoutside');
saveas(gcf,'DistPitchIndirect','jpg')

