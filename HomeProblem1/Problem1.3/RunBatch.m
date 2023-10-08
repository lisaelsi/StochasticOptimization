%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Parameter specifications
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

numberOfRuns = 100;                % Do NOT change
populationSize = 100;              % Do NOT change
maximumVariableValue = 5;          % Do NOT change (x_i in [-a,a], where a = maximumVariableValue)
numberOfGenes = 50;                % Do NOT change
numberOfVariables = 2;		       % Do NOT change
numberOfGenerations = 300;         % Do NOT change
tournamentSize = 2;                % Do NOT change
tournamentProbability = 0.75;      % Do NOT change
crossoverProbability = 0.8;        % Do NOT change


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Batch runs
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Define more runs here (pMut < 0.02) ...
mutationRates = [0 0.01 0.02 0.05 0.075 0.1 0.3 0.5 0.75 0.9];
%numberOfMutationRates = length(mutationRates);

for j=(1:length(mutationRates))

    mutationProbability = mutationRates(j);
    sprintf('Mutation rate = %0.5f', mutationProbability)
    maximumFitnessList = zeros(numberOfRuns,1);
    for i = 1:numberOfRuns 
     [maximumFitness, bestVariableValues]  = RunFunctionOptimization(populationSize, numberOfGenes, numberOfVariables, maximumVariableValue, tournamentSize, ...
                                           tournamentProbability, crossoverProbability, mutationProbability, numberOfGenerations);
      sprintf('Run: %d, Score: %0.10f', i, maximumFitness)
      maximumFitnessList(i,1) = maximumFitness;
    end

    avg = mean(maximumFitnessList);
    med = median(maximumFitnessList);
    std = sqrt(var(maximumFitnessList));
    sprintf('PMut = %f: Median: %0.10f, Average: %0.10f, STD: %0.10f', mutationProbability, med, avg, std)


end



% ... and here (pMut > 0.02)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Summary of results
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Add more results summaries here (pMut < 0.02) ...

%average002 = mean(maximumFitnessList002);
%median002 = median(maximumFitnessList002);
%std002 = sqrt(var(maximumFitnessList002));
%sprintf('PMut = 0.02: Median: %0.10f, Average: %0.10f, STD: %0.10f', median002, average002, std002)

% ... and here (pMut > 0.02)