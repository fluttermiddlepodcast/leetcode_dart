import 'package:leetcode_dart/easy/delete_columns_to_make_sorted.dart';
import 'package:test/test.dart';

void main() {
  group(
    'Example tests',
    () {
      final dctms = Solution();
      test('1', () => expect(1, dctms.minDeletionSize(["cba", "daf", "ghi"])));
      test('0', () => expect(0, dctms.minDeletionSize(["a", "b"])));
      test('3', () => expect(3, dctms.minDeletionSize(["zyx", "wvu", "tsr"])));
    },
  );
}
