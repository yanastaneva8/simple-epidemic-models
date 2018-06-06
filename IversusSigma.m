%% Lab 1 ID: 2019862s
%% Question 1g

% This produces a plot of I versus sigma, where
% sigma=[0,1], e=0.0012, Ro=3.5, and I is given
% by the expression defined in Question 1d. Observe
% that if sigma>0.3, the infection increases rapidly,
% that is, if more than 1/3 of the population is 
% infected, the infection is stable. 

e = 0.0012;
hold on
for i=0:9
    ro=1.5+i*0.5;
    I=e*(2*ro.*sigma).^(-1).*((((1-ro.*sigma)./e+sigma).^2.+...
    +4*(ro-1).*sigma./e).^(1/2)-((1-ro.*sigma).*e^(-1)+sigma));
figure
plot(sigma,I,'k')
xlabel('\sigma')
ylabel('Infected population I')
disp(ro);
disp(sigma);
end
