def Fibonacci(n):
    # Fibonacci(n-1)+Fibonacci(n-2)
    if n==0:
        return 0
    if n==1:
        return 1
    return Fibonacci(n-1)+Fibonacci(n-2)

print(Fibonacci(6))