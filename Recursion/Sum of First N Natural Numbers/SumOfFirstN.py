number = int(input("Enter the limit: "))

def sumOfFirstN(n):
    if n == 1:
        return 1
    return n + sumOfFirstN(n-1)

if number < 0:
    print("Error")
else:
    print("Sum of first ", number, " number is: ", sumOfFirstN(number))
