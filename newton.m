function [iteration, last] = newton (F, dF, x0, tol, n)

  iteration = x0;
  %dF(res(end))
  for i=1:n
    dF(iteration(end));
    xnext = iteration(end) - (F(iteration(end)) / dF(iteration(end)));
    if (abs(xnext-iteration(end)) < tol) 
        last = iteration(end);
        return 
    end
    iteration = [iteration,xnext];
  end
  
   last = iteration(end);
end



