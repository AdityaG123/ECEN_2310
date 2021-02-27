function v = bridge(R, V)

syms VA VB
R1 = R(1) * 1000;
R2 = R(2) * 1000;
R3 = R(3) * 1000;
R4 = R(4) * 1000;
R5 = R(5) * 1000;
Vs = V;
eqns = [(1/R1 + 1/R3 + 1/R4)*VA - (1/R3)*VB == (1/R1)*Vs, (-1/R3)*VA + (1/R2 + 1/R3 + 1/R5)*VB == (1/R2)*Vs];
S = solve(eqns, VA, VB);
v = [S.VA S.VB]';

% Will get a result from the code for the equation if typing 
% "v = bridge([1 1 1 1 1]), 2)" into the command window 

end