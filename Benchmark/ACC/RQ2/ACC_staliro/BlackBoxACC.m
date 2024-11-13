function [T, XT, YT, LT, CLG, Guards] = BlackBoxACC(X0,simT,TU,U)
% script created for S-Taliro to simulate its input model 
% inputs:
%       X0: systems initial condition or []
%       simT: simulation time
%       TU: input time vector
%       U: input signal
% relevant outputs:
%       T: time sequence
%       XT: system states
%       YT: system outputs
%
% See also: staliro_options, Apply_Opt_GD_default, GdDoc

global cur_mdl agent G_ego inputTimeseries t_gap D_default v_set vmax_ego vmin_ego amin_ego amax_ego x0_lead v0_lead x0_ego v0_ego amin_lead amax_lead use_MPC MPC_a_ego;
global opt Ts trials max_obj_eval;


LT = [];
CLG = [];
Guards = [];

% Change the parameter values in the model
% set_param([model,'/Pedal Angle (deg)'],'Amplitude',num2str(X0(1)));
% set_param([model,'/Pedal Angle (deg)'],'Period',num2str(X0(2)));

% Run the model
%simopt = simget(cur_mdl);
%simopt = simset(simopt,'SaveFormat','Array'); % Replace input outputs with structures
%[T, XT, YT] = sim(cur_mdl,[0 simT],simopt,[TU U]);
% Run the model
simIn = Simulink.SimulationInput(cur_mdl);
simIn = simIn.setModelParameter('SaveState', 'on', 'StateSaveName', 'xout');
% Set simulation parameters
U = reshape(U, [size(TU), 1]);
% Ensure U has the same length as TU
TU = double(TU);
U = double(U);
simIn = simIn.setModelParameter('StopTime', num2str(simT));
inputTimeseries = timeseries(U, TU);

simIn = setExternalInput(simIn, inputTimeseries);
simIn = simIn.setVariable('D_default', D_default);
simIn = simIn.setVariable('v_set', v_set);
simIn = simIn.setVariable('t_gap', t_gap);
simIn = simIn.setVariable('amin_ego', amin_ego);
simIn = simIn.setVariable('amax_ego', amax_ego);
simIn = simIn.setVariable('v0_ego', v0_ego);
simIn = simIn.setVariable('v0_lead', v0_lead);
simIn = simIn.setVariable('x0_ego', x0_ego);
simIn = simIn.setVariable('x0_lead', x0_lead);
simIn = simIn.setVariable('Ts', Ts);
% Run the simulation
simIn = simulink.compiler.configureForDeployment(simIn);
out = sim(simIn);

% Check for output and extract results
T = out.tout;  % Access output directly
XT = out.xout;
YT = reshape(out.yout, [], 1); % Reshape to 501x1



% mdlWks = get_param(mdl,'ModelWorkspace');
% assignin(mdlWks,'T',TU')
% assignin(mdlWks,'U',U')
% simopt = simget(mdl);
% simset(simopt,'SaveFormat','Array'); % Replace input outputs with structures  % ,'MaxStep', 0.1
% [T, XT, YT] = sim(mdl,[0 simT]);
end


 
 


 