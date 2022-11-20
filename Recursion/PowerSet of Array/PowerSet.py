class PowerSet:

    def powerset(self, nums):

        def subsetHelper(i, subset, nums, ans):

            if len(nums) == i:
                ans.append(subset.copy())
                return

            subset.append(nums[i])
            subsetHelper(i+1, subset, nums, ans)
            subset.pop()
            subsetHelper(i+1, subset, nums, ans)
            return

        ans = []
        subset = []
        subsetHelper(0, subset, nums, ans)
        return ans

number = int(input("Enter number of elements to be entered: "))
numberArray = []
for i in range(number):
    print("Enter number ", (i+1), " : ")
    element = int(input())
    numberArray.append(element)

print("Array elements: ", numberArray)
solution = PowerSet()
print("Power set: ", solution.powerset(numberArray))

# Time Complexity : O(2^N)
# Space Complexity : O(N)
