function ret = implicitEuler (G, dG, x0, T, N)
    
    tau = T / N;
    for k=1:N
        t_k_1 = k*tau;
    
        G  = @(b) b-x_k-tau*((-vmax*b/(Km+b))+f(t_k_1));
        dG = @(b) 1 - tau*((-vmax*(Km-b)+vmax*b)/(Km+b)^2);
        [iterations, x_k_1] = newton(G, dG, t_k_1, 0.01, 20);
        x_k = x_k_1;
    
    end
       
    ret = x_k;
end

