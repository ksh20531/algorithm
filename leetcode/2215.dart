class Solution {
  List<List<int>> findDifference(List<int> nums1, List<int> nums2) {
    Set<int> n1 = nums1.toSet();
    Set<int> n2 = nums2.toSet();

    List<int> r1 = n1.difference(n2).toList();
    List<int> r2 = n2.difference(n1).toList();

    // 메소드 체이닝 방식이 실행 시간이 좀 느림
    // List<int> r1 = nums1.toSet().difference(nums2.toSet()).toList();
    // List<int> r2 = nums2.toSet().difference(nums1.toSet()).toList();


    return [r1, r2];
  }
}
