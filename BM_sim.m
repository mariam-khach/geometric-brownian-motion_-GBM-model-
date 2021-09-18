%Simulating Standad BM
clear all
rng('default');
for i =1:100
T=2; %time limits
N=2500; 
dt=T/N; %step size
W=0;
I(:,1) = [0 0];
for j=2:N
    W=W+sqrt(dt)*randn();
    I(:,j) = [j*dt W];  
end
plot(I(1,:), I(2,:)); 
hold on
xlabel('Time','FontSize', 12)
ylabel('W(t)','FontSize',12, 'Rotation', 0)
title('Simulated Brownian Paths')
end