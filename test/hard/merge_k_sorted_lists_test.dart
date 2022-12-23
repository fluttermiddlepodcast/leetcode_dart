import 'package:leetcode_dart/hard/merge_k_sorted_lists.dart';
import 'package:test/test.dart';

void main() {
  group(
    'Example tests',
    () {
      final mksl = Solution();
      test(
        '[1, 1, 2, 3, 4, 4, 5, 6]',
        () => expect(
          true,
          _areEqual(
            ListNode(
              1,
              ListNode(
                1,
                ListNode(
                  2,
                  ListNode(
                    3,
                    ListNode(
                      4,
                      ListNode(
                        4,
                        ListNode(
                          5,
                          ListNode(6),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            mksl.mergeKLists(
              [
                ListNode(
                  1,
                  ListNode(
                    4,
                    ListNode(5),
                  ),
                ),
                ListNode(
                  1,
                  ListNode(
                    3,
                    ListNode(4),
                  ),
                ),
                ListNode(
                  2,
                  ListNode(6),
                ),
              ],
            ),
          ),
        ),
      );
      test(
        '[]',
        () => expect(
          false,
          _areEqual(ListNode(), mksl.mergeKLists([])),
        ),
      );
      test(
        '[]',
        () => expect(
          true,
          _areEqual(ListNode(), mksl.mergeKLists([ListNode()])),
        ),
      );
    },
  );
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
