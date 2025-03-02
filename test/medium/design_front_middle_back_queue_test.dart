import 'package:leetcode_dart/medium/design_front_middle_back_queue.dart';
import 'package:test/test.dart';

void main() {
  group(
    'Example tests',
    () {
      test(
        'Example test',
        () {
          FrontMiddleBackQueue q = FrontMiddleBackQueue();
          q.pushFront(1);
          q.pushBack(2);
          q.pushMiddle(3);
          q.pushMiddle(4);

          expect(1, q.popFront());
          expect(3, q.popMiddle());
          expect(4, q.popMiddle());
          expect(2, q.popBack());
          expect(-1, q.popFront());
        },
      );
    },
  );
}
