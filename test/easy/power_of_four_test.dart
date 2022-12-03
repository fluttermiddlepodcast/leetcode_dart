import 'package:leetcode_dart/easy/power_of_four.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

void main() {
  group(
    'Example tests',
    () {
      final pof = Solution();
      test('true', () => expect(true, pof.isPowerOfFour(16)));
      test('false', () => expect(false, pof.isPowerOfFour(5)));
      test('true', () => expect(true, pof.isPowerOfFour(1)));
    },
  );
}
