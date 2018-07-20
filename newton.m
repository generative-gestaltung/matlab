function y = f1(x)
  y = 3*x*x*x - 2*x*x + x + 3 
end

function y = dF1(x)
  y = 9*x*x - 4*x
end

function [ns] = newton (F, dF, x0, tol, n)

  res = [x0]
  for i=1:n
    xnext = res(end) - F(res(end)) / dF(res(end))
    res = [res:xnext]
  end
end





