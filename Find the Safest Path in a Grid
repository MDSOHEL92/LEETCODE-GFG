class Solution:
    def maximumSafenessFactor(self, grid: List[List[int]]) -> int:
        n = len(grid)

        # Step 1: Multi-source BFS to find distance to nearest thief
        dist = [[-1] * n for _ in range(n)]
        q = deque()

        for i in range(n):
            for j in range(n):
                if grid[i][j] == 1:
                    dist[i][j] = 0
                    q.append((i, j))

        directions = [(-1, 0), (1, 0), (0, -1), (0, 1)]

        while q:
            r, c = q.popleft()
            for dr, dc in directions:
                nr, nc = r + dr, c + dc
                if 0 <= nr < n and 0 <= nc < n and dist[nr][nc] == -1:
                    dist[nr][nc] = dist[r][c] + 1
                    q.append((nr, nc))

        def canReach(safe):
            if dist[0][0] < safe:
                return False

            vis = [[False] * n for _ in range(n)]
            q = deque([(0, 0)])
            vis[0][0] = True

            while q:
                r, c = q.popleft()

                if r == n - 1 and c == n - 1:
                    return True

                for dr, dc in directions:
                    nr, nc = r + dr, c + dc
                    if (
                        0 <= nr < n
                        and 0 <= nc < n
                        and not vis[nr][nc]
                        and dist[nr][nc] >= safe
                    ):
                        vis[nr][nc] = True
                        q.append((nr, nc))

            return False

        left, right = 0, 2 * n
        ans = 0

        while left <= right:
            mid = (left + right) // 2
            if canReach(mid):
                ans = mid
                left = mid + 1
            else:
                right = mid - 1

        return ans
