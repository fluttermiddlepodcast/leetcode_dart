class Solution {
  int alternateDigitSum(int n) {
    int result = 0;
    int factor = 1;
    final str = n.toString();
    for (int i = 0; i < str.length; i++) {
      result += int.parse(str[i]) * factor;
      factor *= -1;
    }
    return result;
  }
}
