from colorama import init
init()
from colorama import Fore, Back, Style
import numpy as np

size = 30

lst = np.array(["'"]*30 + ['♡', '♧'])
print(np.random.choice(lst, size=10))

for i in range(0, size):
    if i == 0:
        print(Fore.YELLOW + "★".center(size, " "))

    elif i % 2 == 0 and i > 0:
        print(Fore.GREEN + ''.join(np.random.choice(lst, size=i)).center(size, " "))

    else:
        print(Fore.RED + ("'"*(i+1)).center(size, " "))

for i in range(5):
    print(Fore.GREEN + "■".center(size, " "))

init(autoreset=True)
print()
print(Back.RED + "Merry Christmas...!!".center(size+2, " "))
print()