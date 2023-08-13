 theta = -pi/2:0.01:pi/2;
 kl = pi;
 kl2 = 2*pi;
 kl3 = pi/4;
rho1 = abs(cos(theta)).*abs(sin(kl.*cos(theta)));
rho2 = abs(cos(theta).*sin(kl2.*cos(theta)));
rho3 = cos(theta).*sin(kl3.*cos(theta));
% polarplot(theta,rho3)
% set(gca,'ThetaZeroLocation','top')
% set(gca,'ThetaDir','clockwise')
% title('Radiation Pattern for h = lambda/8','Interpreter','latex')
% rlim([0 1])
% grid on
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
polarplot(theta,rho1)
hold on
polarplot(theta,rho2)
hold on
polarplot(theta,rho3)
set(gca,'ThetaZeroLocation','top')
set(gca,'ThetaDir','clockwise')
rlim([0 1])
grid on
title('Radiation Pattern for different scenarios','Interpreter','latex')



