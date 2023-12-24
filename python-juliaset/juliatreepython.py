#%%
import matplotlib.pyplot as plt
import numpy as np

def treeMake(x, y):
    zList = []
    z = 0 + 0j
    i = 0
    c = 0.2733 + 0.074j

    while(i < 10000 and abs(z) < 2 ):
        z = z**2 + c
        zList.append(z)
        i += 1


    zArr = np.array(zList)
    print(zArr)

    X = [a.real + x for a in zArr]
    Y = [a.imag + y for a in zArr]


    plt.scatter(X,Y, marker="^")
    #plt.show()

plt.figure(1)

treeMake(0, 0.2)

treeMake(0, 0)
treeMake(-1, 0)
treeMake(1, 0)

treeMake(-2, -0.2)
treeMake(-1, -0.2)
treeMake(0, -0.2)
treeMake(1, -0.2)
treeMake(2, -0.2)

plt.show()
# %%
