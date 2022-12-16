class StringPermutation:

    def permutation(self, str):
        def helper(pos, str, ans):
            if pos >= len(str):
                ans.append(str)
            str = list(str)
            m = []
            for i in range(pos, len(str)):
                if str[i] in m:
                    continue
                m.append(str[i])
                str[i], str[pos] = str[pos], str[i]
                helper(pos+1, str, ans)
                str[i], str[pos] = str[pos], str[i] 
        ans = []
        helper(0, str, ans)
        ans.sort()
        return ans        

str = input("Enter the string: ")
solution = StringPermutation()
print("Permutations: ", solution.permutation(str))