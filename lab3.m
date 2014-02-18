%% Chalmers LinAlg Vt2014 Lab 3
%% Karl Jakob Larsson

refSp = 1;
lndelta = @(x) log(x / refSp);
A = [lndelta(49.1) lndelta(75.6) lndelta(105.1) lndelta(130.5) lndelta(150.4);
     -1 -1 -1 -1 -1]';
b = [ 1.4e-8 8.7e-8 1.7e-6 3.4e-5 2.3e-3]';

augA = [A b];

rref(augA)

fprintf('---------------------------')

minsqA = A' * A;
minsqB = A' * b;

augminsq = [minsqA minsqB];

rref(augminsq)
minsqA \ minsqB
