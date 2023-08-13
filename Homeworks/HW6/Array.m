function [theta, E_directive] = Array(N, d, alpha)
theta = 0:0.01:2*pi;

psi = (2.*pi.*d).*cos(theta)+alpha;
AF = (1./N)*abs(sin(N.*psi./2)./sin(psi./2));
E_directive=AF./max(AF);
end

