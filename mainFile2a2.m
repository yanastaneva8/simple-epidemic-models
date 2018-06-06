%% Lab 1 ID: 2019862s
%% Question 2 a

% ODE45 is used to solve the system of ODEs 
% with vaccination and partial immunity. 
% The initial conditions are
% e = 0.0012, Ro = 3.5, sigma = 0.25, v = 0.9,
% sigmaV = 0.2, s(0)=0.99, i(0)=0.01. 
% The plot produced shows the number of
% susceptibles, S(t), and the number of
% infected, I(t).

[T, Y] = ode45(@sirModelVacImmunity, [0:0.01:500], ...
    [0.99, 0.01, 0, 0, 0]);
% disp([T,Y]);
hold on
plot(T,Y(:,2),'k--')
xlabel('Time')
ylabel('I(t), infected')
legend('I(t), infected')