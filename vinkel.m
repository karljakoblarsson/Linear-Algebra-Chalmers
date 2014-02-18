%norm(x) * norm(y)%
%% Karl Jakob Larsson 2014
%% MIT License

function v = vinkel(x, y)
    v = acos(dot(x, y) / (norm(x) * norm(y)));
end
