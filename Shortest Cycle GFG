class Solution {
  public:
   vector<set<int>> g;
    vector<int> dist;
    
    void bfs(int src) {
        queue<int> q;
        dist[src] = 0;
        q.push(src);
        
        while(!q.empty()) {
            int curr = q.front();
            q.pop();
            
            for(auto &x : g[curr]) {
                if(dist[x] > 1 + dist[curr]) {
                    dist[x] = 1 + dist[curr];
                    q.push(x);
                }
            }
        }
    }
  
    int shortCycle(int V, vector<vector<int>>& e) {
        g.resize(V);
        for(auto &x : e) {
            g[x[0]].insert(x[1]);
            g[x[1]].insert(x[0]);
        }
        
        int ans = 1e9;
        for(auto &x : e) {
            int u = x[0];
            int v = x[1];
            g[u].erase(v);
            g[v].erase(u);
            
            dist.assign(V, 1e9);
            bfs(u);
            
            ans = min(ans, dist[v]+1);
        }

        return ans == 1e9 ? -1 : ans;
    }
};
