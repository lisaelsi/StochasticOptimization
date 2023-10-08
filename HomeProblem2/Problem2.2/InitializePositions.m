function positions = InitializePositions(range, noOfParticles, noOfDimensions)

    positions = zeros(noOfParticles, noOfDimensions);

    minRange = -range;
    maxRange = range;

    for i = 1:noOfParticles
        for j = 1:noOfDimensions

            r = rand;

            positions(i,j) = minRange + r*(maxRange - minRange);

        end

    end

end
