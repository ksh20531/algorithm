class Solution {
  bool isAnagram(String s, String t) {
    if(s.length != t.length) return false;

    List<String> sList = s.split('');
    List<String> tList = t.split('');
    
    sList.sort();
    tList.sort();

    for(int i = 0; i < sList.length; i++) {
        if(sList[i] != tList[i]) return false;
    }

    return true;
  }
}
