function y = f(t)
    D = 0.2;
    V = 8;
    F = 0.2;
    
    a = 0.001671;
    ka = 25.11;
    ke_max = 10.21;
    ke = ke_max / (1+a*D*D);
    
    y = (ka*ke/(ka-ke)) * (F*D/V) * (exp(-ke/t)-exp(-ka/t));
end