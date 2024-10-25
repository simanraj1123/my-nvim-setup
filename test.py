import collections

import matplotlib.pyplot as plt
import numpy as np

xLint = np.linspace(0, 100, 1000)
y = np.sin(xLint)

plt.plot(xLint, y, "o")
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


def func2(n: int):
    """
    Docstring

    :param n: Something
    """
    print(n)

    print("hello")
    print("hello")
    print("Hello again")
    print("Hello")


func2(2)
