
% Assuming that x min = - x max
range = 5;

maxVelocity = 5;

noOfParticles = 30;
noOfDimensions = 2;

noOfIterations = 1000;

alpha = 1;
timeStep = 1;

inertiaWeight = 1.4;  

% -------- STEP 1 - Initialization --------
%   Initialize velocity
%   Initialize positions

velocities = InitializeVelocities(range, noOfParticles, noOfDimensions, alpha, timeStep);
positions = InitializePositions(range, noOfParticles, noOfDimensions);

% -------- STEP 2 - Evaluation --------

particleBest = zeros(noOfParticles, 1) + inf;
positionParticleBest = zeros(noOfParticles, noOfDimensions);

% Initialize swarm best to highest possible
swarmBest = inf;
positionSwarmBest = zeros(1,2);

for iteration = 1:noOfIterations
    for i = 1:noOfParticles
    
        x1 = positions(i, 1);
        x2 = positions(i, 2);
        result = EvaluateParticle(x1, x2);
    
        % -------- STEP 3 - Update best position --------
        % Update particle best
        if result < particleBest(i)
            particleBest(i) = result;
            positionParticleBest(i, :) = positions(i, :);  
        end
    
        % Update swarm best
        if result < swarmBest
            swarmBest = result;
            positionSwarmBest = positions(i,:);
        end
    
    end

% -------- STEP 4 - Update velocities and positions --------
positions = UpdatePositions(positions, velocities);

inertiaWeight = UpdateInertiaWeight(inertiaWeight);

velocities = UpdateVelocities(positions, velocities, inertiaWeight, positionParticleBest, positionSwarmBest, maxVelocity);


end

disp('Best position:');
disp(positionSwarmBest);
disp('Minimum value:');
disp(swarmBest);


