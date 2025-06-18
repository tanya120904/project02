% Michaelis-Menten Enzyme Kinetics - MATLAB (No toolbox version)

% Step 1: Experimental Data
S = [0.5 1.0 2.0 5.0 10.0];   % Substrate concentrations (mM)
V = [0.2 0.4 0.7 1.5 1.9];    % Reaction velocities (μmol/min)

% Step 2: Michaelis-Menten model
michaelis_menten = @(params, S) (params(1) * S) ./ (params(2) + S); 

% Step 3: Objective function (squared error)
error_function = @(params) sum((V - michaelis_menten(params, S)).^2);

% Step 4: Initial guess [Vmax, Km]
initial_guess = [2.0, 2.0];

% Step 5: Use fminsearch to minimize the error function
fit_params = fminsearch(error_function, initial_guess);

Vmax_fit = fit_params(1);
Km_fit = fit_params(2);

% Step 6: Generate fitted curve
S_fit = linspace(0, 12, 100);
V_fit = michaelis_menten(fit_params, S_fit);

% Step 7: Plot
figure
plot(S, V, 'bo', 'MarkerSize', 8, 'DisplayName', 'Experimental Data');
hold on
plot(S_fit, V_fit, 'r-', 'LineWidth', 2, ...
    'DisplayName', sprintf('Fit: V_{max} = %.2f, K_m = %.2f', Vmax_fit, Km_fit));
xlabel('Substrate Concentration [S] (mM)')
ylabel('Reaction Velocity [V] (μmol/min)')
title('Michaelis-Menten Enzyme Kinetics - MATLAB')
legend show
grid on
