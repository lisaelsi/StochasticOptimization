function deltaPheromoneLevel = ComputeDeltaPheromoneLevels(pathCollection,pathLengthCollection)
  
  pheromoneLevelSum = zeros(size(pathCollection,2));
  
  % Loop over all ants
  for k = 1 : size(pathCollection,1)

    antKPath = pathCollection(k,:);
    antKPheromones = zeros(size(pathCollection,2)); 
    antKPathLength = pathLengthCollection(k,1);   
        
        % Loop over path of ant k
        for i = 1 : size(antKPath, 2)-1   
            fromNode = antKPath(i);
            toNode = antKPath(i+1);
            antKPheromones(fromNode,toNode) = 1/antKPathLength;
        end
    
        pheromoneLevelSum = pheromoneLevelSum + antKPheromones;
  end
  
  deltaPheromoneLevel = pheromoneLevelSum;

end



