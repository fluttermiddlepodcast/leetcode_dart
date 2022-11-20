import 'package:leetcode_dart/medium/odd_even_linked_list.dart';
import 'package:test/test.dart';

void main() {
  group(
    'Example tests',
    () {
      final oell = Solution();
      test(
        '1, 3, 5, 2, 4',
        () => expect(
          true,
          _compare(
            _fromList([1, 3, 5, 2, 4]),
            oell.oddEvenList(_fromList([1, 2, 3, 4, 5])),
          ),
        ),
      );
      test(
        '2, 3, 6, 7, 1, 5, 4',
        () => expect(
          true,
          _compare(
            _fromList([2, 3, 6, 7, 1, 5, 4]),
            oell.oddEvenList(_fromList([2, 1, 3, 5, 6, 4, 7])),
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

bool _compare(ListNode? f, ListNode? s) {
  while (f != null && s != null) {
    if (f.val != s.val) {
      return false;
    }
    f = f.next;
    s = s.next;
  }
  return f == null && s == null;
}
