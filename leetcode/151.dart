class Solution {
  String reverseWords(String s) {
    List<String> words = s.trim().split(' ').where((word) => word.isNotEmpty).toList();
    
    return words.reversed.join(' ');
  }
}
