function visibility = GetVisibility(cityLocation)

numberOfCities = size(cityLocation, 1);

visibility = zeros(numberOfCities);

    for i = 1:numberOfCities
        coordinatesCityI = cityLocation(i,:);

        for j = i+1:numberOfCities
    
            coordinatesCityJ = cityLocation(j,:);

            distanceBetween = CalculateDistance(coordinatesCityI, coordinatesCityJ);
            
            visibilityResult = 1/distanceBetween;
    
            visibility(i,j) = visibilityResult;
            visibility(j,i) = visibilityResult;
            
        end
    end

end

function distance = CalculateDistance(coordinatesI, coordinatesJ)

    x1 = coordinatesI(1);
    y1 = coordinatesI(2);
    x2 = coordinatesJ(1);
    y2 = coordinatesJ(2);
    distance = sqrt((x2 - x1)^2 + (y2 - y1)^2);

end

