class Solution {
  bool isSubsequence(String s, String t) {
    bool result = false;
    int idx = 0;
    List<String> sList = s.split('');
    List<String> tList = s.split('');

    for(int i = 0; i < sList.length; i++) {
        if(sList[idx] == tList[i]) {
            result = true;
            if(idx == sList.length) {
                break;
            }
        } else{
            result = false;
        }
        idx++;
    }

    return result;
  }
}
