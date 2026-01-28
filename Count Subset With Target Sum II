class Solution {
  public:
    int countSubset(vector<int> &arr, int k) {
        // code here
        unordered_map<int,int>mp,mp1;
        mp[0] = 1;
        mp1[k] = 1;
        sort(arr.begin() , arr.end());
        int j = arr.size()/2;
        for(int i=0;i<j; i++){
            vector<pair<int,int>>vec;
           for(auto &[x,y]: mp){
                vec.push_back({x+arr[i] , y});
            }
            for(auto &[x,y]: vec)mp[x]+=y;
        }
        for(int i = arr.size()-1 ; i>=j ; i--){
            vector<pair<int,int>>vec;
            for(auto &[x,y]: mp1){
               vec.push_back({x-arr[i] , y});
            }
            for(auto &[x,y]: vec)mp1[x]+=y;
            
        }
        int ans = 0;
        for(auto &[x,y] : mp){
            ans+=mp1[x] * y;
        }
        return ans;
    }
};
