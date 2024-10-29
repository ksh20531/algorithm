class Solution {
  String reverseVowels(String s) {
    var vowels = ['a','e','i','o','u','A','E','I','O','U'];
    var sList = s.split('');

    int left = 0;
    int right = s.length - 1;

    while(left < right) {
        while (left < right && !vowels.contains(sList[left])) {
            left++;
        }
        while (left < right && !vowels.contains(sList[right])) {
            right--;
        }

        if (left < right) {
            var temp = sList[left];
            sList[left] = sList[right];
            sList[right] = temp;
            left++;
            right--;
        }
    }
    return sList.join('');
  }
}
