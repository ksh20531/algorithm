class Solution {
  bool canPlaceFlowers(List<int> flowerbed, int n) {
    int cnt = 0;
    int length = flowerbed.length;

    for (int i = 0; i < length; i++) {
      if (flowerbed[i] == 0 &&
          (i == 0 || flowerbed[i - 1] == 0) &&
          (i == length - 1 || flowerbed[i + 1] == 0)) {
        flowerbed[i] = 1;
        cnt++;
        if (cnt >= n) {
          return true;
        }
      }
    }

    return cnt >= n;
  }
}

