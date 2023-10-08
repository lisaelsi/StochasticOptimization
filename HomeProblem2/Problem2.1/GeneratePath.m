function path = GeneratePath(pheromoneLevel, visibility, alpha, beta)
    
    numberOfCities = size(pheromoneLevel, 1);

    randomIndex = randi(numberOfCities);
    
    startCity = randomIndex;
    path = startCity;

    for i = 2:numberOfCities
        
        nextCity = GetNode(path, pheromoneLevel, visibility, alpha, beta);        
       
        path(i) = nextCity;

    end

end
