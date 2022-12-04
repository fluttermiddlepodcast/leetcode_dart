import 'dart:math';

class Solution {
  bool isPowerOfFour(int n) {
    var num = n ~/ 4;
    var p = 0;
    while (num != 0) {
      num = num ~/ 4;
      p++;
    }
    return pow(4, p) == n;
  }
}
