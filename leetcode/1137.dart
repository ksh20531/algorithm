class Solution {
  int tribonacci(int n) {
    int t0 = 0;
    int t1 = 1;
    int t2 = 1;
    int t3 = t0 + t1 + t2;

    if(n <1) return t0;
    else if(n <= 1) return t1;
    else if(n <= 2) return t2;

    for(int i = 3; i <= n; i++) {
        t3 = t0 + t1 + t2;
        t0 = t1;
        t1 = t2;
        t2 = t3;
    }

    return t3;
  }
}
