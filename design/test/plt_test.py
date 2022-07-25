import os, yaml
import numpy as np
import matplotlib.pyplot as plt

if __name__ == "__main__":
    print('Script Starting')

    x = [1,2,3,4,5,6,7,8,9,10]
    y = np.sqrt(x)

    #plt.ion()

    plt.plot(x,y)

    plt.show()

    print('Script done')