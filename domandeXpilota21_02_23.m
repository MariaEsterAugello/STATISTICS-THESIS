%% risposta alle domande
%% domanda A

                  %%%%%%%%%%% GRUPPO PLOT DIRECT %%%%%%%%%%%%%%%               
create_docked_figure('Which one do you prefer? DirectPilots')
for i = 1 : length(participantsDirect)
    pilot = participantsDirect{i}; %fare stessa cosa per participantsIndirect
    %identifier = pilotperf.(pilot).NumeroPilota;
    
    plt.(pilot) = nexttile([5, 5]);
    axes(plt.(pilot));
    
    index = find(pilotperf.(pilot).domandaA ~= 0);
    CountingAnswers = pilotperf.(pilot).domandaA(index);
    stem(CountingAnswers, 'filled') ; 
    xlim([0 4])
    ylim([0 4])
    xticks(1 : 2)
    yticks(1 : 4)
    identifier = (pilotperf.(pilot).NumeroPilota); %in una fase successiva sostituisci pilot riga successiva
    legend(num2str(identifier(1)),'Location', 'northeast')
    grid on
    
    answer.direct.A.test3(end+1) = pilotperf.(pilot).domandaA(3);
    answer.direct.A.test4(end+1) = pilotperf.(pilot).domandaA(4);
end  
saveas(gcf,'questAdirect','jpg')

             %%%%%%%%%%%%% GRUPPO PLOT INDIRECT %%%%%%%%%%%%%%

create_docked_figure('Which one do you prefer? IndirectPilots')
for i = 1 : length(participantsIndirect)
    pilot = participantsIndirect{i}; %fare stessa cosa per participantsIndirect
    %identifier = pilotperf.(pilot).NumeroPilota;
    
    plt.(pilot) = nexttile([5, 5]);
    axes(plt.(pilot));
    
    index = find(pilotperf.(pilot).domandaA ~= 0);
    CountingAnswers = pilotperf.(pilot).domandaA(index);
    stem(CountingAnswers, 'filled') ; 
    xlim([0 4])
    ylim([0 4])
    xticks(1 : 2)
    yticks(1 : 4)
    identifier = (pilotperf.(pilot).NumeroPilota); %in una fase successiva sostituisci pilot riga successiva
    legend(num2str(identifier(1)),'Location', 'northeast')
    grid on
    
    answer.indirect.A.test3(end+1) = pilotperf.(pilot).domandaA(3);
    answer.indirect.A.test4(end+1) = pilotperf.(pilot).domandaA(4);
end  
%legend({'domandaA'}, 'Location', 'northeastoutside');
saveas(gcf,'questAindirect','jpg')

%% domanda B

                  %%%%%%%%%%% GRUPPO PLOT DIRECT %%%%%%%%%%%%%%%     
                  
%row = length(participantsDirect);
% figure()
% figure5direct = tiledlayout(row, 6);
create_docked_figure('Which condition you think it was more physical demanding? DirectPilots')

for i = 1 : length(participantsDirect)
    pilot = participantsDirect{i}; %fare stessa cosa per participantsIndirect
    %identifier = pilotperf.(pilot).NumeroPilota;
    
    plt.(pilot) = nexttile([5, 5]);
    axes(plt.(pilot));
    
    index = find(pilotperf.(pilot).domandaB ~= 0);
    CountingAnswers = pilotperf.(pilot).domandaB(index);
    
    stem(CountingAnswers, 'filled') ; 
    xlim([0 4])
    ylim([0 4])
    xticks(1 : 2)
    yticks(1 : 4)
    identifier = (pilotperf.(pilot).NumeroPilota); %in una fase successiva sostituisci pilot riga successiva
    legend(num2str(identifier(1)),'Location', 'northeast')
    grid on
    
    answer.direct.B.test3(end+1) = pilotperf.(pilot).domandaB(3);
    answer.direct.B.test4(end+1) = pilotperf.(pilot).domandaB(4);
end   
%legend({'domandaB'}, 'Location', 'northeastoutside');
saveas(gcf,'questBdirect','jpg')

             %%%%%%%%%%%%% GRUPPO PLOT INDIRECT %%%%%%%%%%%%%%

create_docked_figure('Which condition you think it was more physical demanding? IndirectPilots')
for i = 1 : length(participantsIndirect)
    pilot = participantsIndirect{i}; %fare stessa cosa per participantsIndirect
    %identifier = pilotperf.(pilot).NumeroPilota;
    
    plt.(pilot) = nexttile([5, 5]);
    axes(plt.(pilot));
    
    index = find(pilotperf.(pilot).domandaB ~= 0);
    CountingAnswers = pilotperf.(pilot).domandaB(index);
    stem(CountingAnswers, 'filled') ; 
    xlim([0 4])
    ylim([0 4])
    xticks(1 : 2)
    yticks(1 : 4)
    identifier = (pilotperf.(pilot).NumeroPilota); %in una fase successiva sostituisci pilot riga successiva
    legend(num2str(identifier(1)),'Location', 'northeast')
    grid on
    
    answer.indirect.B.test3(end+1) = pilotperf.(pilot).domandaB(3);
    answer.indirect.B.test4(end+1) = pilotperf.(pilot).domandaB(4);
end  
%legend({'domandaB'}, 'Location', 'northeastoutside');
saveas(gcf,'questBindirect','jpg')

%% domanda C

                  %%%%%%%%%%% GRUPPO PLOT DIRECT %%%%%%%%%%%%%%%      
create_docked_figure('In which condition you think you had the best perfomance? DirectPilots')
for i = 1 : length(participantsDirect)
    pilot = participantsDirect{i}; %fare stessa cosa per participantsIndirect
    %identifier = pilotperf.(pilot).NumeroPilota;
    
    plt.(pilot) = nexttile([5, 5]);
    axes(plt.(pilot));
    
    index = find(pilotperf.(pilot).domandaC ~= 0);
    CountingAnswers = pilotperf.(pilot).domandaC(index);
    stem(CountingAnswers, 'filled') ; 
    xlim([0 4])
    ylim([0 4])
    xticks(1 : 2)
    yticks(1 : 4)
    identifier = (pilotperf.(pilot).NumeroPilota); %in una fase successiva sostituisci pilot riga successiva
    legend(num2str(identifier(1)),'Location', 'northeast')
    grid on
    
    answer.direct.C.test3(end+1) = pilotperf.(pilot).domandaC(3);
    answer.direct.C.test4(end+1) = pilotperf.(pilot).domandaC(4);
end   
%legend({'domandaC'}, 'Location', 'northeastoutside');
saveas(gcf,'questCdirect','jpg')

             %%%%%%%%%%%%% GRUPPO PLOT INDIRECT %%%%%%%%%%%%%%
             
create_docked_figure('In which condition you think you had the best perfomance? IndirectPilots')
for i = 1 : length(participantsIndirect)
    pilot = participantsIndirect{i}; %fare stessa cosa per participantsIndirect
    
    plt.(pilot) = nexttile([5, 5]);
    axes(plt.(pilot));
    
    index = find(pilotperf.(pilot).domandaC ~= 0);
    CountingAnswers = pilotperf.(pilot).domandaC(index);
    stem(CountingAnswers, 'filled') ; 
    xlim([0 4])
    ylim([0 4])
    xticks(1 : 2)
    yticks(1 : 4)
    identifier = (pilotperf.(pilot).NumeroPilota); %in una fase successiva sostituisci pilot riga successiva
    legend(num2str(identifier(1)),'Location', 'northeast')
    grid on
    
    answer.indirect.C.test3(end+1) = pilotperf.(pilot).domandaC(3);
    answer.indirect.C.test4(end+1) = pilotperf.(pilot).domandaC(4);
end  
saveas(gcf,'questCindirect','jpg')

%% domanda D

                  %%%%%%%%%%% GRUPPO PLOT DIRECT %%%%%%%%%%%%%%%      
                  
%row = length(participantsDirect);
% figure()
% figure7direct = tiledlayout(row, 6);
create_docked_figure('Under which condition you think you had the best control of the aircraft? DirectPilots')
for i = 1 : length(participantsDirect)
    pilot = participantsDirect{i}; %fare stessa cosa per participantsIndirect
    %identifier = pilotperf.(pilot).NumeroPilota;
    
    plt.(pilot) = nexttile([5, 5]);
    axes(plt.(pilot));
    
    index = find(pilotperf.(pilot).domandaD ~= 0);
    CountingAnswers = pilotperf.(pilot).domandaD(index);
    stem(CountingAnswers, 'filled') ; 
    xlim([0 4])
    ylim([0 4])
    xticks(1 : 2)
    yticks(1 : 4)
    identifier = (pilotperf.(pilot).NumeroPilota); %in una fase successiva sostituisci pilot riga successiva
    legend(num2str(identifier(1)),'Location', 'northeast')
    grid on
    
    answer.direct.D.test3(end+1) = pilotperf.(pilot).domandaD(3);
    answer.direct.D.test4(end+1) = pilotperf.(pilot).domandaD(4);    
end   
%legend({'domandaD'}, 'Location', 'northeastoutside');
saveas(gcf,'questDdirect','jpg')

             %%%%%%%%%%%%% GRUPPO PLOT INDIRECT %%%%%%%%%%%%%%

  
%row = length(participantsIndirect);
% figure()
% figure7indirect = tiledlayout(row, 6);
create_docked_figure('Under which condition you think you had the best control of the aircraft? IndirectPilots')
%ylim([0 100])
for i = 1 : length(participantsIndirect)
    pilot = participantsIndirect{i}; %fare stessa cosa per participantsIndirect
    %identifier = pilotperf.(pilot).NumeroPilota;
    
    plt.(pilot) = nexttile([5, 5]);
    axes(plt.(pilot));
    
    index = find(pilotperf.(pilot).domandaD ~= 0);
    CountingAnswers = pilotperf.(pilot).domandaD(index);
    stem(CountingAnswers, 'filled') ; 
    xlim([0 4])
    ylim([0 4])
    xticks(1 : 2)
    yticks(1 : 4)
    identifier = (pilotperf.(pilot).NumeroPilota); %in una fase successiva sostituisci pilot riga successiva
    legend(num2str(identifier(1)),'Location', 'northeast')
    grid on
    
    
    answer.indirect.D.test3(end+1) = pilotperf.(pilot).domandaD(3);
    answer.indirect.D.test4(end+1) = pilotperf.(pilot).domandaD(4);      
end  
%legend({'domandaD'}, 'Location', 'northeastoutside');
saveas(gcf,'questDindirect','jpg')

%% domanda E

                  %%%%%%%%%%% GRUPPO PLOT DIRECT %%%%%%%%%%%%%%%      
                  
%row = length(participantsDirect);
% figure()
% figure8direct = tiledlayout(row, 6);
create_docked_figure('Which condition you think it was more mentally demanding? DirectPilots')
for i = 1 : length(participantsDirect)
    pilot = participantsDirect{i}; %fare stessa cosa per participantsIndirect
    %identifier = pilotperf.(pilot).NumeroPilota;
    
    plt.(pilot) = nexttile([5, 5]);
    axes(plt.(pilot));
    
    index = find(pilotperf.(pilot).domandaE ~= 0);
    CountingAnswers = pilotperf.(pilot).domandaE(index);
    stem(CountingAnswers, 'filled') ; 
    xlim([0 4])
    ylim([0 4])
    xticks(1 : 2)
    yticks(1 : 4)
    identifier = (pilotperf.(pilot).NumeroPilota); %in una fase successiva sostituisci pilot riga successiva
    legend(num2str(identifier(1)),'Location', 'northeast')
    grid on
        
    answer.direct.E.test3(end+1) = pilotperf.(pilot).domandaE(3);
    answer.direct.E.test4(end+1) = pilotperf.(pilot).domandaE(4);   
end   
%legend({'domandaE'}, 'Location', 'northeastoutside');
saveas(gcf,'questEdirect','jpg')

             %%%%%%%%%%%%% GRUPPO PLOT INDIRECT %%%%%%%%%%%%%%

  
%row = length(participantsIndirect);
% figure()
% figure8indirect = tiledlayout(row, 6);
create_docked_figure('Which condition you think it was more mentally demanding? IndirectPilots')
%ylim([0 100])

for i = 1 : length(participantsIndirect)
    pilot = participantsIndirect{i}; %fare stessa cosa per participantsIndirect
    %identifier = pilotperf.(pilot).NumeroPilota;
    
    plt.(pilot) = nexttile([5, 5]);
    axes(plt.(pilot));
    
    index = find(pilotperf.(pilot).domandaE ~= 0);
    CountingAnswers = pilotperf.(pilot).domandaE(index);
    stem(CountingAnswers, 'filled') ; 
    xlim([0 4])
    ylim([0 4])
    xticks(1 : 2)
    yticks(1 : 4)
    identifier = (pilotperf.(pilot).NumeroPilota); %in una fase successiva sostituisci pilot riga successiva
    legend(num2str(identifier(1)),'Location', 'northeast')
    grid on
    
    answer.indirect.E.test3(end+1) = pilotperf.(pilot).domandaE(3);
    answer.indirect.E.test4(end+1) = pilotperf.(pilot).domandaE(4);  
end  
%legend({'domandaE'}, 'Location', 'northeastoutside');
saveas(gcf,'questEindirect','jpg')

%% domanda F COOPER HARPER

                  %%%%%%%%%%% GRUPPO PLOT DIRECT %%%%%%%%%%%%%%%      
                  
%row = length(participantsDirect);
% figure()
% figure9direct = tiledlayout(row, 6);
create_docked_figure('Cooper Harper Rate DirectPilots')
for i = 1 : length(participantsDirect)
    pilot = participantsDirect{i}; %fare stessa cosa per participantsIndirect
    %identifier = pilotperf.(pilot).NumeroPilota;
    
    plt.(pilot) = nexttile([5, 5]);
    axes(plt.(pilot));
    
    index = find(pilotperf.(pilot).domandaF ~= 0);
    CountingAnswers = pilotperf.(pilot).domandaF(index);
    stem(CountingAnswers, 'filled') ; 
    xlim([0 5])
    ylim([0 10])
    xticks(1 : 3)
    yticks(1 : 10)
    identifier = (pilotperf.(pilot).NumeroPilota); %in una fase successiva sostituisci pilot riga successiva
    legend(num2str(identifier(1)),'Location', 'northeast')
    grid on
    
    answer.direct.F.test1(end+1) = pilotperf.(pilot).domandaF(1);
    answer.direct.F.test2(end+1) = pilotperf.(pilot).domandaF(2);
    answer.direct.F.test3(end+1) = pilotperf.(pilot).domandaF(3); 
    answer.direct.F.test4(end+1) = pilotperf.(pilot).domandaF(4);
end   
%legend({'CooperHarperRate'}, 'Location', 'north');
saveas(gcf,'CooperHarperRateDirectPilots','jpg')

             %%%%%%%%%%%%% GRUPPO PLOT INDIRECT %%%%%%%%%%%%%%

  
%row = length(participantsIndirect);
% figure()
% figure9indirect = tiledlayout(row, 6);
create_docked_figure('Cooper Harper Rate IndirectPilots')
%ylim([0 100])
for i = 1 : length(participantsIndirect)
    pilot = participantsIndirect{i}; %fare stessa cosa per participantsIndirect
    %identifier = pilotperf.(pilot).NumeroPilota;
    
    plt.(pilot) = nexttile([5, 5]);
    axes(plt.(pilot));
    
    index = find(pilotperf.(pilot).domandaF ~= 0);
    CountingAnswers = pilotperf.(pilot).domandaF(index);
    stem(CountingAnswers, 'filled') ; 
    xlim([0 5])
    ylim([0 10])
    xticks(1 : 3)
    yticks(1 : 10)
    identifier = (pilotperf.(pilot).NumeroPilota); %in una fase successiva sostituisci pilot riga successiva
    legend(num2str(identifier(1)),'Location', 'northeast')
    grid on
    
    answer.indirect.F.test1(end+1) = pilotperf.(pilot).domandaF(1);
    answer.indirect.F.test2(end+1) = pilotperf.(pilot).domandaF(2);
    answer.indirect.F.test3(end+1) = pilotperf.(pilot).domandaF(3); 
    answer.indirect.F.test4(end+1) = pilotperf.(pilot).domandaF(4);
    
end  
%legend({'CooperHarperRate'}, 'Location', 'northeastoutside');
saveas(gcf,'CooperHarperRateIndirectPilots','jpg')

%%
                    %%%%%%%%%%%%% STATISTICHE ANSWER %%%%%%%%%%%%%%
% MEDIA RISPOSTE DOPO IL TERZO TEST ALLA DOMANDA A                 
create_docked_figure('answerAtest3')
%plot direct
plt.direct = nexttile([5, 5]);
axes(plt.direct);
boxplot(answer.direct.A.test3)
xlim([0 2])
ylim([0 4])
xticks(1 : 1)
yticks(1 : 4)
grid on
%plot indirect
plt.indirect = nexttile([5, 5]);
axes(plt.indirect);
boxplot(answer.indirect.A.test3)
xlim([0 2])
ylim([0 4])
xticks(1 : 1)
yticks(1 : 4)
grid on
saveas(gcf,'MeanAnswersAtest3','jpg')

% MEDIA RISPOSTE DOPO IL QUARTO TEST ALLA DOMANDA A                 
create_docked_figure('answerAtest4')
%plot direct
plt.direct = nexttile([5, 5]);
axes(plt.direct);
boxplot(answer.direct.A.test4)
xlim([0 2])
ylim([0 4])
xticks(1 : 1)
yticks(1 : 4)
grid on
%plot indirect
plt.indirect = nexttile([5, 5]);
axes(plt.indirect);
boxplot(answer.indirect.A.test4)
xlim([0 2])
ylim([0 4])
xticks(1 : 1)
yticks(1 : 4)
grid on
saveas(gcf,'MeanAnswersAtest4','jpg')







% MEDIA RISPOSTE DOPO IL TERZO TEST ALLA DOMANDA B
create_docked_figure('answerBtest3')
%plot direct
plt.direct = nexttile([5, 5]);
axes(plt.direct);
boxplot(answer.direct.B.test3)
xlim([0 2])
ylim([0 4])
xticks(1 : 1)
yticks(1 : 4)
grid on
%plot indirect
plt.indirect = nexttile([5, 5]);
axes(plt.indirect);
boxplot(answer.indirect.B.test3)
xlim([0 2])
ylim([0 4])
xticks(1 : 1)
yticks(1 : 4)
grid on
saveas(gcf,'MeanAnswersBtest3','jpg')

% MEDIA RISPOSTE DOPO IL QUARTO TEST ALLA DOMANDA A                 
create_docked_figure('answerBtest4')
%plot direct
plt.direct = nexttile([5, 5]);
axes(plt.direct);
boxplot(answer.direct.B.test4)
xlim([0 2])
ylim([0 4])
xticks(1 : 1)
yticks(1 : 4)
grid on
%plot indirect
plt.indirect = nexttile([5, 5]);
axes(plt.indirect);
boxplot(answer.indirect.B.test4)
xlim([0 2])
ylim([0 4])
xticks(1 : 1)
yticks(1 : 4)
grid on
saveas(gcf,'MeanAnswersBtest4','jpg')






% MEDIA RISPOSTE DOPO IL TERZO TEST ALLA DOMANDA C
create_docked_figure('answerCtest3')
%plot direct
plt.direct = nexttile([5, 5]);
axes(plt.direct);
boxplot(answer.direct.C.test3)
xlim([0 2])
ylim([0 4])
xticks(1 : 1)
yticks(1 : 4)
grid on
%plot indirect
plt.indirect = nexttile([5, 5]);
axes(plt.indirect);
boxplot(answer.indirect.C.test3)
xlim([0 2])
ylim([0 4])
xticks(1 : 1)
yticks(1 : 4)
grid on
saveas(gcf,'MeanAnswersCtest3','jpg')

% MEDIA RISPOSTE DOPO IL QUARTO TEST ALLA DOMANDA C               
create_docked_figure('answerCtest4')
%plot direct
plt.direct = nexttile([5, 5]);
axes(plt.direct);
boxplot(answer.direct.C.test4)
xlim([0 2])
ylim([0 4])
xticks(1 : 1)
yticks(1 : 4)
grid on
%plot indirect
plt.indirect = nexttile([5, 5]);
axes(plt.indirect);
boxplot(answer.indirect.C.test4)
xlim([0 2])
ylim([0 4])
xticks(1 : 1)
yticks(1 : 4)
grid on
saveas(gcf,'MeanAnswersCtest4','jpg')








% MEDIA RISPOSTE DOPO IL TERZO TEST ALLA DOMANDA D
create_docked_figure('answerDtest3')
%plot direct
plt.direct = nexttile([5, 5]);
axes(plt.direct);
boxplot(answer.direct.D.test3)
xlim([0 2])
ylim([0 4])
xticks(1 : 1)
yticks(1 : 4)
grid on
%plot indirect
plt.indirect = nexttile([5, 5]);
axes(plt.indirect);
boxplot(answer.indirect.D.test3)
xlim([0 2])
ylim([0 4])
xticks(1 : 1)
yticks(1 : 4)
grid on
saveas(gcf,'MeanAnswersDtest3','jpg')

% MEDIA RISPOSTE DOPO IL QUARTO TEST ALLA DOMANDA D                
create_docked_figure('answerDtest4')
%plot direct
plt.direct = nexttile([5, 5]);
axes(plt.direct);
boxplot(answer.direct.D.test4)
xlim([0 2])
ylim([0 4])
xticks(1 : 1)
yticks(1 : 4)
grid on
%plot indirect
plt.indirect = nexttile([5, 5]);
axes(plt.indirect);
boxplot(answer.indirect.D.test4)
xlim([0 2])
ylim([0 4])
xticks(1 : 1)
yticks(1 : 4)
grid on
saveas(gcf,'MeanAnswersDtest4','jpg')










% MEDIA RISPOSTE DOPO IL TERZO TEST ALLA DOMANDA E
create_docked_figure('answerEtest3')
%plot direct
plt.direct = nexttile([5, 5]);
axes(plt.direct);
boxplot(answer.direct.E.test3)
xlim([0 2])
ylim([0 4])
xticks(1 : 1)
yticks(1 : 4)
grid on
%plot indirect
plt.indirect = nexttile([5, 5]);
axes(plt.indirect);
boxplot(answer.indirect.E.test3)
xlim([0 2])
ylim([0 4])
xticks(1 : 1)
yticks(1 : 4)
grid on
saveas(gcf,'MeanAnswersEtest3','jpg')

% MEDIA RISPOSTE DOPO IL QUARTO TEST ALLA DOMANDA E               
create_docked_figure('answerEtest4')
%plot direct
plt.direct = nexttile([5, 5]);
axes(plt.direct);
boxplot(answer.direct.E.test4)
xlim([0 2])
ylim([0 4])
xticks(1 : 1)
yticks(1 : 4)
grid on
%plot indirect
plt.indirect = nexttile([5, 5]);
axes(plt.indirect);
boxplot(answer.indirect.E.test4)
xlim([0 2])
ylim([0 4])
xticks(1 : 1)
yticks(1 : 4)
grid on
saveas(gcf,'MeanAnswersEtest4','jpg')






% MEDIA RISPOSTE DOPO IL SECONDO TEST ALLA DOMANDA F                
create_docked_figure('answerFtest2')
%plot direct
plt.direct = nexttile([5, 5]);
axes(plt.direct);
boxplot(answer.direct.F.test2)
xlim([0 2])
ylim([0 10])
xticks(1 : 1)
yticks(1 : 10)
grid on
%plot indirect
plt.indirect = nexttile([5, 5]);
axes(plt.indirect);
boxplot(answer.indirect.F.test2)
xlim([0 2])
ylim([0 10])
xticks(1 : 1)
yticks(1 : 10)
grid on
saveas(gcf,'MeanAnswersFtest2','jpg')

% MEDIA RISPOSTE DOPO IL TERZO TEST ALLA DOMANDA F
create_docked_figure('answerFtest3')
%plot direct
plt.direct = nexttile([5, 5]);
axes(plt.direct);
boxplot(answer.direct.F.test3)
xlim([0 2])
ylim([0 10])
xticks(1 : 1)
yticks(1 : 10)
grid on
%plot indirect
plt.indirect = nexttile([5, 5]);
axes(plt.indirect);
boxplot(answer.indirect.F.test3)
xlim([0 2])
ylim([0 10])
xticks(1 : 1)
yticks(1 : 10)
grid on
saveas(gcf,'MeanAnswersFtest3','jpg')

% MEDIA RISPOSTE DOPO IL QUARTO TEST ALLA DOMANDA F               
create_docked_figure('answerFtest4')
%plot direct
plt.direct = nexttile([5, 5]);
axes(plt.direct);
boxplot(answer.direct.F.test4)
xlim([0 2])
ylim([0 10])
xticks(1 : 1)
yticks(1 : 10)
grid on
%plot indirect
plt.indirect = nexttile([5, 5]);
axes(plt.indirect);
boxplot(answer.indirect.F.test4)
xlim([0 2])
ylim([0 10])
xticks(1 : 1)
yticks(1 : 10)
grid on
saveas(gcf,'MeanAnswersFtest4','jpg')




