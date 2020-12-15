# Print colorful tree with ANSI code

import numpy as np
import math


deco = np.array(['●', 'o', 'x', 'X', '+', '◆'])
colors = [91, 93, 94, 95, 96, 97] #bright red, bright yellow, bright blue, bright magenta, bright cyan, bright white

def make_tree(width, height):
    ret = []
    center = math.floor(width/2)

    for y in range(0, height):
        col = []

        for x in range(0, width):
            if y < height*(4/5): # 트리 윗부분
                temp = y/height*center
                if(x>=(center-temp) and x<=(center+temp)): 
                    normal = x%(y%(height/5)+2)
                    dec = math.floor(np.random.rand() * len(deco)) 
                    color = math.floor(np.random.rand() * len(colors)) 

                    if y==0: 
                        col.append("\x1b[93m★\x1b[0m") 

                    elif normal==0:
                        col.append("\x1b[" + str(colors[color]) + "m" + str(deco[dec]) + "\x1b[0m")
                    
                    else:
                        col.append("\x1b[92m*\x1b[0m") 
                else:
                    col.append(" ") 
            
            else: # 트리 기둥
                if(x >= center-center/10 and x<=center+center/10): 
                    col.append("\x1b[42m+\x1b[49m") 
                else:
                    col.append(" ")
        
        ret.append("".join(col))
    ret.append(" "*8 + "\x1b[101mMerry Christmas\x1b[0m")
    
    return "\n".join(ret)


def print_tree(tree):
    # os.system('cls') #window
    print(tree)

if __name__ == "__main__":
    print_tree(make_tree(30,30))
