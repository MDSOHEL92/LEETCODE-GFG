class Solution:
    def minInsAndDel(self, a, b):
        # code here
        from bisect import bisect_left
        n, m = len(a), len(b)
        b_set = set(b)
        lis = []
        for a_elem in a:
            if a_elem not in b_set:
                continue
            i = bisect_left(lis, a_elem)
            if i == len(lis):
                lis.append(a_elem)
            else:
                lis[i] = a_elem
        return n + m - 2 * len(lis)
