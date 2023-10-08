% First compute the function value, then compute the fitness
% value; see also the problem formulation.

function fitness = EvaluateIndividual(x)
    
    x1 = x(1);
    x2 = x(2);

    factor1 = 1.5 - x1 + x1*x2;
    factor2 = 2.25 - x1 + x1*x2^2;
    factor3 = 2.625 - x1 + x1 * x2^3;

    g = factor1^2 + factor2^2 + factor3^2;
    
    fitness = (g + 1)^-1;
end

% EvaluateIndividual: This function should take the vector of variables 
% (x) as input, and should return the (note!) fitness value, which in this 
% case should be taken as (g(x1, x2) + 1)−1, keeping in mind that g(x1, x2)
% is clearly non-negative but might (perhaps) take the value 0. You should
% hardcode the function in EvaluateIndividual (i.e. you should not place
% the function in a separate file) and then also hardcode the computation 
% of the fitness value. Check carefully that you enter the function
% g(x1, x2) correctly!
