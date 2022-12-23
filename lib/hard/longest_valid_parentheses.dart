import 'dart:math';

class Solution {
  int longestValidParentheses(String s) {
    final stack = <int>[];
    stack.add(-1);
    var result = 0;
    for (var i = 0; i < s.length; i++) {
      if (s[i] == '(') {
        stack.add(i);
      } else {
        stack.removeLast();
        if (stack.isEmpty) {
          stack.add(i);
        } else {
          result = max(result, i - stack.last);
        }
      }
    }
    return result;
  }
}
