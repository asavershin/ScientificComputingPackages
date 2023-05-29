import numpy as np
from scipy.integrate import solve_ivp
import matplotlib.pyplot as plt
from mpl_toolkits import mplot3d

# Define the function that returns the derivative of x, y, and z with respect to time
def f(t, xyz, a, b, c):
    x, y, z = xyz
    dxdt = a * (y - x)
    dydt = x * (b - z) - y
    dzdt = x * y - c * z
    return [dxdt, dydt, dzdt]

# Define the initial conditions and parameters
def SOLVE_IVP(xyz0, a, b, c):

    # Define the time interval to solve for
    t_span = (0, 50)

    # Solve the system of differential equations using solve_ivp
    sol = solve_ivp(lambda t, xyz: f(t, xyz, a, b, c), t_span, xyz0, t_eval=np.linspace(0, 50, 10000))

    # Plot the 3D solution
    fig = plt.figure()
    ax = fig.add_subplot(111, projection='3d')
    print(sol)
    ax.plot(sol.y[0], sol.y[1], sol.y[2])
    ax.set_xlabel('x(t)')
    ax.set_ylabel('y(t)')
    ax.set_zlabel('z(t)')
    plt.show()