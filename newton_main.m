res = [];
for x=linspace(-20,20,1000)
    res = [res,f0(x)];
end

[iteration, last] = newton (@f0, @dF0, 20, 0.1, 20)

plot(linspace(-20,20,1000), res);
hold on

plot(last, f0(last), 'r*')