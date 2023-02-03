import 'package:leetcode_dart/easy/is_subsequence.dart';
import 'package:test/test.dart';

void main() {
  group(
    'Example tests',
    () {
      final isSub = Solution();
      test('true', () => isSub.isSubsequence('abc', 'ahbgdc'));
      test('false', () => isSub.isSubsequence('axc', 'ahbgdc'));
    },
  );
}
