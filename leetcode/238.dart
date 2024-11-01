class Solution {
  List<int> productExceptSelf(List<int> nums) {

    List<int> result = [];
    for(int i = 0; i < nums.length; i++){
        int mul = 1;
        for(int j = 0; j < nums.length; j++) {
            if(j != i) {
                mul *= nums[j];
            }
        }
        result.add(mul);
    }
    return result;
  }
}
