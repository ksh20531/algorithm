class Solution {
  int romanToInt(String s) {
    if(s.isEmpty) return 0;

    int result = 0;
    Map<String, int> map = {
        'I': 1,
        'V': 5,
        'X': 10,
        'L': 50,
        'C': 100,
        'D': 500,
        'M': 1000,
    };

    for(int i = 0; i < s.length; i++) {
        int nextVal = (i + 1 >= s.length) ? 0 : map[s[i + 1]];

        if(map[s[i]] < nextVal){
            result -= map[s[i]];
        } else {
            result += map[s[i]];
        }
    }
    return result;
  }
}
