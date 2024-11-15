clear;
close all;
bdclose('all');

%% setup parameters
Ts = 0.1;           % simulation duration in sec
T = 30;             % simulation time
t_gap = 1.4;        % time gap to calculate safe distance
D_default = 10;     % default distance
v_set = 30;         % driver-set velocity for ego car

vmax_ego = 50;      % ego car minimum/maximum velocity
vmin_ego = -50;

amin_ego = -3;      % ego car minimum/maximum acceleration
amax_ego = 2;       

x0_lead = 70;       % lead car initial velocity and position
v0_lead = 35;
a_lead_seed = randi(10000);        % seed to generate random input a_lead

x0_ego = 10;        % ego car initial velocity and position
v0_ego = 25;

amin_lead = -1;     % lead car minimum/maximum acceleration
amax_lead = 1;

mdl = 'RL_ACC';
agentblk = [mdl, '/RL Agent'];

% input to simulink: take a_lead from a uniform distribution
change_freq = 2;    % input signal change value every change_freq sec
use_MPC = false;    % use mpc output as complement in reward function

%% setup environment
% Creating an environment model includes action, obervation
% observation
obsInfo = rlNumericSpec([5 1],...
    'LowerLimit', -inf*ones(5,1),...
    'UpperLimit', inf*ones(5,1));
obIsnfo.Name = 'observations';
obsInfo.Description = 'v_set, v_ego, d_rel, v_rel, d_safe';
numObservations = obsInfo.Dimension(1);

% action
actInfo = rlNumericSpec([1 1]);
actInfo.LowerLimit = amin_ego;
actInfo.UpperLimit = amax_ego;
actInfo.Name = 'a_ego';
numActions = actInfo.Dimension(1);

% Build the environment interface object.
env = rlSimulinkEnv(mdl,agentblk,obsInfo,actInfo);

% Set a custom reset function that randomizes the reference values for the model.
env.ResetFcn = @(in)localResetFcn(in);

% Fix the random generator seed for reproducibility
rng(0);

%% create Deep deterministic policy gradient reinforcement learning agent (DDPG)
% create a network to be used as underlying critic approximator
statePath1 = [
    featureInputLayer(numObservations,'Normalization','none','Name','observation')
    fullyConnectedLayer(128,'Name','CriticStateFC1')
    reluLayer('Name','CriticStateRelu1')
    fullyConnectedLayer(64,'Name','CriticStateFC2')
    ];
actionPath1 = [
    featureInputLayer(numActions,'Normalization','none','Name','action')
    fullyConnectedLayer(64,'Name','CriticActionFC1')
    ];
commonPath1 = [
    additionLayer(2,'Name','add')
    reluLayer('Name','CriticCommonRelu1')
    fullyConnectedLayer(1,'Name','CriticOutput')
    ];

criticNet = layerGraph(statePath1);
criticNet = addLayers(criticNet,actionPath1);
criticNet = addLayers(criticNet,commonPath1);
criticNet = connectLayers(criticNet,'CriticStateFC2','add/in1');
criticNet = connectLayers(criticNet,'CriticActionFC1','add/in2');

criticOptions = rlRepresentationOptions('Optimizer','adam','LearnRate',1e-3,... 
                                        'GradientThreshold',1,'L2RegularizationFactor',2e-4);
                                    
critic1 = rlQValueRepresentation(criticNet,obsInfo,actInfo,...
    'Observation',{'observation'},'Action',{'action'},criticOptions);

critic2 = rlQValueRepresentation(criticNet,obsInfo,actInfo,...
    'Observation',{'observation'},'Action',{'action'},criticOptions);


% create a network to be used as underlying actor approximator
statePath = [
    featureInputLayer(numObservations,'Normalization','none','Name','observation')
    fullyConnectedLayer(128, 'Name','commonFC1')
    reluLayer('Name','CommonRelu')];
meanPath = [
    fullyConnectedLayer(64,'Name','MeanFC1')
    reluLayer('Name','MeanRelu')
    fullyConnectedLayer(numActions,'Name','Mean')
    ];
stdPath = [
    fullyConnectedLayer(64,'Name','StdFC1')
    reluLayer('Name','StdRelu')
    fullyConnectedLayer(numActions,'Name','StdFC2')
    softplusLayer('Name','StandardDeviation')];

concatPath = concatenationLayer(1,2,'Name','GaussianParameters');

actorNetwork = layerGraph(statePath);
actorNetwork = addLayers(actorNetwork,meanPath);
actorNetwork = addLayers(actorNetwork,stdPath);
actorNetwork = addLayers(actorNetwork,concatPath);
actorNetwork = connectLayers(actorNetwork,'CommonRelu','MeanFC1/in');
actorNetwork = connectLayers(actorNetwork,'CommonRelu','StdFC1/in');
actorNetwork = connectLayers(actorNetwork,'Mean','GaussianParameters/in1');
actorNetwork = connectLayers(actorNetwork,'StandardDeviation','GaussianParameters/in2');

actorOptions = rlRepresentationOptions('Optimizer','adam','LearnRate',1e-3,...
                                       'GradientThreshold',1,'L2RegularizationFactor',1e-5);

actor = rlStochasticActorRepresentation(actorNetwork,obsInfo,actInfo,actorOptions,...
    'Observation',{'observation'});

% agent creation
agentOptions = rlSACAgentOptions(...
    'SampleTime',Ts,...
    'ExperienceBufferLength',1e6,...
    'DiscountFactor',0.99,...
    'UseDeterministicExploitation',false,...
    'MiniBatchSize',128);

agent = rlSACAgent(actor,[critic1 critic2],agentOptions);

%% train agent
% stop option: EpisodeCount AverageSteps AverageReward
maxepisodes = 5000; 
maxsteps = ceil(T/Ts);
window_length = 20;

trainOpts = rlTrainingOptions(...
    'MaxEpisodes', maxepisodes, ...
    'MaxStepsPerEpisode', maxsteps, ...
    'ScoreAveragingWindowLength',window_length, ...
    'StopTrainingCriteria','AverageReward',...
    'StopTrainingValue', maxsteps*0.95,...
    'Verbose', false,...
    'Plots','training-progress',...
    'UseParallel',false);

doTraining = true;
if doTraining
    % Train the agent.
    trainingStats = train(agent,env,trainOpts);
%     save("preTrainedAgent.mat","agent")
else
%     agent = load('preTrainedAgent.mat');
%     agent = agent.agent;
end

%% simulation & plotting 
% control_switch = 0;
% simulation option
simOpts = rlSimulationOptions('MaxSteps',maxsteps,'StopOnError','on');
% get results
experiences = sim(env,agent,simOpts);
totalReward = sum(experiences.Reward);

% extract signals from simulation results
time = experiences.SimulationInfo.tout;
steps = size(time);
steps = steps(1);
d_safe = experiences.SimulationInfo.logsout.getElement('d_safe').Values.Data;
d_safe = reshape(d_safe, [steps,1]);
d_rel = experiences.SimulationInfo.logsout.getElement('d_rel').Values.Data;
d_rel = reshape(d_rel, [steps,1]);
MPC_a_ego = experiences.SimulationInfo.logsout.getElement('MPC_a_ego').Values.Data;
action_a_ego = experiences.SimulationInfo.logsout.getElement('action_a_ego').Values.Data;
action_a_ego = reshape(action_a_ego, [steps,1]);
a_lead = experiences.SimulationInfo.logsout.getElement('a_lead').Values.Data;
a_lead = reshape(a_lead, [steps,1]);
v_lead = experiences.SimulationInfo.logsout.getElement('v_lead').Values.Data;
v_lead = reshape(v_lead, [steps,1]);
v_ego = experiences.SimulationInfo.logsout.getElement('v_ego').Values.Data;
v_ego = reshape(v_ego, [steps,1]);
v_set_sim =  experiences.SimulationInfo.logsout.getElement('v_set').Values.Data;
v_set_sim = v_set_sim(1);
v0_lead_sim =  experiences.SimulationInfo.logsout.getElement('v0_lead').Values.Data;
v0_lead_sim = v0_lead_sim(1);
x0_lead_sim =  experiences.SimulationInfo.logsout.getElement('x0_lead').Values.Data;
x0_lead_sim = x0_lead_sim(1);

% plotting
figure(1);
subplot(3,1,1)
plot(time,d_rel, time, d_safe)
title('Relative distance Vs Safe distance')
legend('d_{rel}','d_{safe}')
xlabel('time (s)') 
ylabel('Distance (m)') 
grid on

subplot(3,1,2)
plot(time,a_lead, time, MPC_a_ego, time,action_a_ego)
title('Leading car, MPC and Agent acceleration')
legend('a_{lead}','a_{MPC}', 'a_{agent}')
xlabel('time (s)') 
ylabel('Acceleration (m/s^{2})') 
grid on

subplot(3,1,3)
plot(time,v_lead, time, v_ego)
title(['Velocity v_{set}= ', num2str(v_set_sim)])
legend('v_{lead}','v_{ego}')
xlabel('time (s)') 
ylabel('Velocity (m/s') 
grid on

%% training progress info
episodes = trainingStats.EpisodeIndex;
episode_reward = trainingStats.EpisodeReward;
episode_step = trainingStats.EpisodeSteps;
episode_avg_reward = trainingStats.AverageReward;
episode_avg_step = trainingStats.AverageSteps;

% figure(2);
% subplot(2,1,1)
% plot(episodes,episode_avg_reward)
% title('Average Episode Reward ')
% xlabel('Episodes') 
% ylabel('Reward') 
% grid on
% 
% subplot(2,1,2)
% plot(episodes,episode_avg_step)
% title('Average Episode Step')
% xlabel('Episodes') 
% ylabel('Step') 
% grid on


%% reset function
function in = localResetFcn(in)
    % reset
    in = setVariable(in,'v_set', 20+10*rand);           % random value for user-set velocity
    in = setVariable(in,'a_lead_seed', randi(10000));   % random value for a_lead generator seed
    in = setVariable(in,'x0_lead', 60+randi(40,1,1));    % random value for lead car initial position
    in = setVariable(in,'v0_lead', 20+randi(15,1,1));    % random value for lead car initial velocity
end