import 'package:leetcode_dart/easy/rotate_string.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

void main() {
  group(
    'Example tests',
    () {
      final rs = Solution();
      test('true', () => expect(true, rs.rotateString('abcde', 'cdeab')));
      test('false', () => expect(false, rs.rotateString('abcde', 'abced')));
    },
  );
}
