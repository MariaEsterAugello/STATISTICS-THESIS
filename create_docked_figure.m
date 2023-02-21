function nfh = create_docked_figure(figure_name)
% create a docked figure, it must be called after init_docked_fig
%
nfh = figure('WindowStyle', 'docked', ...
      'Name', figure_name, 'NumberTitle', 'off');
% add to list of handles
%figH = [figH ]
drawnow;
pause(0.05);  % Magic, reduces rendering errors
set(get(handle(nfh), 'javaframe'), 'GroupName', 'FLIGHT TESTS HAPTIC AID');