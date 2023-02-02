class Solution {
  int countDigits(int num) {
    var original = num;
    var result = 0;
    while (num != 0) {
      var digit = num % 10;
      if (original % digit == 0) {
        result++;
      }
      num = num ~/ 10;
    }
    return result;
  }
}
