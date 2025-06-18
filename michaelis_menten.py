# Enzyme Kinetics - Michaelis-Menten Model
import numpy as np
import matplotlib.pyplot as plt
from scipy.optimize import curve_fit

# Step 1: Michaelis-Menten equation
def michaelis_menten(S, Vmax, Km):
    return (Vmax * S) / (Km + S)

# Step 2: Example data (Substrate [S], Velocity [V])
S = np.array([0.5, 1.0, 2.0, 5.0, 10.0])   # substrate concentrations (mM)
V = np.array([0.2, 0.4, 0.7, 1.5, 1.9])    # reaction velocities (μmol/min)

# Step 3: Fit the curve to the data
popt, pcov = curve_fit(michaelis_menten, S, V)
Vmax_fit, Km_fit = popt

# Step 4: Predicted values using the fitted parameters
S_fit = np.linspace(0, 12, 100)
V_fit = michaelis_menten(S_fit, Vmax_fit, Km_fit)

# Step 5: Plotting
plt.figure(figsize=(8, 6))
plt.plot(S, V, 'bo', label='Experimental Data')
plt.plot(S_fit, V_fit, 'r-', label=f'Fit: Vmax = {Vmax_fit:.2f}, Km = {Km_fit:.2f}')
plt.xlabel('Substrate Concentration [S] (mM)')
plt.ylabel('Reaction Velocity [V] (μmol/min)')
plt.title('Michaelis-Menten Enzyme Kinetics')
plt.legend()
plt.grid(True)
plt.show()
input("Press Enter to exit...")
