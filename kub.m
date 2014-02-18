%%
%% Karl Jakob Larsson 2014
%% MIT License

function kub(v, dt)
    clf
    hold off
    xlabel 'x'
    ylabel 'y'
    zlabel 'z'

    deltaT = 0.05;

    kub = [ 1  1  1 -1 -1 -1 -1  1  1  1 -1 -1 -1 -1  1  1;
           -1 -1  1  1 -1 -1  1  1  1 -1 -1  1  1 -1 -1  1;
           -1  1  1  1  1 -1 -1 -1  1  1  1  1 -1 -1 -1 -1];

    theata = dt;

    while true
        theata = theata + dt;
        R = rotation(v, theata);
        for i = 1:16
            kub(:,i) = R * kub(:,i);
        end

        plot3(kub(1,:), kub(2,:), kub(3,:) );
        axis square
        axis equal
        pause(deltaT);
    end
end
