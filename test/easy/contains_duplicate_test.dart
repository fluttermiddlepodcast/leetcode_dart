import 'package:leetcode_dart/easy/contains_duplicate.dart';
import 'package:test/test.dart';

void main() {
  group(
    'Example tests',
    () {
      final cd = Solution();
      test('true', () => expect(true, cd.containsDuplicate([1, 2, 3, 1])));
      test('false', () => expect(false, cd.containsDuplicate([1, 2, 3, 4])));
      test(
        'true',
        () => expect(
          true,
          cd.containsDuplicate([1, 1, 1, 3, 3, 4, 3, 2, 4, 2]),
        ),
      );
    },
  );
}
