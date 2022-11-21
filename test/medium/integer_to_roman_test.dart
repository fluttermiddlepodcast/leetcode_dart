import 'package:leetcode_dart/medium/integer_to_roman.dart';
import 'package:test/test.dart';

void main() {
  group(
    'Example tests',
    () {
      test('III', () => expect('III', Solution().intToRoman(3)));
      test('LVIII', () => expect('LVIII', Solution().intToRoman(58)));
      test('MCMXCIV', () => expect('MCMXCIV', Solution().intToRoman(1994)));
    },
  );
}
