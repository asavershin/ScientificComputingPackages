from ODEINT import ODEINT
from SOLVE_IVP import SOLVE_IVP

a = 10
b = 28
c = 8/3

xyz_0 = [1, 1, 1]

SOLVE_IVP(xyz_0, a, b, c)
ODEINT(xyz_0, a, b, c)