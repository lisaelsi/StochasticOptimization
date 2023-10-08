function probability = CalculateProbabilities(probability, tabuList, currentCity, visibilityMatrix, alpha, beta, numberOfCities, denominator, pheromoneLevel)
    for city = 1:numberOfCities
        cityIsVisited = ismember(city, tabuList);

        if  ~cityIsVisited
            numerator = pheromoneLevel(city, currentCity)^alpha * visibilityMatrix(city, currentCity)^beta;

            probability(city) = numerator/denominator;

        else
            probability(city) = 0;
        end

    end
    
end
