function updatedInertiaWeight = UpdateInertiaWeight(inertiaWeight)

    minInertiaWeight = 0.35;
    beta = 0.99;
    
    if inertiaWeight > minInertiaWeight
        updatedInertiaWeight = inertiaWeight * beta;
    else
        updatedInertiaWeight = inertiaWeight;
    end
    

end