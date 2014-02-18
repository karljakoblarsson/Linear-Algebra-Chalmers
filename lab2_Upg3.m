%% Chalmers LinAlg Vt2014 Lab 2 Uppgift 3
%% Karl Jakob Larsson

clf
hold on

% Triangel som inte skärs av x+2y=1
p = [0 1/2 1/4 0; 0 0 1/4 0; 0 0 0 0];
plot(p(1,:), p(2,:));

% linjen
x = -3:0.1:3;
y = (-1/2) * x  + 1/2;
plot(x,y,'y');

% planet
A = 1;
B = 2;
C = 0;
D = 1;

% speglad
pSize = size(p);
for i = 1:pSize(2)
    pSpeglad(:,i) = spegel(p(:,i)', A, B, C, D);
end

plot(pSpeglad(1,:), pSpeglad(2,:), 'r');

hold off
