%% ANOVA SUI LEARNING STEPS
%array degli step 1
%direct
firstColumn = learning.direct.First';
%indirect
secondColumn = learning.indirect.First';

tbl = [firstColumn secondColumn];
aov1 = anova1(tbl, aids);
grid on 
ylim = [0 100];
hold on
plot(1:length(tbl(1,:)),mean(tbl), 'dg')  % % Overlay the mean as green diamonds x-axis is the intergers of position
legend({'mean'})
hold off
saveas(gcf,'aov1','jpg')
if aov1 < 0.05
    fprintf('first learning step test is valid\n')
end
% create boxplot equals to anova
% create_docked_figure('learningStepFirst')
% boxplot(tbl, aids, 'notch', 'on')
% ylim = [0 100];
% title('comparison learning effect at first ');
% xlabel = ('haptic aid');
% ylabel = ('error training - error test strong help');
% grid on
[h1,p1] = ttest2(firstColumn,secondColumn); 

%array degli step 2 
%direct
firstColumn = learning.direct.Second';
%indirect
secondColumn = learning.indirect.Second';

tbl = [firstColumn secondColumn];
aov2 = anova1(tbl, aids);
%set(gca, 'YTickLabel', {'error test strong help - error test light help'})
grid on 
hold on
plot(1:length(tbl(1,:)),mean(tbl), 'dg')  % % Overlay the mean as green diamonds x-axis is the intergers of position
legend({'mean'})
hold off
saveas(gcf,'aov2','jpg')
if aov2 < 0.05
    fprintf('second learning step test is valid\n')
end
[h2,p2] = ttest2(firstColumn,secondColumn); 


%array degli step 3
%direct
firstColumn = learning.direct.Third';
%indirect
secondColumn = learning.indirect.Third';

tbl = [firstColumn secondColumn];
aov3 = anova1(tbl, aids);
ylabel = ('error test light aid - error test no Aid');
grid on 
hold on
plot(1:length(tbl(1,:)),mean(tbl), 'dg')  % % Overlay the mean as green diamonds x-axis is the intergers of position
legend({'mean'})
hold off
saveas(gcf,'aov3','jpg')
if aov3 < 0.05
    fprintf('third learning step test is valid\n')
end
[h3,p3] = ttest2(firstColumn,secondColumn); 


%array degli step 3bis
%direct
firstColumn = learning.direct.ThirdBis';
%indirect
secondColumn = learning.indirect.ThirdBis';

tbl = [firstColumn secondColumn];
aov3Bis = anova1(tbl, aids);
ylabel = ('error test trining - error test light aid');
grid on 
hold on
plot(1:length(tbl(1,:)),mean(tbl), 'dg')  % % Overlay the mean as green diamonds x-axis is the intergers of position
legend({'mean'})
hold off
saveas(gcf,'aov3','jpg')
if aov3Bis < 0.05
    fprintf('thirdBis learning step test is valid\n')
end
[h3Bis,p3Bis] = ttest2(firstColumn,secondColumn); 


%array degli step All
%direct
firstColumn = learning.direct.All';
%indirect
secondColumn = learning.indirect.All';

tbl = [firstColumn secondColumn];
aov4 = anova1(tbl, aids);
ylabel = ('error test training - error test no Aid');
grid on 
hold on
plot(1:length(tbl(1,:)),mean(tbl), 'dg')  % % Overlay the mean as green diamonds x-axis is the intergers of position
legend({'mean'})
hold off
saveas(gcf,'aov4','jpg')
if aov4 < 0.05
    fprintf('from first to fourth, leaning step test is valid\n')
end
[hAll,pAll] = ttest2(firstColumn,secondColumn); 
