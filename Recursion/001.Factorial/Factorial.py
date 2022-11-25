number = int(input("Enter the number: "))

def factorial(num):
    if num == 0:
        return 1
    return num * factorial(num-1)

if number < 0:
    print("Error")
else:
    print("Factorial = ", factorial(number))

    # time complexity: O(n)
    # space complexity: O(n)