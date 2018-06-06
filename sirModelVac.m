%% Lab 1 ID: 2019862s
% Question 1h

function dy = sirModelVac(t,y)

%% This function takes in the current time and 
%% variable values and outputs the corresponding
%% time derivatives for the SIR Model with vaccination

% Define the parameter values
e = 0.0012;
ro = 3.5;
sigma = 0.25;
dy=zeros(2, 1);
v=0.5;

% Set up labels for the variables
S=y(1);
I=y(2);

% Define the equations for the ODEs
    dy(1) = (1-v)*e - ro*S*I - e*S;
    dy(2) = ro*S*I- I + sigma*ro*I*(1-S-I);


