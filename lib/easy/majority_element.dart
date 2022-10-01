class Solution {
  int majorityElement(List<int> nums) {
    nums.sort();
    return nums[nums.length ~/ 2];
  }
}
