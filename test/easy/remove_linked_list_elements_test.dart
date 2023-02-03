import 'package:leetcode_dart/easy/remove_linked_list_elements.dart';
import 'package:test/test.dart';

void main() {
  group(
    'Example tests',
    () {
      final rlle = Solution();
      test(
        '[1, 2, 3, 4, 5]',
        () => expect(
          true,
          _areEqual(
            _fromList([1, 2, 3, 4, 5]),
            rlle.removeElements(
              _fromList([1, 2, 6, 3, 4, 5, 6]),
              6,
            ),
          ),
        ),
      );
      test(
        '[]',
        () => expect(
          true,
          _areEqual(
            null,
            rlle.removeElements(
              null,
              1,
            ),
          ),
        ),
      );
      test(
        '[]',
        () => expect(
          true,
          _areEqual(
            null,
            rlle.removeElements(
              _fromList([7, 7, 7, 7]),
              7,
            ),
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
