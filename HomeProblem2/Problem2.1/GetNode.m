function node = GetNode(tabuList, pheromoneLevel, visibilityMatrix, alpha, beta)

    numberOfCities = size(pheromoneLevel, 1);
    probabilities = zeros(numberOfCities, 1);
    currentCity = tabuList(end);
    
    denominator = CalculateDenominator(tabuList, pheromoneLevel, visibilityMatrix, alpha, beta, currentCity);

    probabilities = CalculateProbabilities(probabilities, tabuList, ...
                    currentCity, visibilityMatrix, alpha, beta, numberOfCities, ...
                    denominator, pheromoneLevel);

    % Roulette wheel select node
    r = rand;
    for i = 1:length(probabilities)
      probabilitySum = sum(probabilities(1:i));
      
      if probabilitySum > r
         node = i;
         break
      end

    end  

end