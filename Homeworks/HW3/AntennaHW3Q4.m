 theta = -pi:0.01:pi;
 kl = pi;
 kl2 = 2*pi;
 kl3 = pi/4;
rho1 = abs(sin(theta).*sinc(6*cos(theta)-6));
polarplot(theta,rho1)
set(gca,'ThetaZeroLocation','top')
set(gca,'ThetaDir','clockwise')
title('Radiation Pattern for l = 6lambda and kz=k','Interpreter','latex')
grid on
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% polarplot(theta,rho1)
% hold on
% polarplot(theta,rho2)
% hold on
% polarplot(theta,rho3)
% rlim([0 2])
% grid on
% title('Radiation Pattern for different scenarios','Interpreter','latex')



