import 'package:leetcode_dart/easy/palindrome_number.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

void main() {
  group(
    'Example tests',
    () {
      final pn = Solution();
      test('true', () => expect(true, pn.isPalindrome(121)));
      test('false', () => expect(false, pn.isPalindrome(-121)));
      test('false', () => expect(false, pn.isPalindrome(10)));
    },
  );
}
