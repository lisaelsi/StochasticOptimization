function selectedIndividualIndex = TournamentSelect(fitnessList, tournamentProbability, tournamentSize);

% ---- 1. Select individuals ----
% Store fitness value and original index

tournamentParticipants = selectTournamentParticipants(fitnessList, tournamentSize);

% ---- 1. Sort list of selected individuals ----

sortedParticipantList = sortParticipants(tournamentParticipants);

% ---- 3. Perform tournament ----

for j = 1:tournamentSize
    r = rand;
    if r < tournamentProbability
        selectedIndividualIndex = sortedParticipantList(2,j);
        break
    end
    selectedIndividualIndex = sortedParticipantList(2, tournamentSize);
end



function sortedList = sortParticipants(participants)
    
    transposeParticipants = participants';
    sortedList = sortrows(transposeParticipants, "descend")';
     
end


function participants = selectTournamentParticipants(fitnessList, tournamentSize)
    participants = size(2, tournamentSize);
    populationSize = size(fitnessList,2);

    for i = 1:tournamentSize
       randomIndex = 1 + fix(populationSize * rand);
       participants(1,i) = fitnessList(randomIndex);
       participants(2,i) = randomIndex;
    end


end

end