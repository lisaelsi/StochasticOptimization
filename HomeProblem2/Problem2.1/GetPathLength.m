function pathLength = GetPathLength(path,cityLocation)

    numberOfCitiesInPath = length(path);
    currentCity = path(1);
    coordinatesCurrentCity = cityLocation(currentCity,:);

    pathLength = 0;
    
    for i = 2:numberOfCitiesInPath

        nextCity = path(i);
        coordinatesNextCity = cityLocation(nextCity,:);

        lengthOfEdge = norm(coordinatesNextCity-coordinatesCurrentCity);
        
        pathLength = pathLength + lengthOfEdge;

        coordinatesCurrentCity = coordinatesNextCity;
         
    end

    nextCity = path(1);
    coordinatesNextCity = cityLocation(nextCity,:);

    lengthOfEdge = norm(coordinatesNextCity-coordinatesCurrentCity);
        
    pathLength = pathLength + lengthOfEdge;

end
