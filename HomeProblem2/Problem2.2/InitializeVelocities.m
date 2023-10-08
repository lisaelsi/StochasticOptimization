function velocities = InitializeVelocities(range, noOfParticles, noOfDimensions, alpha, timeStep)

    velocities = zeros(noOfParticles, noOfDimensions);

    minRange = -range;
    maxRange = range;

    for i = 1:noOfParticles
        for j = 1:noOfDimensions

            r = rand;

            velocities(i,j) = alpha * (minRange + r*(maxRange - minRange))/timeStep;
        
        end

    end

end
