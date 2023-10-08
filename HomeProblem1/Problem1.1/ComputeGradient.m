% This function should return the gradient of f_p = f + penalty.
% You may hard-code the gradient required for this specific problem.

function gradF = ComputeGradient(x,mu)

x1 = x(1);
x2 = x(2);

gradientX1 = 2*(x1-1)+4*mu*x1*(x1^2+x2^2-1);
gradientX2 = 4*(x2-2)+4*mu*x2*(x1^2+x2^2-1);

gradF = [gradientX1 gradientX2];



