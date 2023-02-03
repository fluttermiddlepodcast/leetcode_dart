class Solution {
  ListNode? removeElements(ListNode? head, int val) {
    while (head != null && head.val == val) {
      head = head.next;
    }
    var curr = head;
    while (curr != null && curr.next != null) {
      if (curr.next!.val == val) {
        curr.next = curr.next!.next;
      } else {
        curr = curr.next;
      }
    }
    return head;
  }
}

class ListNode {
  int val;
  ListNode? next;

  ListNode([this.val = 0, this.next]);
}
