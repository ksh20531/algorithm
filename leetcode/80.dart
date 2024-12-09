class Solution {
  int removeDuplicates(List<int> nums) {
    if(nums.isEmpty) return 0;

    Map<int, int> nList = {};

    for(int i = 0; i < nums.length; i++) {
        if(!nList.containsKey(nums[i])){
            nList[nums[i]] = 1;
        }else {
            if(nList[nums[i]]! < 2) {
                nList[nums[i]] = nList[nums[i]]! + 1;
            } else {
                nums.removeAt(i);
                i--;
            }
        }
    }
    return nums.length;
  }
}
