class Solution {
public:
    long long countPS(std::string s) {
        const int n = (int)s.size();
        long long ans = 0;

        auto expand = [&](int L, int R) {
            long long cnt = 0;
            while (L >= 0 && R < n && s[L] == s[R]) {
                ++cnt;
                --L; ++R;
            }
            return cnt;
        };

        for (int i = 0; i < n; ++i)               // odd-length (>=3)
            ans += expand(i - 1, i + 1);
        for (int i = 0; i + 1 < n; ++i)           // even-length (>=2)
            ans += expand(i, i + 1);

        return ans;
    }
};
