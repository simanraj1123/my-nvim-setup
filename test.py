import matplotlib.pyplot as plt
import numpy as np

x = np.linspace(0, 100, 1000)
y = np.sin(x)

plt.plot(x, y, "o")
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
    """
     ff

    :param n [TODO:type]: [TODO:description]
    """
    """
    func2

    :param n anuything: [TODO:description]
    """
    print(n)
