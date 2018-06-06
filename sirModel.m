%% Lab 1 ID: 2019862s
%% Question 1c

function dy = sirModel(t, y)

% This function file contains the non-dimensionalized 
% equations for the Simple SIR Model, Eqn. (5) and (6),
% with parameter values e=0.0012, R_{0}=3.5, \sigma=0.25.

% Define the parameter values
ro=3.5;
e = 0.0012;                 
sigma = 0.25;
dy=zeros(2, 1);
% Set up labels for the variables
S=y(1);
I=y(2);
% Define the equations for the ODEs
dy(1) = e - ro*S*I - e*S;
dy(2) = ro*S*I - I + sigma*ro*I*(1-S-I);
end

