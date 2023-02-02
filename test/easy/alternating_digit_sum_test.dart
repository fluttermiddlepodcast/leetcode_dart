import 'package:leetcode_dart/easy/alternating_digit_sum.dart';
import 'package:test/test.dart';

void main() {
  group(
    'Example tests',
    () {
      final ads = Solution();
      test('4', () => expect(4, ads.alternateDigitSum(521)));
      test('1', () => expect(1, ads.alternateDigitSum(111)));
      test('0', () => expect(0, ads.alternateDigitSum(886996)));
    },
  );
}
