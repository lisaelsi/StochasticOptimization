function Contour()

    range = 5.0;
    delta = 0.01;
    
    limit = fix(2*range/delta) + 1;

    [x, y] = meshgrid(-range:delta:range, -range:delta:range);

    z = zeros(limit, limit);
    a = 0.01;
    for i = 1:limit
        for j = 1:limit
            z(i,j) = log(a + EvaluateParticle(x(i,j), y(i,j)));
        end
    end

    contour(x, y, z)
   
end

    % minima at (3.00, 2.00)
    %           (-2.81, 3.13)
    %           (3.58, -1.85)
    %           (-3.78, -3.28)