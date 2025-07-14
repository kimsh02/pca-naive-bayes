import numpy as np
import os

cwd = os.getcwd()

fp = os.path.join(cwd, "three.txt")
three = np.loadtxt(fp)

fp = os.path.join(cwd, "eight.txt")
eight = np.loadtxt(fp)


print(three)
print(eight)
