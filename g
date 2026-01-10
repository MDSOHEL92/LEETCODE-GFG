class Solution {
  public:
    int countSubstr(string& s, int k) {
        // code here
        return atMostKDistinct(s,k)-atMostKDistinct(s,k-1);
        
    }
    int atMostKDistinct(string& s, int k){
        int left = 0, right = 0;
        int count = 0;
        unordered_map<char, int> freq;
        
        for(; right < s.size(); right++){
            freq[s[right]]++;
            
            while(freq.size() > k){
                freq[s[left]]--;
                if(freq[s[left]] == 0) freq.erase(s[left]);
                left++;
            }
            count += right - left + 1;
        }
        return count;
    }
};
#####################################################################################################################################
#####################################################################################################################################
#####################################################################################################################################
class Solution {
  public:
    Solution(){}
    
    virtual int atleastk(string &s, int k){
      int dis_count=0;
      int freq[26];
      memset(freq, 0, sizeof(freq));
      
      int n=s.size(), i=0, j=0;
      int ans=0;
      for(int j=0; j<n; j++){
        freq[s[j]-'a']++;
        
        if(freq[s[j]-'a'] == 1)
          dis_count++;
        
        while(dis_count == k){
          ans += (n-j);
          freq[s[i]-'a']--;
          if(freq[s[i]-'a'] == 0) dis_count--;
          i++;
        }
      }
      return ans;        
    }
    
    virtual int countSubstr(string& s, int k){
      return (atleastk(s, k) - atleastk(s, k+1));
    }
    virtual ~Solution(){}
};
