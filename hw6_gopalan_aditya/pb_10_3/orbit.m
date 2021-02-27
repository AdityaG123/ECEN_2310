function ydot = orbit(t, y)
% Returns the vector of the derivative of y at time t.
r = sqrt(y(1:3)' * y (1:3));
ydot = [y(4);  % an ellipsis continues the
    y(5);
    y(6);% statement to the next line
    -1/r^3 * y(1); 
    -1/r^3 * y(2);
    -1/r^3 * y(3)];
end