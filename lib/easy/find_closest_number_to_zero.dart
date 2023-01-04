class Solution {
  int findClosestNumber(List<int> nums) {
    var min = 1000000;
    var result = 0;
    for (final num in nums) {
      final abs = num.abs();
      if (min > abs) {
        min = abs;
        result = num;
      } else if (min == abs && result < num) {
        result = num;
      }
    }
    return result;
  }
}
