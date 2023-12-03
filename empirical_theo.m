%theoretical mean vs simulated mean
s1 = subplot(1,2,1);
SimMean=mean(X')';
plot(tc, [SimMean, EX],  'LineWidth',3)
xlabel('Time','FontSize', 13 ); ylabel('Mean', 'FontSize', 13)
legend('Simulated Mean','Theoretical Mean','location','best', 'FontSize', 13)
%title(s1, 'N=10^4, \mu = 0.02t^{-1}, \sigma=0.15t^{-1/2}', 'FontSize', 13)

%theoretical variance vs emp. variance
s2 = subplot(1,2,2);
VarX=X0^2*exp(tc*(2*mu+sigma^2))-EX.^2;
%h=figure('Color',[1 1 1]);
%variance from the GBM simulations
SimVar=var(X')';
plot(tc, [SimVar VarX],'LineWidth',3 )
xlabel('Time', 'FontSize', 13);ylabel('Variance', 'FontSize', 13);
legend('Simulated Variance','Theoretical Variance','location','best', 'FontSize', 13)
%title(s2, 'N=10^4, \mu = 0.02t^{-t}, \sigma=0.15t^{-1/2}', 'FontSize', 13)