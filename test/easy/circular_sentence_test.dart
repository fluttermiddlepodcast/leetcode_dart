import 'package:leetcode_dart/easy/circular_sentence.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

void main() {
  group(
    'Example tests',
    () {
      final cs = Solution();
      test(
        'true',
        () => expect(
            true, cs.isCircularSentence('leetcode exercises sound delightful')),
      );
      test(
        'true',
        () => expect(true, cs.isCircularSentence('eetcode')),
      );
      test(
        'false',
        () => expect(false, cs.isCircularSentence('Leetcode is cool')),
      );
    },
  );
}
