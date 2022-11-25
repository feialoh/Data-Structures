number = int(input("Enter number: "))
pwr = int(input("Enter power: "))

# Before improvement
# def Pow(num, pow):
#     if pow == 0:
#         return 1
    
#     return num*Pow(num, pow-1)

# After improvement
def Pow(num, pow):
    if pow == 0:
        return 1
    
    if pow < 0:
        num = 1 / num
        pow = abs(pow)

    temp = Pow(num, pow // 2)  

    if pow % 2 == 1:
        return temp * temp * num
    else:
        return temp * temp

print(number, "**", pwr, " = ", Pow(number, pwr))

# Before improvement
# time complexity : O(n)
# space complexity : O(n)

# After improvement
# time complexity : O(log n)
# space complexity : O(log n)