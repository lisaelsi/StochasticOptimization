function updatedVelocities = UpdateVelocities(positions, velocities, inertiaWeight, particleBest, swarmBest, maxVelocity)

    noOfParticles = size(velocities, 1);
    noOfDimensions = size(velocities, 2);

    c1 = 2;
    c2 = 2;
    timeStep = 1;
    
    updatedVelocities = zeros(noOfParticles, noOfDimensions);

    for i = 1:noOfParticles
        for j = 1:noOfDimensions
            
            r = rand;
            q = rand;

            inertiaTerm = inertiaWeight * velocities(i,j);
            c1Term = c1 * q * (particleBest(i,j) - positions(i,j))/timeStep;
            c2Term = c2 * r * (swarmBest(j) - positions(i,j))/timeStep;

            updatedVelocity = inertiaTerm + c1Term + c2Term;

            updatedVelocities(i,j) = min(abs(updatedVelocity), maxVelocity) * sign(updatedVelocity);

        end
    end

end