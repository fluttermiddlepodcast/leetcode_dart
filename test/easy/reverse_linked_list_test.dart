import 'package:leetcode_dart/easy/reverse_linked_list.dart';
import 'package:test/test.dart';

void main() {
  group(
    'Example tests',
    () {
      final rll = Solution();
      test(
        '[5, 4, 3, 2, 1]',
        () => expect(
          true,
          _areEqual(
            _fromList([5, 4, 3, 2, 1]),
            rll.reverseList(
              _fromList(
                [1, 2, 3, 4, 5],
              ),
            ),
          ),
        ),
      );
      test(
        '[2, 1]',
        () => expect(
          true,
          _areEqual(
            _fromList([2, 1]),
            rll.reverseList(
              _fromList([1, 2]),
            ),
          ),
        ),
      );
      test(
        '',
        () => expect(
          true,
          _areEqual(
            null,
            rll.reverseList(null),
          ),
        ),
      );
    },
  );
}

ListNode _fromList(List<int> list) {
  final head = ListNode(list.first);
  var p = head;
  for (int i = 1; i < list.length; i++) {
    p.next = ListNode(list[i]);
    p = p.next!;
  }
  return head;
}

bool _areEqual(ListNode? f, ListNode? s) {
  while (f != null && s != null) {
    if (f.val != s.val) {
      return false;
    }
    f = f.next;
    s = s.next;
  }
  return f == null && s == null;
}
