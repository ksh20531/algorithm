class Solution {
  int removeElement(List<int> nums, int val) {
    // nums.removeWhere((e) => e == val);
    
    for(int i = nums.length -1; i >= 0; i--) {
        if(nums[i] == val) {
            nums.removeAt(i);
        }
    }
    
    return nums.length;
  }
}
