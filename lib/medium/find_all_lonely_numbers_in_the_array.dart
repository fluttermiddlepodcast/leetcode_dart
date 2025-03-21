class Solution {
  List<int> findLonely(List<int> nums) {
    var numsWithCount = {};
    for (var num in nums) {
      numsWithCount[num] = (numsWithCount[num] ?? 0) + 1;
    }

    var result = <int>[];
    for (var num in nums) {
      if (numsWithCount[num] == 1 && !numsWithCount.containsKey(num - 1) && !numsWithCount.containsKey(num + 1)) {
        result.add(num);
      }
    }

    return result;
  }
}
