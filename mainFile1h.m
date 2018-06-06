%% Lab 1 ID: 2019862s
% Question 1h
% 
% ODE45 is used to solve the system of ODEs 
% with vaccination. The initial conditions are
% e = 0.0012, Ro = 3.5, sigma = 0.25. 
% The plot produced shows the number of
% susceptibles, S(t), and the number of
% infected, I(t).

[T, Y] = ode45(@sirModelVac, [0:0.01:500], [0.99, 0.01]);
%disp([T,Y]);
plot(T,Y(:,1),'k')
hold on
plot(T,Y(:,2),'k--')
xlabel('Time')
ylabel('Population dynamics with vaccination')
legend('S(t), susceptibles', 'I(t), infected')

