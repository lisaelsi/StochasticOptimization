function updatedPheromoneLevel = UpdatePheromoneLevels(pheromoneLevel,deltaPheromoneLevel,rho)

    updatedPheromoneLevel = (1-rho) * pheromoneLevel + deltaPheromoneLevel;
    
    minimumPheromoneLevel = 10^(-15);
    
    updatedPheromoneLevel(updatedPheromoneLevel < minimumPheromoneLevel) = minimumPheromoneLevel;

end