 theta = 0:0.01:pi;
 kl = pi;
 kl2 = pi/2;
 kl3 = pi/4;
rho1 = abs((cos(kl.*cos(theta)) - cos(kl))./sin(theta));
rho2 = abs((cos(kl2.*cos(theta)) - cos(kl2))./sin(theta));
rho3 = abs((cos(kl3.*cos(theta)) - cos(kl3))./sin(theta));
polarplot(theta,rho3)
set(gca,'ThetaZeroLocation','top')
set(gca,'ThetaDir','clockwise')
title('Radiation Pattern for l = lambda/8','Interpreter','latex')
rlim([0 2])
grid on
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% polarplot(theta,rho1)
% hold on
% polarplot(theta,rho2)
% hold on
% polarplot(theta,rho3)
% set(gca,'ThetaZeroLocation','top')
% set(gca,'ThetaDir','clockwise')
% rlim([0 2])
% grid on
% title('Radiation Pattern for different scenarios','Interpreter','latex')



