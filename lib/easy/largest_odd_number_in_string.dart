class Solution {
  String largestOddNumber(String num) {
    for (int i = num.length - 1; i >= 0; i--) {
      var candidate = int.parse(num[i]);
      if (candidate % 2 != 0) {
        return num.substring(0, i + 1);
      }
    }
    return '';
  }
}
