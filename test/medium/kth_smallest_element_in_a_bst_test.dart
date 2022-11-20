import 'package:leetcode_dart/medium/kth_smallest_element_in_a_bst.dart';
import 'package:test/test.dart';

void main() {
  group(
    'Example tests',
    () {
      final kseiab = Solution();
      test(
        '1',
        () => expect(
          1,
          kseiab.kthSmallest(
            TreeNode(
              3,
              TreeNode(1, null, TreeNode(2)),
              TreeNode(4, null, null),
            ),
            1,
          ),
        ),
      );
      test(
        '3',
        () => expect(
          3,
          kseiab.kthSmallest(
            TreeNode(
              5,
              TreeNode(
                3,
                TreeNode(2, TreeNode(1), null),
                TreeNode(4),
              ),
              TreeNode(6),
            ),
            3,
          ),
        ),
      );
    },
  );
}
