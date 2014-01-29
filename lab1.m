%% Lab 1 LinAlg Chalmers Vt2014
% Jakob Larsson

%% Uppgift 1

A = [2 5 3; 2 6 3];
B = [2 3 6; 7 5 8];
C = [1 4 2; 4 6 3; 6 2 7];
D = [6 6 6];
F = [2; 4; 5];
G = [0; 3; 5];

% a)
size(A)

% b)
A + B
-A
2*A
3*A + 5*B

% c)
% A + C

% d)
A*C

% e)
A*G

% f)
% A*B

% g)
D*G
G*D

% h)
C^2
C^10


%% Uppgift 2

% a)
A'
A

% b)
%A = [A; G']

% c)
inv(A)

% d)
inv(A) * A

% e)
inv(A')
inv(A)'

% f)
M = [1 2 3; 4 5 6; 7 8 9];
N = [9 8 7; 6 5 4; 3 2 1];

M/A
M*inv(A)

A\N
inv(A)*N


%% Uppgift 3

[zeros(3,2) eye(3) zeros(3,1) B'; tril(A)' [[diag(C)] rand(3,4)]]



%% Uppgift 4

A = [3 -1 1 0 4;
     6  0 2 5 5;
     -7 7 0 4 1;
     4  2 1 6 1;
     -3 1 1 4 10];

B = A - eye(5);

C = [1 9 9 3 0]';

D = B * [0 1 3 3 7]';

% a)
a1X = rref([A C]);
a1X = a1X(:,6)

a2X = A\C

a3X = inv(A) * C


% b)
b1X = rref([B C])
b1X = b1X(:,6)

b2X = B\C

b3X = inv(B) * C

% c)
c1X = rref([B D])
c1X = c1X(:,6)

c2X = B\D

c3X = inv(B) * D
 

%% Uppgift 5

u = 1/sqrt(2);
R = [];
K = [];
E = [];
A = sparse(R, K, E, 16, 16);

