class Solution {
  bool containsDuplicate(List<int> nums) {
    final uniq = <int>{};
    for (final num in nums) {
      if (uniq.contains(num)) {
        return true;
      }
      uniq.add(num);
    }
    return false;
  }
}
