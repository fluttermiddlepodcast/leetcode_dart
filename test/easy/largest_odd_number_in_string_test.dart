import 'package:leetcode_dart/easy/largest_odd_number_in_string.dart';
import 'package:test/test.dart';

void main() {
  group(
    'Example tests',
    () {
      final lonis = Solution();
      test('5', () => expect('5', lonis.largestOddNumber('52')));
      test('', () => expect('', lonis.largestOddNumber('4206')));
      test('35427', () => expect('35427', lonis.largestOddNumber('35427')));
    },
  );
}
