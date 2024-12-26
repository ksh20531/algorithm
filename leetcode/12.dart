class Solution {
  String intToRoman(int num) {
    String result = '';
    Map<String, int> map = {
      "M": 1000,
      "CM": 900,
      "D": 500,
      "CD": 400,
      "C": 100,
      "XC": 90,
      "L": 50,
      "XL": 40,
      "X": 10,
      "IX": 9,
      "V": 5,
      "IV": 4,
      "I": 1,
    };

    for (var entry in map.entries) {
      while (num >= entry.value) {
        result += entry.key;
        num -= entry.value;
      }
    }

    return result;
  }
}

