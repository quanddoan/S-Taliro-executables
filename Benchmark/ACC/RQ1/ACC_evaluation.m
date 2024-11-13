clear;
close all;
%bdclose('all');

%addpath('/Users/quandoan/Documents/MATLAB/AI-CPS-Benchmark/Benchmark/ACC/DRL/agent');
%addpath('/Users/quandoan/Documents/MATLAB/AI-CPS-Benchmark/Benchmark/ACC/RQ2/model');

%% setup parameters
T = 30;             % simulation duration in sec
Ts = 0.1;           % sample time
maxsteps = ceil(T/Ts)+1;


t_gap = 1.4;        % time gap to calculate safe distance
D_default = 10;     % default distance
v_set = 30;         % driver-set velocity for ego car
vmax_ego = 50;      % ego car minimum/maximum velocity
vmin_ego = -50;
amin_ego = -3;      % ego car minimum/maximum acceleration
amax_ego = 2;       
x0_lead = 70;       % lead car initial velocity and position
v0_lead = 25;
random_freq = 1;  % time period to randomly switch controllers

x0_ego = 10;        % ego car initial velocity and position
v0_ego = 25;
amin_lead = -1;     % lead car minimum/maximum acceleration
amax_lead = 1;
isTerminate = 0;       % never terminate sim in middle
use_MPC = false;
change_freq = 2;
switch_distance = 5;

% mdl = 'RL_ACC_eval';
% mdl = 'RL_ACC_hybrid_eval';
% mdl = 'RL_ACC_hybrid_random_eval';
mdl = 'ACC_T_staliro';

%% simulation & plotting 
% simulation option
sim_num = 1;               % simulation numbers

% load agent 
agent = load('ACC_DDPG_Agent_9_22.mat');
% agent = load('ACC_TD3_Agent_9_11.mat');
% agent = load('ACC_SAC_Agent_9_11.mat');
agent = agent.agent;

% file_name = 'ACC_eval_T_result';
% file_name = 'ACC_eval_DDPG_result';
% file_name = 'ACC_eval_TD3_result';
% file_name = 'ACC_eval_SAC_result';
% file_name = 'ACC_eval_hybrid_DDPG_T_result';
% file_name = 'ACC_eval_hybrid_random_DDPG_T_result';
file_name = 'ACC_eval_hybrid_average_DDPG_T_result';

control_switch = 0;         % 0: RL controller, 1: original controller
steady_threshold = 0.2;     % threshold to determine steady-state

S1_result = ones(sim_num,1);
S2_result = ones(sim_num,1);
S3_result = ones(sim_num,1);
S4_result = ones(sim_num,1);
S5_result = ones(sim_num,1);

simIn = Simulink.SimulationInput(mdl);
simIn = simIn.setModelParameter('SaveState', 'on', 'StateSaveName', 'xout');
% Set simulation parameters
simIn = simIn.setModelParameter('StopTime', num2str(T));
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

TU = 0:Ts:T;
U = sin(2 * pi * (1 / 5) * TU);  % Example input: sine wave with a period of 5 seconds
U = reshape(U, [size(TU), 1]);
% Ensure U has the same length as TU
TU = double(TU);
U = double(U);
inputTimeseries = timeseries(U, TU);  % Create a timeseries object
simIn = setExternalInput(simIn, inputTimeseries);
%disp(inputTimeseries);
%disp(inputTimeseries.Time);
%disp(inputTimeseries.Data);
simIn = simulink.compiler.configureForDeployment(simIn);
for index = 1:sim_num

    out = sim(simIn);
    v_ego = out.logsout.getElement('v_ego').Values.Data;
    step_num = length(v_ego);                  % number of samples
    v_ego = reshape(v_ego, [step_num,1]);
    d_rel = out.logsout.getElement('d_rel').Values.Data;
    d_rel = reshape(d_rel, [step_num,1]);
    
end

disp(v_ego);
disp(step_num);
disp(d_rel);