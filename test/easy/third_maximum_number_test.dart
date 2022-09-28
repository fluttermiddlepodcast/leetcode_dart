import 'package:leetcode_dart/easy/third_maximum_number.dart';
import 'package:test/test.dart';

void main() {
  group(
    'Example tests',
    () {
      final tmn = Solution();
      test('1', () => expect(1, tmn.thirdMax([3, 2, 1])));
      test('2', () => expect(2, tmn.thirdMax([1, 2])));
      test('1', () => expect(1, tmn.thirdMax([2, 2, 3, 1])));
    },
  );
}
