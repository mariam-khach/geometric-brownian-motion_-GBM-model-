% GBM Exact Solution Simulated
clear all
rng('default');
N        = 100; %iterations
mu       = 0.2;     %drift
sigma    = 0.3;   %volatility
T        = 1      %time
M        = 250; 
dt       = T/M;   %step size       
X0       = 25;    %initial wealth
% Weiner Process Sim 
rand_num = randn(M, N); %generating N(0,1) numbers
W        = [zeros(1,N); sqrt(dt)*cumsum(rand_num)]; % discretized path

% Geometric Brownian Motion_Exact Solution
t        = (0:M)'*dt; 
X_exact  = X0*exp((mu-sigma.^2/2)*t+sigma*W);
plot(t,X_exact);
xlabel('Time','FontSize', 12);
ylabel('X(t)','FontSize',12, 'Rotation', 0);
title('Simulated Wealth');
