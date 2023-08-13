function Pattern = RadiationPattern(I,kd,theta, phi,N)
    psi = kd .* cos(theta);
    for j=1:1:length(theta)
       Afvector = 0;
    for i=1:N
        Afvector  = Afvector + I(i).*exp(1j*i.*psi(j));
    end
    AF(j) = Afvector;
    end
    Pattern =AF.* sqrt(cos(theta).^2.*(1+2.*sin(phi).*cos(phi))+ 1 -2.*sin(phi).*cos(phi));
end