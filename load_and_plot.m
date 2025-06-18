% Load the data saved by Python
data = load('enzyme_data.mat');

% Extract substrate concentration (S) and reaction velocity (V)
S = data.S;
V = data.V;

% Plot the data
figure
plot(S, V, 'co-', 'LineWidth', 2, 'MarkerSize', 8)
xlabel('Substrate [S] (mM)')
ylabel('Reaction Velocity [V]')
title('Enzyme Kinetics from Python Data')
grid on
