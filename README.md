# project02
  Enzyme Kinetics Modeling using Python and MATLAB

**Author:** Tanya Singh  
**Field:** Biochemical Engineering  
**Tools:** Python, MATLAB, Git  

---

##  Overview

This project models the enzyme-substrate reaction using the **Michaelis-Menten equation**, one of the most important formulas in enzyme kinetics. The goal is to fit experimental data to this equation using both **Python** and **MATLAB**, visualize the curve, and understand the biological behavior.

This project is a simple yet powerful example of integrating two major scientific tools and demonstrating cross-platform data handling using `.mat` files.

---

## 📁 Project Structure

| File Name             | Language | Description                                           |
|-----------------------|----------|-------------------------------------------------------|
| `michaelis_menten.py` | Python   | Generates data, fits Michaelis-Menten model, plots   |
| `save_to_mat.py`      | Python   | Saves data as `.mat` file for MATLAB use             |
| `enzyme_data.mat`     | MATLAB   | Data file saved by Python, used in MATLAB            |
| `mm_model.m`          | MATLAB   | Defines the Michaelis-Menten function                |
| `load_and_plot.m`     | MATLAB   | Loads `.mat` file, fits model, and plots result      |

---

## ⚙️ How It Works

### 🔹 Python Phase
- Simulates `[S]` (substrate) and `V` (velocity) data
- Fits the curve using `scipy.optimize.curve_fit`
- Saves `S` and `V` to a `.mat` file for MATLAB use

### 🔹 MATLAB Phase
- Loads the `.mat` file
- Fits the data using `lsqcurvefit` and custom function `mm_model`
- Visualizes the result

---

## 📈 Output

Both tools generate a plot of experimental data and the fitted Michaelis-Menten curve. The parameters `Vmax` and `Km` are estimated during the fitting.

Example Plot (Python or MATLAB):

[blue dots] = Real data
[red line] = Fitted model

yaml
Copy
Edit
---

## 🛠 Requirements

- Python 3.9+  
- Libraries: `numpy`, `scipy`, `matplotlib`, `scipy.io`  
- MATLAB (any version with optimization toolbox)

---

## 📦 How to Run

### In Python:
1. Run `michaelis_menten.py` to simulate and plot
2. Run `save_to_mat.py` to export `.mat` data

### In MATLAB:
1. Open MATLAB and set folder to project directory
2. Run `load_and_plot.m` to fit and visualize

---

## 🔗 Credits

This project was guided and executed by Tanya Singh as part of a biochemical engineering learning exercise using a simple and integrative approach.

---

## ⭐️ Final Note

This project bridges **biology, coding, and engineering** in a beginner-friendly way. It’s a good base for bigger simulations, research, or internships involving enzyme kinetics or bioprocess modeling.
