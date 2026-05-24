class Solution:
    def maxJumps(self, nums: List[int], d: int) -> int:
        N = len(nums)
        seen = set()
        dp = [1] * N

        def recursion(indx):
            if indx in seen:
                return dp[indx]
            if indx < 0 or indx >= N:
                return 0

            tempR, tempL = 0, 0
            curr = nums[indx]

            for i in range(indx + 1, min(indx + d + 1, N)):
                if nums[i] < curr:
                    tempR = max(tempR, recursion(i))
                else:
                    break
            for i in range(indx - 1, max(-1, indx - d - 1), -1):
                if nums[i] < curr:
                    tempL = max(tempL, recursion(i))
                else:
                    break

            dp[indx] = max(tempR, tempL) + 1
            seen.add(indx)
            return dp[indx]

        for i in range(N):
            if i not in seen:
                recursion(i)
        return max(dp)
