

def fact(n : int) -> int:
    a = 1
    for i in range(2, n):
        a *= i
    return a

if __name__ == '__main__':
    n = 52345
    print(fact(n) // fact(n - 1))

