def add(a,b):
    return a+b

def sub(a,b):
    return a-b

def mul(a,b):
    return a*b

def div(a,b):
    if(b != 0):
        return a/b
    return 0

if __name__ == "__main__":
    print(f"2+3: {add(2,3)}")
    print(f"2-3: {sub(2,3)}")
    print(f"2*3: {mul(2,3)}")
    print(f"2/3: {div(2,3)}")