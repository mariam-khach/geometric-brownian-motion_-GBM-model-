% Euler RGBM
clear all
rng('default');
%parameters
mu = 0.02; sigma= 0.15; X0 = 25; mu_bar = mu-0.5*sigma^2;
T = 20; N = 10; M=2500; dt = T/M; 
tau= 0.2; %reallocation parameter
X        = ones(M,N)*X0;
%Z       = ones(M,N)*X0;
dW = sqrt(dt)*randn(M,N);
for i  = 2:M
X(i,:) = X(i-1,:)+X(i-1,:).*(mu*dt+sigma*dW(i,:))-tau*(X(i-1,:)-mean(X(i-1,:)))*dt; %RGBM
%Z(i,:) = Z(i-1,:)+Z(i-1,:).*(mu*dt+sigma*dW(i,:)); %GBM
end
tnew   = ones(M,1)*dt;
tc     = cumsum(tnew);
plot(tc, X); 
xlabel('Time', 'FontSize', 14);
ylabel('Wealth', 'FontSize', 14);
title('RGBM trajectories', 'FontSize', 15);
