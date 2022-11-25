class ReverseArray:

    def reverseArray(self, arr, m: int):

        def reverse(l, r, arr):

            if l >= r:
                return arr
            arr[l], arr[r] = arr[r], arr[l]
            return reverse(l+1, r-1, arr)

        return reverse(0, len(arr)-1, arr)

number = int(input("Enter number of elements to be entered: "))
numberArray = []
for i in range(number):
    print("Enter number ", (i+1), " : ")
    element = int(input())
    numberArray.append(element)

print("Array before: ", numberArray)
solution = ReverseArray()
solution.reverseArray(numberArray, 0)
print("Array after: ", numberArray)

    # time complexity: O(n)
    # space complexity: O(n)