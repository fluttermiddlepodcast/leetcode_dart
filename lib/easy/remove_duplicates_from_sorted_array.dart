class Solution {
  int removeDuplicates(List<int> nums) {
    if (nums.isEmpty) {
      return 0;
    }
    int newLength = 0;
    for (int i = 1; i < nums.length; i++) {
      int num = nums[i];
      if (num != nums[newLength]) {
        newLength++;
        nums[newLength] = num;
      }
    }
    return newLength + 1;
  }
}
