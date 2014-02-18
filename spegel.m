%%
%% Karl Jakob Larsson 2014
%% MIT License

function s = spegel(x, A, B, C, D)
    n = [A B C] / norm([A B C]);
    d = D / norm([A B C]);

    s = x + 2*(d - dot(x, n)) * n;
    s = s'; % Därför
end
