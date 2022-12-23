import 'package:leetcode_dart/easy/single_number.dart';
import 'package:test/test.dart';

void main() {
  group(
    'Example tests',
    () {
      final sn = Solution();
      test('1', () => expect(1, sn.singleNumber([2, 2, 1])));
      test('4', () => expect(4, sn.singleNumber([4, 1, 2, 1, 2])));
      test('1', () => expect(1, sn.singleNumber([1])));
    },
  );
}
