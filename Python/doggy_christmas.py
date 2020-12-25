num = 7

for i in range(num):
    for j in range(num):
        if ((i == 0) & (j == 2)):
            print("🐶", end="")
        elif (((i == 1) & (j == 2)) | ((i == 3) & (j == 1))):
            print("/", end="")
        elif (((i == 1) & (j == 4)) | ((i == 3) & (j == 5))):
            print("\\", end="")
        elif (((i == 2) & ((j == 1) | (j == 3)) | (i == 4) & (j <= 3))):
            print("ㅡ", end="")
        elif ((i == 5) & ((j == 2) | (j == 4))):
            print("|", end="")
        elif ((i == 6) & (j < 5)):
            print("* ", end="")
        else:
            print(" ", end="")
    print("\n")