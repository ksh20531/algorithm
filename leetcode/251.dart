class Solution {
  int findKthLargest(List<int> nums, int k) {
    if(nums.length == 1) return nums[0];

    nums.sort((a, b) => b.compareTo(a));

    return nums[k-1];
  }
}
