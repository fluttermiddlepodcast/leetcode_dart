import 'package:leetcode_dart/easy/minimum_cuts_to_divide_a_circle.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

void main() {
  group(
    'Example tests',
    () {
      final mctdac = Solution();
      test('2', () => expect(2, mctdac.numberOfCuts(4)));
      test('3', () => expect(3, mctdac.numberOfCuts(3)));
    },
  );
}
