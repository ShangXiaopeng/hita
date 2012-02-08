function [Dissipation,kin_E_Sp,kin_E_Ph,up] = SpecProp(E,k,nu,u,v,w)
    kin_E_Sp = trapz(k,E);
    Dissipation = trapz(k,2*nu.*k.^2.*E'); 
    up = sqrt(1/3*(u.^2+v.^2+w.^2));
    kin_E_Ph = sum(sum(sum(3/2*up.^2)))/size(up,1)^3;
end