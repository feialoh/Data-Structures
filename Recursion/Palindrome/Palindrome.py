class Palindrome:

    def isPalindrome(self, s: str) -> bool:

        def isPalindromeHelper(l, r, s):

            if l >= r:
                return True
            if s[l] != s[r]:
                return False
            return isPalindromeHelper(l+1, r-1, s)

        str = ""
        for char in s:
            if char.isalnum() == False or char == " ":
                continue
            if char.isupper():
                char = char.lower()
            str += char
        return isPalindromeHelper(0, len(str)-1, str)

str = input("Enter the string: ")
solution = Palindrome()
if (solution.isPalindrome(str)): 
    print("Its palindrome")
else:
    print("Its not palindrome")

    # time complexity: O(n)
    # space complexity: O(n)