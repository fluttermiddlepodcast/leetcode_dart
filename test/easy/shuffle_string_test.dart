import 'package:leetcode_dart/easy/shuffle_string.dart';
import 'package:test/test.dart';

void main() {
  group(
    'Example tests',
    () {
      final ss = Solution();
      test(
        'leetcode',
        () => expect(
          'leetcode',
          ss.restoreString(
            'codeleet',
            [4, 5, 6, 7, 0, 2, 1, 3],
          ),
        ),
      );
      test(
        'abc',
        () => expect(
          'abc',
          ss.restoreString(
            'abc',
            [0, 1, 2],
          ),
        ),
      );
    },
  );
}
