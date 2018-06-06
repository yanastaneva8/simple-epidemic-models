%% Lab 1 ID: 2019862s

% This produces a plot of I versus Ro, where
% Ro=[1,6], e=0.0012, sigma = 0.25, and I is given
% by the expression defined in Question 1d. 

% Define the parameter values
ro=linspace(1,6);
e = 0.0012;
sigma = 0.25;

% The expression for I(t) as derived in Question 1d
i=e*(2*ro.*sigma).^(-1).*((((1-ro.*sigma)./e+sigma).^2.+...
    +4*(ro-1).*sigma./e).^(1/2)-...
    ((1-ro.*sigma).*e^(-1)+sigma));

% Plot the resulting graph
figure
plot(ro,i,'k')
xlabel('The reproduction number Ro')
ylabel('Infected population I')