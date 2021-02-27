% (a)
A = zeros(4);
A(:,4) = 1:4

% (b)
A = zeros(4);
A(:,4) = 4:-1:1;
A(3,1:3) = 7:2:11

% (c)
A .* (3 * (mod(A, 2) == 0)) + A .* (2 * (mod(A, 2) == 1))

% (d)
D = diag([0; 2.5; 5; 7.5; 10])
D(:,5) = 1;
D(5,5) = 10;

% (e)
e = [];
pow = 1;
while pow <= 64
    e = [e,pow];
    pow = pow*2;
end

% (f) 
(A < -1) *-1 + (A>= -1) .* A

% (g)
G = zeros(6);
G(2:5, 1:3) = -1;
G = 2 * (G < 0) .* G;
% (h)
H = toeplitz(randi([0 9], 6, 1));
if (isequal(H, H.'))
    disp('This matrix is symmetric');
else
    disp('This Matrix is not symmetric');
end
H2 = [1 2; 4 5; 7 8];
if (isequal(H2, H2.'))
    disp('This matrix is symmetric');
else
    disp('This Matrix is not symmetric');
end