clear;
close all;
bdclose('all');

%% setup parameters
Ts = 0.1;           % simulation duration in sec
T = 40;             % simulation time

max_Fs = 4.01;      % maximum steam flowrate
min_Fs = 3.99;
change_freq = 5;    % input signal change value every change_freq sec

P_step = 2;         % ref pressure step time
P_init = 90;        % initial ref pressure
P_final = 87;       % final ref pressure
P_terminate = 100;    % error to terminate episode
time_tol = 3;

mdl = 'SC_RL';
agentblk = [mdl, '/RL Agent'];

seed = 0;


%% setup environment
% Creating an environment model includes action, obervation
% observation
obsInfo = rlNumericSpec([5 1],...
    'LowerLimit', -inf*ones(5,1),...
    'UpperLimit', inf*ones(5,1));
obIsnfo.Name = 'observations';
obsInfo.Description = 'T, Tcw, Q, P, P_error';
numObservations = obsInfo.Dimension(1);

% action
actInfo = rlNumericSpec([1 1]);
% actInfo.LowerLimit = -1200;
% actInfo.UpperLimit = 500;
actInfo.Name = 'Fcw';
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
%     layerNormalizationLayer('Name','CriticNormal')
    fullyConnectedLayer(128,'Name','CriticStateFC1')
    reluLayer('Name','CriticStateRelu1')
    fullyConnectedLayer(64,'Name','CriticStateFC2')
%     reluLayer('Name','CriticStateRelu2')
%     fullyConnectedLayer(64,'Name','CriticStateFC3')
    ];
actionPath1 = [
    featureInputLayer(numActions,'Normalization','none','Name','action')
    fullyConnectedLayer(128,'Name','CriticActionFC1')
    reluLayer('Name','CriticActionRelu1')
    fullyConnectedLayer(64,'Name','CriticActionFC2')
%     reluLayer('Name','CriticActionRelu2')
%     fullyConnectedLayer(64,'Name','CriticActionFC3')
    ];

commonPath1 = [
    additionLayer(2,'Name','add')
    reluLayer('Name','CriticCommonRelu1')
    fullyConnectedLayer(32,'Name','CriticCommonFC1')
    reluLayer('Name','CriticCommonRelu2')
%     fullyConnectedLayer(128,'Name','CriticCommonFC2')
%     reluLayer('Name','CriticCommonRelu3')
%     fullyConnectedLayer(64,'Name','CriticCommonFC3')
%     reluLayer('Name','CriticCommonRelu4')
    fullyConnectedLayer(1,'Name','CriticOutput')
%     regressionLayer('Name','CriticRegression')
    ];

criticNet = layerGraph(statePath1);
criticNet = addLayers(criticNet,actionPath1);
criticNet = addLayers(criticNet,commonPath1);
criticNet = connectLayers(criticNet,'CriticStateFC2','add/in1');
criticNet = connectLayers(criticNet,'CriticActionFC2','add/in2');

criticOptions = rlRepresentationOptions('Optimizer','adam','LearnRate',1e-4,... 
                                        'GradientThreshold',1,'L2RegularizationFactor',2e-4);
                                    
critic1 = rlQValueRepresentation(criticNet,obsInfo,actInfo,...
    'Observation',{'observation'},'Action',{'action'},criticOptions);

critic2 = rlQValueRepresentation(criticNet,obsInfo,actInfo,...
    'Observation',{'observation'},'Action',{'action'},criticOptions);


% create a network to be used as underlying actor approximator
actorNet = [
    featureInputLayer(numObservations,'Normalization','none','Name','observation')
%     layerNormalizationLayer('Name','ActorNormal')
    fullyConnectedLayer(128,'Name','ActorFC1')
    reluLayer('Name','ActorRelu1')
    fullyConnectedLayer(64,'Name','ActorFC2')
    reluLayer('Name','ActorRelu2')
    fullyConnectedLayer(32,'Name','ActorFC3')
    reluLayer('Name','ActorRelu3')
    fullyConnectedLayer(numActions,'Name','ActorFC4')                       
    tanhLayer('Name','ActorTanh1')
    fullyConnectedLayer(numActions,'Name','Action')
%     scalingLayer('Name','ActorScaling','Scale',0.765, 'Bias',0.895)
%     regressionLayer('Name','ActorRegression')
    ];

actorOptions = rlRepresentationOptions('Optimizer','adam','LearnRate',1e-4,...
                                       'GradientThreshold',1,'L2RegularizationFactor',1e-5);
                                   
actor  = rlDeterministicActorRepresentation(actorNet,obsInfo,actInfo,...
    'Observation',{'observation'},'Action',{'Action'},actorOptions);

% agent creation
agentOptions = rlTD3AgentOptions(...
    'SampleTime',Ts,...
    'DiscountFactor',0.95,...
    'PolicyUpdateFrequency',1,...
    'TargetUpdateFrequency',2,...
    'TargetSmoothFactor',0.005,...
    'MiniBatchSize',128,...
    'NumStepsToLookAhead',20);


agent = rlTD3Agent(actor,[critic1 critic2],agentOptions);

%% train agent
% stop option: EpisodeCount AverageSteps AverageReward
maxepisodes = 5000; 
maxsteps = ceil(T/Ts);
window_length = 20;

trainOpts = rlTrainingOptions(...
    'MaxEpisodes', maxepisodes, ...
    'MaxStepsPerEpisode', maxsteps, ...
    'ScoreAveragingWindowLength',window_length, ...
    'StopTrainingCriteria','EpisodeCount',...
    'StopTrainingValue', maxepisodes,...
    'Verbose', false,...
    'Plots','training-progress',...
    'UseParallel',false);

doTraining = true;
if doTraining
    % Train the agent.
    trainingStats = train(agent,env,trainOpts);
%     save("SC_DDPG_Agent.mat","agent")
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

p_ref = experiences.SimulationInfo.logsout.getElement('p_ref').Values.Data;
p_ref = reshape(p_ref, [steps,1]);
P = experiences.SimulationInfo.logsout.getElement('<P>').Values.Data;
p_error = experiences.SimulationInfo.logsout.getElement('p_error').Values.Data;
RL_action = experiences.SimulationInfo.logsout.getElement('RL_action').Values.Data;
RL_action = reshape(RL_action, [steps,1]);

% plotting
figure(1);
subplot(3,1,1)
plot(time,p_ref, time, P)
title('Pressure level')
legend('P_{ref}','P_{out}')
xlabel('time (s)') 
ylabel('Pressure') 
grid on

subplot(3,1,2)
plot(time,p_error)
title('Pressure error')
xlabel('time (s)') 
ylabel('Error Pressure') 
grid on

subplot(3,1,3)
plot(time,RL_action)
title('RL agent action')
xlabel('time (s)') 
ylabel('Fcw: Coolong Water Flowrate') 
grid on

%% reset function
function in = localResetFcn(in)

in = setVariable(in,'seed', randi(1000,1,1));  % seed to generate random input Fs

end
