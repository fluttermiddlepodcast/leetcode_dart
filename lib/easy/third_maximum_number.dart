class Solution {
  int thirdMax(List<int> nums) {
    nums.sort();
    int n = nums.length;
    int last = nums.last;
    if (n < 3) {
      return last;
    }
    int target = last;
    int counter = 2;
    for (int i = n - 2; i >= 0; i--) {
      int num = nums[i];
      if (target != num) {
        counter--;
        target = num;
      }
      if (counter == 0) {
        return target;
      }
    }
    return last;
  }
}
