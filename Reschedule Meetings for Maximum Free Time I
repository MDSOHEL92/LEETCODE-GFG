
class Solution {
public:
    int maxFreeTime(int eventTime, int k, vector<int>& startTime, vector<int>& endTime) {
        int n = startTime.size();
        vector<int> arr;

        arr.push_back(startTime[0]);

        for (int i = 1; i < n; i++) {
            arr.push_back(startTime[i] - endTime[i - 1]);
        }

        arr.push_back(eventTime - endTime[n - 1]);

        int winS = 0;
        for (int i = 0; i < k + 1; i++) {
            winS += arr[i];
        }

        int ans = winS;
        for (int i = k + 1; i < arr.size(); i++) {
            winS += arr[i] - arr[i - (k + 1)];
            ans = max(ans, winS);
        }

        return ans;
    }
};
