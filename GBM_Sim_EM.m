% Euler GBM
clear all
rng('default');
%parameters
mu = 0.02; sigma= 0.15; X0 = 25;
T = 20; N = 100; M=2500; dt = T/M; mu_bar = mu-0.5*sigma^2;

X = ones(M,N)*X0;
dW = sqrt(dt)*randn(M,N);
for i = 2:M
X(i,:) = X(i-1, :).*(1 + dt*mu + sigma*dW(i,:));
end
tnew=ones(M,1)*dt;
tc=cumsum(tnew);
EX=X0*exp(tc*mu);
plot(tc, X); 
xlabel('Time', 'FontSize', 14);
ylabel('Wealth', 'FontSize', 14);
title('GBM trajectories', 'FontSize', 15);
