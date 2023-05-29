import numpy as np
from scipy.integrate import odeint
import matplotlib.pyplot as plt



def lorenz_system(xyz, t, a, b, c):
    x, y, z = xyz
    x_dot = a * (y - x)
    y_dot = x * (b - z) - y
    z_dot = x * y - c * z
    return [x_dot, y_dot, z_dot]

def ODEINT(xyz_0,a ,b ,c):
    t = np.linspace(0, 50, 10000)

    xyz = odeint(lambda xyz_0, t: lorenz_system(xyz_0, t, a, b, c), xyz_0, t)

    print(xyz)

    fig = plt.figure(figsize=(10, 7))
    ax = fig.add_subplot(111, projection='3d')
    ax.plot(xyz[:, 0], xyz[:, 1], xyz[:, 2])
    plt.show()


    plt.plot(t, xyz[:, 0])
    plt.xlabel('t')
    plt.ylabel('x(t)')
    plt.show()

    plt.plot(t, xyz[:, 1])
    plt.xlabel('t')
    plt.ylabel('y(t)')
    plt.show()

    plt.plot(t, xyz[:, 2])
    plt.xlabel('t')
    plt.ylabel('z(t)')
    plt.show()