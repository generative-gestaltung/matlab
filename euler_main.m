vmax = 0.202;
Km = 0.0818;

T = 0.1;
N = 100;

t_k = 0;
x_k = 0;


tau = T/N;
results = [];

for k=1:N
    t_k_1 = k*tau;
    
    ff  = @(b) b-x_k-tau*((-vmax*b/(Km+b))+f(t_k_1));
    dFF = @(b) 1 - tau*((-vmax*(Km-b)+vmax*b)/(Km+b)^2);
    
    [iteration, x_k_1] = newton(ff,dFF,t_k_1,0.01,20);
    x_k = x_k_1;
    
    %figure();
    %plot(iteration);
    
    results = [results, x_k];
end

plot(results);