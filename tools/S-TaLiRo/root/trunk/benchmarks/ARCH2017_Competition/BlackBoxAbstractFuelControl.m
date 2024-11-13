 % scipt created for S-Taliro to search the system parameters 

% Xiaoqing Jin
% Created: 9/19/2013

% the BlackBox interface is fixed. 
function [T, XT, YT, LT, CLG, Guards] = BlackBoxAbstractFuelControl(X0,simT,TU,U)
global inputTimeseries;
LT = [];
CLG = [];
Guards = [];

model = 'AbstractFuelControl_M1';

inputTimeseries = Simulink.SimulationData.Dataset;
% Change the parameter values in the model
% set_param([model,'/Pedal Angle (deg)'],'Amplitude',num2str(X0(1)));
% set_param([model,'/Pedal Angle (deg)'],'Period',num2str(X0(2)));

%simopt = simget(model);
%simopt = simset(simopt,'SaveFormat','Array'); % Replace input outputs with structures
%[T, XT, YT] = sim(model,[0 simT],simopt,[TU U]);

% Run the model
simIn = Simulink.SimulationInput(model);
simIn = simIn.setModelParameter('SaveState', 'on', 'StateSaveName', 'xout');
simIn = simIn.setModelParameter('StopTime', num2str(simT));

TU = double(TU);
U = double(U);
inputTimeseries1 = timeseries(U(:, 1), TU);
inputTimeseries2 = timeseries(U(:, 2), TU);
inputTimeseries = inputTimeseries.add(inputTimeseries1);
inputTimeseries = inputTimeseries.add(inputTimeseries2);
inputTimeseries{1}.Name = 'Engine Speed (rpm)';
inputTimeseries{2}.Name = 'Throttle angle';
simIn = simIn.setExternalInput(inputTimeseries);
simIn = simulink.compiler.configureForDeployment(simIn);
out = sim(simIn);

% Check for output and extract results
T = find(out, 't');  % Access output directly
XT = find(out, 'xout');
YT = find(out, 'y'); % Reshape to 501x1



end