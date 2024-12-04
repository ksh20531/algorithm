class Solution {
  List<String> summaryRanges(List<int> nums) {
    List<String> result = [];
    if(nums.isEmpty) return result;

    int start = nums[0];
    int end = nums[0];

    for(int i = 0; i < nums.length - 1; i++) {
        if(nums[i] + 1 == nums[i+1]) {
            end = nums[i+1];
        } else {
            end = nums[i];
            start = nums[i+1];
        }

        print('$i -> start:$start / end:$end');

        if(nums[i] == end){
            result.add('$end');
        } else {
            result.add('$start->$end');
        }
    }
  
    return result;
  }
}
