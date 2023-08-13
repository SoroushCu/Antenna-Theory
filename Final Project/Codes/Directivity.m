function Dir = Directivity(kd, I,N)    
    syms t l ;
    psi = kd*cos(t);
    Afvector = 0;
    for i=1:N
        Afvector  =  Afvector + I(i)*exp(1j*i*psi);
    end
    AF2 = abs(Afvector).^2;
    U = cos(t).^2.*((1+2.*sin(l).*cos(l))) + 1 - 2.*sin(l).*cos(l);
    E =  sin(t) .* AF2.*U;
    inte1 = int(E,t,0,pi);
    inte2 = int(inte1,l,0,2*pi);
    Dir = (4.*pi.*2.*N.^2)./inte2;
end