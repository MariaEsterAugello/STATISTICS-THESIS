close all

load('pilotperfPROCESSEDquestionsFraBertoAugello')
clearvars -except pilotperf
load('learningStruct.mat')
load('answerStruct.mat')

init_docked_fig; %init docket fig to put in folder
aids = {'direct'; 'indirect'};

participantsIndirect = {'chiara'; 'antonio'; 'tedeschi'; 'marco'; 'pierpaolo'; 'nannola'; 'guerci';... 
                        'carlos'; 'leonardo'; 'paone'; 'bonato'; 'gentili'; 'mattia'; 'calzaretta';...
                        'pastore'; 'francesco'; 'marchiani'; 'ruscio'; 'riccardo'; 'simone'};
 
participantsDirect = {'francesca'; 'ilaria'; 'mugnaini'; 'bertocchini'; ...
                      'giovanni'; 'suada'; 'bruno'; 'caselli'; 'susini';...
                      'manconi'; 'cristofani'; 'francesconi'; 'maugeri'; ...
                      'benedetti'; 'cannoni'; 'bini'; 'roberta'; 'valentina';...
                      'emanuela'; 'augello'};


run('Untitled19_02_23.m')
%anova for mean norm, dist roll, dist pitch + anova for learnings NB.do not save boxplot, save table instead
run('Anova21_02_23.m')
%learning effects
%run('AOVlearnings21_02_23.m')
%pie chart for answer question
run('domandeXpilota21_02_23.m')
%run only after domandeXpilota
run('piechart21_02_2023.m')
