class Solution {
  ListNode? mergeKLists(List<ListNode?> lists) {
    if (lists.isEmpty) {
      return null;
    }
    final newHead = ListNode();
    newHead.next = lists[0];
    for (var i = 1; i < lists.length; i++) {
      var a = newHead.next;
      var b = lists[i];
      var prev = newHead;
      while (a != null && b != null) {
        if (a.val >= b.val) {
          prev.next = ListNode(b.val);
          prev.next!.next = a;
          b = b.next;
          a = prev.next;
          continue;
        }
        prev = a;
        a = a.next;
      }
      if (b != null) {
        prev.next = b;
      }
    }
    return newHead.next;
  }
}

class ListNode {
  int val;
  ListNode? next;

  ListNode([this.val = 0, this.next]);
}
