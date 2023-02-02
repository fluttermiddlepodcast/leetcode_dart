import 'package:leetcode_dart/easy/count_the_digits_that_divide_a_number.dart';
import 'package:test/test.dart';

void main() {
  group(
    'Example tests',
    () {
      final ctdtdan = Solution();
      test('1', () => expect(1, ctdtdan.countDigits(7)));
      test('2', () => expect(2, ctdtdan.countDigits(121)));
      test('4', () => expect(4, ctdtdan.countDigits(1248)));
    },
  );
}
