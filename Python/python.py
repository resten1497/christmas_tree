def treelevel(n):
    space = "  "
    linesep = "\n"
    result = ""

    for i in range(1, n):
        isEnd = not (i == n-1)
        result += f"{space*(n-i)}／ {space*(2*i-1) if isEnd else '_ '*(2*i-1)}＼{linesep*int(isEnd)}"
    return result

def tree(width, height):
    space = "  "
    middle = space*(width-1)
    linesep = "\n"
    star = "★"
    result = ""
    
    result += middle + star + linesep
    for _ in [0]*height:
        result += f"{treelevel(width-1)}{linesep}"
    result += (middle + "I"*((width+1)//2) + linesep) * 3
    
    return result

if __name__ == "__main__":
    print(tree(5, 2))
