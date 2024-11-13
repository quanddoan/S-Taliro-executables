function [T, XT, YT,LT, CLG, Guards] = BlackBoxLKA(X0,simT,TU,U)
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
global cur_mdl agent Ts  

global opt trials max_obj_eval;

global e1_initial  e2_initial Vx u_min u_max;


LT = [];
CLG = [];
Guards = [];

m = input('Enter vehicle mass m (kg): '); %1575;   % total vehicle mass (kg)
Iz = input('Enter yaw moment of inertia Iz (mNs^2): '); %2875;  % yaw moment of inertia (mNs^2)
lf = input('Enter longitudinal distance from center of gravity to front tires lf (m): '); %1.2;   % longitudinal distance from center of gravity to front tires (m)
lr = input('Enter longitudinal distance from center of gravity to rear tires lr (m): ');%1.6;   % longitudinal distance from center of gravity to rear tires (m)
Cf = input('Enter cornering stiffness of front tires Cf (N/rad): ');%19000; % cornering stiffness of front tires (N/rad)
Cr = input('Enter cornering stiffness of rear tires Cr (N/rad): '); %33000; % cornering stiffness of rear tires (N/rad)
 

u_min = input('Enter minimum steering angle u_min (rad): '); %-0.5;   % maximum steering angle
u_max = input('Enter maximum steering angle u_max (rad): '); %0.5;    % minimum steering angle

line_width = 3.7;   % highway lane width
avg_car_width = 2;  % average car width
max_late_dev = (line_width-avg_car_width)/2-0.1;
max_rel_yaw_ang = 0.261799; % lateral deviation tolerence
terminate_error = 1.5;

rho = 0.001;        %  curvature of the road

time = 0:Ts:15;




Vx = X0(1);          % Roll angle from wings level (rad)
e1_initial = X0(2);        % Pitch angle from nose level (rad)
e2_initial = X0(3);          % Yaw angle from North (rad)     


md = getCurvature(Vx,time);
% MPC parameters
PredictionHorizon = 10;     % MPC prediction horizon



% Change the parameter values in the model
% set_param([model,'/Pedal Angle (deg)'],'Amplitude',num2str(X0(1)));
% set_param([model,'/Pedal Angle (deg)'],'Period',num2str(X0(2)));




% Run the model
simIn = Simulink.SimulationInput(cur_mdl);
simIn = simIn.setVariable('m', m);
simIn = simIn.setVariable('Iz', Iz);
simIn = simIn.setVariable('lf', lf);
simIn = simIn.setVariable('lr', lr);
simIn = simIn.setVariable('Cf', Cf);
simIn = simIn.setVariable('Cr', Cr);
simIn = simIn.setVariable('u_min', u_min);
simIn = simIn.setVariable('u_max', u_max);
simIn = simIn.setVariable('Vx', Vx);
simIn = simIn.setVariable('Ts', Ts);
simIn = simIn.setVariable('md', md);
simIn = simIn.setVariable('e1_initial', e1_initial);
simIn = simIn.setVariable('e2_initial', e2_initial);
simIn = simIn.setModelParameter('StopTime', num2str(simT));
simIn = simulink.compiler.configureForDeployment(simIn);
out = sim(simIn);
T = out.tout;
XT = out.xout;
YT = out.yout;


%simopt = simget(cur_mdl);
%simopt = simset(simopt,'SaveFormat','Array'); % Replace input outputs with structures
%[T, XT, YT] = sim(cur_mdl);
% mdlWks = get_param(mdl,'ModelWorkspace');
% assignin(mdlWks,'T',TU')
% assignin(mdlWks,'U',U')
% simopt = simget(mdl);
% simset(simopt,'SaveFormat','Array'); % Replace input outputs with structures  % ,'MaxStep', 0.1
% [T, XT, YT] = sim(mdl,[0 simT]);
end


 
 


 