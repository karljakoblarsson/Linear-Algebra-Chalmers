%%
%% Karl jakob Larsson 2014
%% MIT License

function R = rotation(v, t)
    u = [v(2) -v(1) 0];
    w = [v(1)*v(3) v(2)*v(3) -(v(1).^2 + v(2).^2)];
    P = [u / norm(u);
         w / norm(w);
         v / norm(v)];
    M = [cos(t) -sin(t) 0;
         sin(t)  cos(t) 0;
         0       0      1];

    R = P*M*P';
end
