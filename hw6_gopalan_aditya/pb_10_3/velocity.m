function V = velocity(sol)
% Returns the vector of the velocities of the satellite at
% the timesteps.
V = sqrt(sol(4,:).*sol(4,:) + sol(6,:).*sol(6,:) + sol(5,:).*sol(5,:));
end