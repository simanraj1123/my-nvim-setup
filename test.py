import numpy as np
import matplotlib.pyplot as plt

x = np.linspace(0, 100, 1000)
y = np.sin(x)

plt.plot(x, y, 'o')
plt.show()

print("Hello")

def func(n: int) -> int:
    """
    test function for docstrings

    :param n: dummy variable
    :return: the argument of the function
    """
    print(n)
    return n

def func2(n):
    print(n)

