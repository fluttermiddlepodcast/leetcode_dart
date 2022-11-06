import 'package:leetcode_dart/medium/count_complete_tree_nodes.dart';
import 'package:test/test.dart';

void main() {
  group(
    'Example tests',
    () {
      final cctn = Solution();
      test(
        '6',
        () => expect(
          6,
          cctn.countNodes(
            TreeNode(
              1,
              TreeNode(2, TreeNode(4), TreeNode(5)),
              TreeNode(
                3,
                TreeNode(6),
                null,
              ),
            ),
          ),
        ),
      );
      test('0', () => expect(0, cctn.countNodes(null)));
      test('1', () => expect(1, cctn.countNodes(TreeNode(1))));
    },
  );
}
