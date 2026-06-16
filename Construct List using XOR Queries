class Solution:
    def constructList(self, queries):
        # code here
        a = [0]
        xor = [0]
        last = 0
        
        for v, x in queries:
            if v == 0:
                a.append(x)
                xor.append(last)
                last = 0
            else:
                last ^= x
                xor[0] ^= x
        
        curr = 0
        for i in range(len(a)):
            curr ^= xor[i]
            a[i] ^= curr
            
        return sorted(a)
