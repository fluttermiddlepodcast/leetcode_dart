import 'package:leetcode_dart/easy/find_closest_number_to_zero.dart';
import 'package:test/test.dart';

void main() {
  group(
    'Example tests',
        () {
      final fcntz = Solution();
      test('1', () => expect(3, fcntz.findClosestNumber([-4,-2,1,4,8])));
      test('1', () => expect(2, fcntz.findClosestNumber([2,-1,1])));
    },
  );
}
