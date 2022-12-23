import 'package:leetcode_dart/hard/longest_valid_parentheses.dart';
import 'package:test/test.dart';

void main() {
  group(
    'Example tests',
    () {
      final lvp = Solution();
      test(
        '2',
        () => expect(2, lvp.longestValidParentheses('(()')),
      );
      test(
        '4',
        () => expect(4, lvp.longestValidParentheses(')()())')),
      );
      test(
        '0',
        () => expect(0, lvp.longestValidParentheses('')),
      );
    },
  );
}
