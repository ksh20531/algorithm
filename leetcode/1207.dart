class Solution {
  bool uniqueOccurrences(List<int> arr) {
    List<int> uniqueArr = arr.toSet().toList();
    List<int> result = [];

    for(int i = 0; i < uniqueArr.length; i++) {
        int cnt = 0;
        
        for(int j = 0; j < arr.length; j++){
            if(uniqueArr[i] == arr[j]){
                cnt++;
            }
        }
        result.add(cnt);
    }

    Set<int> resultMap = result.toSet();

    if(result.length == resultMap.length) {
        return true;
    } else {
        return false;
    }
  }
}
