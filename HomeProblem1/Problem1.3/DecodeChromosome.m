% Note: Each component of x should take values in [-a,a], where a = maximumVariableValue.

function x = DecodeChromosome(chromosome,numberOfVariables,maximumVariableValue);

    m = size(chromosome, 2);     % length of chromosome
    k = m/numberOfVariables;    % k bits are used for forming x_i 
    a = maximumVariableValue;   % variable range
    
    x = zeros(1, numberOfVariables);
 
    for i = 1:numberOfVariables
        offset = k * (i-1);     % to keep track off index for chromosome
        geneSum = 0;
        for j = 1:k
            geneSum = geneSum + 2^(-j) * chromosome(j + offset);
            
        end
        x(i) = -a + (2*a)/(1-2^(-k)) * geneSum;
    end
    
end
