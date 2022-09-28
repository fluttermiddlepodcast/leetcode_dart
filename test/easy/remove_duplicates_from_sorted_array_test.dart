import 'package:leetcode_dart/easy/remove_duplicates_from_sorted_array.dart';
import 'package:test/test.dart';

void main() {
  group(
    'Example tests',
    () {
      final rdfsa = Solution();
      test(
        '1',
        () {
          final input = [1, 1, 2];
          expect(2, rdfsa.removeDuplicates(input));

          final correct = const [1, 2];
          for (int i = 0; i < correct.length; i++) {
            expect(input[i], correct[i]);
          }
        },
      );
      test(
        '5',
        () {
          final input = [0, 0, 1, 1, 1, 2, 2, 3, 3, 4];
          expect(5, rdfsa.removeDuplicates(input));

          final correct = const [0, 1, 2, 3, 4];
          for (int i = 0; i < correct.length; i++) {
            expect(input[i], correct[i]);
          }
        },
      );
    },
  );
}
