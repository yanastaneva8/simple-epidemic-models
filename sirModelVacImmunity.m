%% Lab 1 ID: 2019862s
% Question 2a

function dy = sirModelVacImmunity(t, y)

%% This function takes in the current time and 
%% variable values and outputs the corresponding
%% time derivatives for SIR Model with vaccination
%% which produces partial immunity

% Define the parameter values
e = 0.0012;
ro = 5;
sigma = 0.25;
v = 0;
sigmaV = 0.2;

dy=zeros(5, 1);

% Set up labels for the variables
S=y(1);
I=y(2);
R=y(3);
V=y(4);
IV=y(5);

% Define the equations for the ODEs
dy(1) = e-v*e - ro*S*(I+IV)- e*S;
dy(2) = ro*S*(I+IV)- I + sigma*ro*R*(I+IV);
dy(3) = -sigma*ro*R*(I+IV)+(1-e)*I-e*R;
dy(4) = v*e+(1-e)*IV-sigmaV*ro*V*(I+IV)-e*V;
dy(5) = sigmaV*ro*V*(I+IV)-IV;

end

