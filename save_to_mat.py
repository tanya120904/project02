import scipy.io
import numpy as np

# Your data
S = np.array([0.5, 1.0, 2.0, 5.0, 10.0])  # Substrate concentrations
V = np.array([0.2, 0.4, 0.7, 1.5, 1.9])   # Velocities

# Save the data into a .mat file
scipy.io.savemat("enzyme_data.mat", {"S": S, "V": V})

print("enzyme_data.mat file saved successfully!")
