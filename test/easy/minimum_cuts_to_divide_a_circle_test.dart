import 'package:leetcode_dart/easy/minimum_cuts_to_divide_a_circle.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

void main() {
  group(
    'Example tests',
    () {
      final mctdac = Solution();
      test('2', () => expect(true, mctdac.numberOfCuts(4)));
      test('3', () => expect(true, mctdac.numberOfCuts(3)));
    },
  );
}
