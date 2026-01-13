class Solution:
    def separateSquares(self, squares: List[List[int]]) -> float:
        total_area = 0
        diff = defaultdict(int)
        for _, y, l in squares:
            total_area += l * l
            diff[y] += l
            diff[y + l] -= l
        
        area = 0
        s = 0
        for y, y2 in pairwise(sorted(diff)):
            s += diff[y]
            area += s * (y2 - y)
            if area * 2 >= total_area:
                return y2 - (area * 2 - total_area) / (s * 2)
