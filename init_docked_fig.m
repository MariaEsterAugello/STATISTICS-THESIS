%% init docked figures
desktop = com.mathworks.mde.desk.MLDesktop.getInstance;
myGroup = desktop.addGroup('ICARO datalog figures');
desktop.setGroupDocked('ICARO datalog figures', 0);
bakWarn = warning('off','MATLAB:HandleGraphics:ObsoletedProperty:JavaFrame');

%%inspired by:
% https://it.mathworks.com/matlabcentral/answers/157355-grouping-figures-separately-into-windows-and-tabs
%
%
% desktop = com.mathworks.mde.desk.MLDesktop.getInstance;
% myGroup = desktop.addGroup('myGroup');
% desktop.setGroupDocked('myGroup', 0);
% myDim   = java.awt.Dimension(4, 2);   % 4 columns, 2 rows
% % 1: Maximized, 2: Tiled, 3: Floating
% desktop.setDocumentArrangement('myGroup', 2, myDim)
% figH    = gobjects(1, 8);
% bakWarn = warning('off','MATLAB:HandleGraphics:ObsoletedProperty:JavaFrame');
% for iFig = 1:8
%    figH(iFig) = figure('WindowStyle', 'docked', ...
%       'Name', sprintf('Figure %d', iFig), 'NumberTitle', 'off');
%    drawnow;
%    pause(0.02);  % Magic, reduces rendering errors
%    set(get(handle(figH(iFig)), 'javaframe'), 'GroupName', 'myGroup');
%    plot(1:10, rand(1, 10));
% end
% warning(bakWarn);


