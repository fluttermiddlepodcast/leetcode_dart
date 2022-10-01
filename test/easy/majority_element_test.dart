import 'package:leetcode_dart/easy/majority_element.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

void main() {
  group(
    'Example tests',
    () {
      final me = Solution();
      test('3', () => expect(3, me.majorityElement([3, 2, 3])));
      test('2', () => expect(2, me.majorityElement([2, 2, 1, 1, 1, 2, 2])));
    },
  );
}
