import 'package:leetcode_dart/medium/find_all_lonely_numbers_in_the_array.dart';
import 'package:test/test.dart';

void main() {
  group(
    'Example tests',
    () {
      test(
        'First',
        () => expect(
          [10, 8],
          Solution().findLonely(
            [10, 6, 5, 8],
          ),
        ),
      );
      test(
        'Second',
        () => expect(
          [1, 5],
          Solution().findLonely(
            [1, 3, 5, 3],
          ),
        ),
      );
    },
  );
}
