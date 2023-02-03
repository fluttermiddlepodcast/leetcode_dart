import 'package:leetcode_dart/easy/remove_element.dart';
import 'package:test/test.dart';

void main() {
  group(
    'Example tests',
    () {
      final re = Solution();
      test('2', () => expect(2, re.removeElement([3, 2, 2, 3], 3)));
      test('5', () => expect(5, re.removeElement([0, 1, 2, 2, 3, 0, 4, 2], 2)));
    },
  );
}
