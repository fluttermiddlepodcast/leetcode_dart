import 'package:leetcode_dart/easy/a_number_after_a_double_reversal.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

void main() {
  group(
    'Example tests',
    () {
      final anaadr = Solution();
      test('true', () => expect(true, anaadr.isSameAfterReversals(526)));
      test('false', () => expect(false, anaadr.isSameAfterReversals(1800)));
      test('true', () => expect(true, anaadr.isSameAfterReversals(0)));
    },
  );
}
