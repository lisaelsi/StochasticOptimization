function updatedPositions = UpdatePositions(positions, velocities)

    timeStep = 1;
    noOfParticles = size(positions, 1);
    noOfDimensions = size(positions, 2);
    updatedPositions = zeros(noOfParticles, noOfDimensions);
    
    for i = 1:noOfParticles
        for j = 1:noOfDimensions
            updatedPositions(i, j) = positions(i,j) + velocities(i,j) * timeStep;
        end
    end

end

