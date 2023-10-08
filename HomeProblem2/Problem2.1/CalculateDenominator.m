function denominator = CalculateDenominator(tabuList, pheromoneLevel, visibilityMatrix, alpha, beta, currentCity)
    numberOfCities = size(pheromoneLevel, 1);
    denominator = 0;
    
    for city = 1:numberOfCities
        cityIsVisited = ismember(city, tabuList);
        if ~cityIsVisited
            denominator = denominator + ...
                pheromoneLevel(city, currentCity)^alpha... 
                * visibilityMatrix(city, currentCity)^beta;
        end
    end