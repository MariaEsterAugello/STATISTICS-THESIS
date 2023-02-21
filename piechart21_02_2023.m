%pie chart to question A
create_docked_figure('answerAtest3')

% fai un tiledlayout
figure = tiledlayout(2,2);
% assegna ogni sottografico ad una variabile
plt_1 = nexttile([1,1]);
plt_2 = nexttile([1,1]);
plt_3 = nexttile([1,1]);
plt_4 = nexttile([1,1]);

axes(plt_1)
uno = length(find(answer.direct.A.test3 == 1));
due = length(find(answer.direct.A.test3 == 2));
tre = length(find(answer.direct.A.test3 == 3));
pie([uno, due, tre])
title('Team direct: answer A after comparison')
legend('strong','light','no aid','Location','SouthEastOutside')
axes(plt_2);
uno = length(find(answer.indirect.A.test3 == 1));
due = length(find(answer.indirect.A.test3 == 2));
tre = length(find(answer.indirect.A.test3 == 3));
pie([uno, due, tre])
title('Team indirect: answer A after comparison')
legend('strong','light','no aid','Location','SouthEastOutside')
axes(plt_3);
uno = length(find(answer.direct.A.test4 == 1));
due = length(find(answer.direct.A.test4 == 2));
tre = length(find(answer.direct.A.test4 == 3));
pie([uno, due, tre])
title('Team direct: answer A after all tests')
legend('strong','light','no aid','Location','SouthEastOutside')
axes(plt_4);
uno = length(find(answer.indirect.A.test4 == 1));
due = length(find(answer.indirect.A.test4 == 2));
tre = length(find(answer.indirect.A.test4 == 3));
pie([uno, due, tre])
title('Team indirect: answer A after all tests')
legend('strong','light','no aid','Location','SouthEastOutside')
saveas(gcf,'PieAnswersAtest','jpg')




%pie chart to question B
create_docked_figure('answerBtest3')

% fai un tiledlayout
figure = tiledlayout(2,2);
% assegna ogni sottografico ad una variabile
plt_1 = nexttile([1,1]);
plt_2 = nexttile([1,1]);
plt_3 = nexttile([1,1]);
plt_4 = nexttile([1,1]);

axes(plt_1)
uno = length(find(answer.direct.B.test3 == 1));
due = length(find(answer.direct.B.test3 == 2));
tre = length(find(answer.direct.B.test3 == 3));
pie([uno, due, tre])
title('Team direct: answer B after comparison')
legend('strong','light','no aid','Location','SouthEastOutside')
axes(plt_2);
uno = length(find(answer.indirect.B.test3 == 1));
due = length(find(answer.indirect.B.test3 == 2));
tre = length(find(answer.indirect.B.test3 == 3));
pie([uno, due, tre])
title('Team indirect: answer B after comparison')
legend('strong','light','no aid','Location','SouthEastOutside')
axes(plt_3);
uno = length(find(answer.direct.B.test4 == 1));
due = length(find(answer.direct.B.test4 == 2));
tre = length(find(answer.direct.B.test4 == 3));
pie([uno, due, tre])
title('Team direct: answer B after all tests')
legend('strong','light','no aid','Location','SouthEastOutside')
axes(plt_4);
uno = length(find(answer.indirect.B.test4 == 1));
due = length(find(answer.indirect.B.test4 == 2));
tre = length(find(answer.indirect.B.test4 == 3));
pie([uno, due, tre])
title('Team indirect: answer B after all tests')
legend('strong','light','no aid','Location','SouthEastOutside')
saveas(gcf,'PieAnswersBtest','jpg')




%pie chart to question C
create_docked_figure('answerCtest3')

% fai un tiledlayout
figure = tiledlayout(2,2);
% assegna ogni sottografico ad una variabile
plt_1 = nexttile([1,1]);
plt_2 = nexttile([1,1]);
plt_3 = nexttile([1,1]);
plt_4 = nexttile([1,1]);

axes(plt_1)
uno = length(find(answer.direct.C.test3 == 1));
due = length(find(answer.direct.C.test3 == 2));
tre = length(find(answer.direct.C.test3 == 3));
pie([uno, due, tre])
title('Team direct: answer C after comparison')
legend('strong','light','no aid','Location','SouthEastOutside')
axes(plt_2);
uno = length(find(answer.indirect.C.test3 == 1));
due = length(find(answer.indirect.C.test3 == 2));
tre = length(find(answer.indirect.C.test3 == 3));
pie([uno, due, tre])
title('Team indirect: answer C after comparison')
legend('strong','light','no aid','Location','SouthEastOutside')
axes(plt_3);
uno = length(find(answer.direct.C.test4 == 1));
due = length(find(answer.direct.C.test4 == 2));
tre = length(find(answer.direct.C.test4 == 3));
pie([uno, due, tre])
title('Team direct: answer C after all tests')
legend('strong','light','no aid','Location','SouthEastOutside')
axes(plt_4);
uno = length(find(answer.indirect.C.test4 == 1));
due = length(find(answer.indirect.C.test4 == 2));
tre = length(find(answer.indirect.C.test4 == 3));
pie([uno, due, tre])
title('Team indirect: answer C after all tests')
legend('strong','light','no aid','Location','SouthEastOutside')
saveas(gcf,'PieAnswersCtest','jpg')



%pie chart to question D
create_docked_figure('answerDtest3')

% fai un tiledlayout
figure = tiledlayout(2,2);
% assegna ogni sottografico ad una variabile
plt_1 = nexttile([1,1]);
plt_2 = nexttile([1,1]);
plt_3 = nexttile([1,1]);
plt_4 = nexttile([1,1]);

axes(plt_1)
uno = length(find(answer.direct.D.test3 == 1));
due = length(find(answer.direct.D.test3 == 2));
tre = length(find(answer.direct.D.test3 == 3));
pie([uno, due, tre])
title('Team direct: answer D after comparison')
legend('strong','light','no aid','Location','SouthEastOutside')
axes(plt_2);
uno = length(find(answer.indirect.D.test3 == 1));
due = length(find(answer.indirect.D.test3 == 2));
tre = length(find(answer.indirect.D.test3 == 3));
pie([uno, due, tre])
title('Team indirect: answer D after comparison')
legend('strong','light','no aid','Location','SouthEastOutside')
axes(plt_3);
uno = length(find(answer.direct.D.test4 == 1));
due = length(find(answer.direct.D.test4 == 2));
tre = length(find(answer.direct.D.test4 == 3));
pie([uno, due, tre])
title('Team indirect: answer D after all tests')
legend('strong','light','no aid','Location','SouthEastOutside')
axes(plt_4);
uno = length(find(answer.indirect.D.test4 == 1));
due = length(find(answer.indirect.D.test4 == 2));
tre = length(find(answer.indirect.D.test4 == 3));
pie([uno, due, tre])
title('Team indirect: answer D after all tests')
legend('strong','light','no aid','Location','SouthEastOutside')
saveas(gcf,'PieAnswersDtest','jpg')



%pie chart to question E
create_docked_figure('answerEtest3')

% fai un tiledlayout
figure = tiledlayout(2,2);
% assegna ogni sottografico ad una variabile
plt_1 = nexttile([1,1]);
plt_2 = nexttile([1,1]);
plt_3 = nexttile([1,1]);
plt_4 = nexttile([1,1]);

axes(plt_1)
uno = length(find(answer.direct.E.test3 == 1));
due = length(find(answer.direct.E.test3 == 2));
tre = length(find(answer.direct.E.test3 == 3));
pie([uno, due, tre])
title('Team direct: answer E after comparison')
legend('strong','light','no aid','Location','SouthEastOutside')
axes(plt_2);
uno = length(find(answer.indirect.E.test3 == 1));
due = length(find(answer.indirect.E.test3 == 2));
tre = length(find(answer.indirect.E.test3 == 3));
pie([uno, due, tre])
title('Team indirect: answer E after comparison')
legend('strong','light','no aid','Location','SouthEastOutside')
axes(plt_3);
uno = length(find(answer.direct.E.test4 == 1));
due = length(find(answer.direct.E.test4 == 2));
tre = length(find(answer.direct.E.test4 == 3));
pie([uno, due, tre])
title('Team direct: answer E after all tests')
legend('strong','light','no aid','Location','SouthEastOutside')
axes(plt_4);
uno = length(find(answer.indirect.E.test4 == 1));
due = length(find(answer.indirect.E.test4 == 2));
tre = length(find(answer.indirect.E.test4 == 3));
pie([uno, due, tre])
title('Team indirect: answer E after all tests')
legend('strong','light','no aid','Location','SouthEastOutside')
saveas(gcf,'PieAnswersEtest','jpg')



%pie chart to question F
create_docked_figure('answerFtest3')
% fai un tiledlayout
figure = tiledlayout(1,2);
% assegna ogni sottografico ad una variabile
plt_1 = nexttile([1,1]);
plt_2 = nexttile([1,1]);

axes(plt_1)
uno = length(find(answer.direct.F.test2 == 1));
due = length(find(answer.direct.F.test2 == 2));
tre = length(find(answer.direct.F.test2 == 3));
quattro = length(find(answer.direct.F.test2 == 4));
cinque = length(find(answer.direct.F.test2 == 5));
sei = length(find(answer.direct.F.test2 == 6));
sette = length(find(answer.direct.F.test2 == 7));
otto = length(find(answer.direct.F.test2 == 8));
nove = length(find(answer.direct.F.test2 == 9));
dieci = length(find(answer.direct.F.test2 == 10));
pie([uno, due, tre, quattro, cinque, sei, sette, otto, nove, dieci])
title('Team direct: CooperHarper after strong aid test')
legend('1','2','3','4', '5', '6', '7', '8', '9', '10', 'Location','SouthEastOutside')
axes(plt_2)
uno = length(find(answer.indirect.F.test2 == 1));
due = length(find(answer.indirect.F.test2 == 2));
tre = length(find(answer.indirect.F.test2 == 3));
quattro = length(find(answer.indirect.F.test2 == 4));
cinque = length(find(answer.indirect.F.test2 == 5));
sei = length(find(answer.indirect.F.test2 == 6));
sette = length(find(answer.indirect.F.test2 == 7));
otto = length(find(answer.indirect.F.test2 == 8));
nove = length(find(answer.indirect.F.test2 == 9));
dieci = length(find(answer.indirect.F.test2 == 10));
pie([uno, due, tre, quattro, cinque, sei, sette, otto, nove, dieci])
title('Team indirect: CooperHarper after strong aid test')
legend('1','2','3','4', '5', '6', '7', '8', '9', '10', 'Location','SouthEastOutside')
saveas(gcf,'PieAnswersFtest2','jpg')

%pie chart to question F
create_docked_figure('answerFtest3')
% fai un tiledlayout
figure = tiledlayout(1,2);
% assegna ogni sottografico ad una variabile
plt_1 = nexttile([1,1]);
plt_2 = nexttile([1,1]);
axes(plt_1);
uno = length(find(answer.direct.F.test3 == 1));
due = length(find(answer.direct.F.test3 == 2));
tre = length(find(answer.direct.F.test3 == 3));
quattro = length(find(answer.direct.F.test3 == 4));
cinque = length(find(answer.direct.F.test3 == 5));
sei = length(find(answer.direct.F.test3 == 6));
sette = length(find(answer.direct.F.test3 == 7));
otto = length(find(answer.direct.F.test3 == 8));
nove = length(find(answer.direct.F.test3 == 9));
dieci = length(find(answer.direct.F.test3 == 10));
pie([uno, due, tre, quattro, cinque, sei, sette, otto, nove, dieci])
title('Team direct: CooperHarper after light aid test')
legend('1','2','3','4', '5', '6', '7', '8', '9', '10', 'Location','SouthEastOutside')
axes(plt_2);
uno = length(find(answer.indirect.F.test3 == 1));
due = length(find(answer.indirect.F.test3 == 2));
tre = length(find(answer.indirect.F.test3 == 3));
quattro = length(find(answer.indirect.F.test3 == 4));
cinque = length(find(answer.indirect.F.test3 == 5));
sei = length(find(answer.indirect.F.test3 == 6));
sette = length(find(answer.indirect.F.test3 == 7));
otto = length(find(answer.indirect.F.test3 == 8));
nove = length(find(answer.indirect.F.test3 == 9));
dieci = length(find(answer.indirect.F.test3 == 10));
pie([uno, due, tre, quattro, cinque, sei, sette, otto, nove, dieci])
title('Team indirect: CooperHarper after light aid test')
legend('1','2','3','4', '5', '6', '7', '8', '9', '10', 'Location','SouthEastOutside')
saveas(gcf,'PieAnswersFtest3','jpg')

%pie chart to question F
create_docked_figure('answerFtest3')
% fai un tiledlayout
figure = tiledlayout(1,2);
% assegna ogni sottografico ad una variabile
plt_1 = nexttile([1,1]);
plt_2 = nexttile([1,1]);
axes(plt_1)
uno = length(find(answer.direct.F.test4 == 1));
due = length(find(answer.direct.F.test4 == 2));
tre = length(find(answer.direct.F.test4 == 3));
quattro = length(find(answer.direct.F.test4 == 4));
cinque = length(find(answer.direct.F.test4 == 5));
sei = length(find(answer.direct.F.test4 == 6));
sette = length(find(answer.direct.F.test4 == 7));
otto = length(find(answer.direct.F.test4 == 8));
nove = length(find(answer.direct.F.test4 == 9));
dieci = length(find(answer.direct.F.test4 == 10));
pie([uno, due, tre, quattro, cinque, sei, sette, otto, nove, dieci])
title('Team direct: CooperHarper after no aid test')
legend('1','2','3','4', '5', '6', '7', '8', '9', '10', 'Location','SouthEastOutside')
axes(plt_2)
uno = length(find(answer.indirect.F.test4 == 1));
due = length(find(answer.indirect.F.test4 == 2));
tre = length(find(answer.indirect.F.test4 == 3));
quattro = length(find(answer.indirect.F.test4 == 4));
cinque = length(find(answer.indirect.F.test4 == 5));
sei = length(find(answer.indirect.F.test4 == 6));
sette = length(find(answer.indirect.F.test4 == 7));
otto = length(find(answer.indirect.F.test4 == 8));
nove = length(find(answer.indirect.F.test4 == 9));
dieci = length(find(answer.indirect.F.test4 == 10));
pie([uno, due, tre, quattro, cinque, sei, sette, otto, nove, dieci])
title('Team indirect: CooperHarper after no aid test')
legend('1','2','3','4', '5', '6', '7', '8', '9', '10', 'Location','SouthEastOutside')
saveas(gcf,'PieAnswersFtest4','jpg')
